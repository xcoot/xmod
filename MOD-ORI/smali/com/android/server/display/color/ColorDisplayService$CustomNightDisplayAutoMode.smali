.class public final Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;
.super Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mEndTime:Ljava/time/LocalTime;

.field public mLastActivatedTime:Ljava/time/LocalDateTime;

.field public mStartTime:Ljava/time/LocalTime;

.field public final mTimeChangedReceiver:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;

.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "alarm"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/app/AlarmManager;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;-><init>(Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mTimeChangedReceiver:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final onActivated(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayLastActivatedTimeSetting(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onAlarm()V
    .locals 2

    .line 1
    const-string v0, "ColorDisplayService"

    .line 2
    .line 3
    const-string/jumbo v1, "onAlarm"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.intent.action.TIME_SET"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mTimeChangedReceiver:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayLastActivatedTimeSetting(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mTimeChangedReceiver:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 19
    .line 20
    return-void
.end method

.method public final updateActivated()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/android/server/display/color/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 32
    .line 33
    invoke-virtual {v4, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 62
    .line 63
    iget-object v4, v4, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_2

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 72
    .line 73
    iget-object v4, v4, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eq v4, v3, :cond_4

    .line 80
    .line 81
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 82
    .line 83
    iget-object v4, v4, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    move-object v1, v2

    .line 93
    :goto_0
    invoke-virtual {v4, v5, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v1, 0x1

    .line 40
    const-string v4, "ColorDisplayService"

    .line 41
    .line 42
    move-object v5, p0

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
