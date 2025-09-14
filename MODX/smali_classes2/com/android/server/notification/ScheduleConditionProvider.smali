.class public final Lcom/android/server/notification/ScheduleConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTION_EVALUATE:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field public static final SIMPLE_NAME:Ljava/lang/String;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mConnected:Z

.field public final mContext:Lcom/android/server/notification/ScheduleConditionProvider;

.field public mNextAlarmTime:J

.field public final mReceiver:Lcom/android/server/notification/ScheduleConditionProvider$1;

.field public mRegistered:Z

.field public mScheduleEnabled:Z

.field public final mSnoozedForAlarm:Landroid/util/ArraySet;

.field public final mSubscriptions:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/notification/ScheduleConditionProvider;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 15
    .line 16
    const-class v0, Lcom/android/server/notification/ScheduleConditionProvider;

    .line 17
    .line 18
    const-string v0, "ScheduleConditionProvider"

    .line 19
    .line 20
    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, ".EVALUATE"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 5
    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 12
    .line 13
    new-instance v0, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mScheduleEnabled:Z

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/notification/ScheduleConditionProvider$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/server/notification/ScheduleConditionProvider$1;-><init>(Lcom/android/server/notification/ScheduleConditionProvider;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Lcom/android/server/notification/ScheduleConditionProvider$1;

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v0, "new "

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "()"

    .line 41
    .line 42
    const-string v2, "ConditionProviders.SCP"

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static createCondition(Ljava/lang/String;Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyCondition "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " reason="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "ConditionProviders.SCP"

    .line 37
    .line 38
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    new-instance p0, Landroid/service/notification/Condition;

    .line 42
    .line 43
    const-string v4, "..."

    .line 44
    .line 45
    const-string v5, "..."

    .line 46
    .line 47
    const-string v3, "..."

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v8, 0x2

    .line 51
    move-object v1, p0

    .line 52
    move-object v2, p1

    .line 53
    move v7, p2

    .line 54
    invoke-direct/range {v1 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method


# virtual methods
.method public addSnoozed(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    const-string p1, ";"

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v2, "snoozed_schedule_condition_provider"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Landroid/service/notification/IConditionProvider;

    .line 7
    .line 8
    return-object p0
.end method

.method public final attachBase(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ":"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "      mConnected="

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "      mRegistered="

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 34
    .line 35
    .line 36
    const-string v0, "      mSubscriptions="

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 46
    .line 47
    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Landroid/net/Uri;

    .line 69
    .line 70
    const-string v5, "        "

    .line 71
    .line 72
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v5, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Landroid/service/notification/ScheduleCalendar;

    .line 82
    .line 83
    if-eqz v5, :cond_0

    .line 84
    .line 85
    invoke-virtual {v5, v0, v1}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_0

    .line 90
    .line 91
    const-string v5, "* "

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_2

    .line 96
    :cond_0
    const-string v5, "  "

    .line 97
    .line 98
    :goto_1
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const-string v5, "            "

    .line 105
    .line 106
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v5, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Landroid/service/notification/ScheduleCalendar;

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/service/notification/ScheduleCalendar;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v3, "      snoozed due to alarm: "

    .line 129
    .line 130
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v3, ";"

    .line 134
    .line 135
    iget-object v4, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 136
    .line 137
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-wide v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    .line 152
    .line 153
    invoke-static {p1, v2, v3, v0, v1}, Lcom/android/server/notification/SystemConditionProviderService;->dumpUpcomingTime(Ljava/io/PrintWriter;JJ)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    throw p0
.end method

.method public evaluateSubscriptionLocked(Landroid/net/Uri;Landroid/service/notification/ScheduleCalendar;JJ)Landroid/service/notification/Condition;
    .locals 4

    .line 1
    const-string v0, "ConditionProviders.SCP"

    .line 2
    .line 3
    const-string v1, "evaluateSubscriptionLocked cal=%s, now=%s, nextUserAlarmTime=%s"

    .line 4
    .line 5
    invoke-static {p3, p4}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {p5, p6}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    filled-new-array {p2, v2, v3}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    const-string p3, "!invalidId"

    .line 28
    .line 29
    invoke-static {p3, p1, p2}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Ljava/lang/String;Landroid/net/Uri;I)Landroid/service/notification/Condition;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :cond_0
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    const-string/jumbo v0, "snoozed"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p1, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Ljava/lang/String;Landroid/net/Uri;I)Landroid/service/notification/Condition;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    const-string v0, "alarmCanceled"

    .line 71
    .line 72
    invoke-static {v0, p1, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Ljava/lang/String;Landroid/net/Uri;I)Landroid/service/notification/Condition;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->addSnoozed(Landroid/net/Uri;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    move-object p1, v0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x1

    .line 82
    const-string/jumbo v1, "meetsSchedule"

    .line 83
    .line 84
    .line 85
    invoke-static {v1, p1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Ljava/lang/String;Landroid/net/Uri;I)Landroid/service/notification/Condition;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0

    .line 93
    :cond_3
    const-string v0, "!meetsSchedule"

    .line 94
    .line 95
    invoke-static {v0, p1, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Ljava/lang/String;Landroid/net/Uri;I)Landroid/service/notification/Condition;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_1
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    .line 107
    .line 108
    .line 109
    move-result-wide p5

    .line 110
    const-wide/16 v0, 0x0

    .line 111
    .line 112
    cmp-long p2, p5, v0

    .line 113
    .line 114
    if-lez p2, :cond_5

    .line 115
    .line 116
    cmp-long p2, p5, p3

    .line 117
    .line 118
    if-lez p2, :cond_5

    .line 119
    .line 120
    iget-wide p2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    .line 121
    .line 122
    cmp-long p4, p2, v0

    .line 123
    .line 124
    if-eqz p4, :cond_4

    .line 125
    .line 126
    cmp-long p2, p5, p2

    .line 127
    .line 128
    if-gez p2, :cond_5

    .line 129
    .line 130
    :cond_4
    iput-wide p5, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    .line 131
    .line 132
    :cond_5
    return-object p1
.end method

.method public final evaluateSubscriptions$1()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 6
    .line 7
    const-string v1, "alarm"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/AlarmManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v8

    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 26
    .line 27
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    :cond_1
    move-wide v10, v0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v12, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 48
    .line 49
    monitor-enter v12

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    xor-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->setRegistered$1(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v2, v1

    .line 82
    check-cast v2, Landroid/net/Uri;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    move-object v3, v1

    .line 91
    check-cast v3, Landroid/service/notification/ScheduleCalendar;

    .line 92
    .line 93
    move-object v1, p0

    .line 94
    move-wide v4, v8

    .line 95
    move-wide v6, v10

    .line 96
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptionLocked(Landroid/net/Uri;Landroid/service/notification/ScheduleCalendar;JJ)Landroid/service/notification/Condition;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    new-array v1, v1, [Landroid/service/notification/Condition;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, [Landroid/service/notification/Condition;

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->notifyConditions([Landroid/service/notification/Condition;)V

    .line 122
    .line 123
    .line 124
    iget-wide v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    .line 125
    .line 126
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 127
    .line 128
    const-string v3, "alarm"

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Landroid/app/AlarmManager;

    .line 135
    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->getPendingIntent(J)Landroid/app/PendingIntent;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 141
    .line 142
    .line 143
    iget-boolean p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mScheduleEnabled:Z

    .line 144
    .line 145
    if-eqz p0, :cond_5

    .line 146
    .line 147
    cmp-long p0, v0, v8

    .line 148
    .line 149
    const-string v4, "ConditionProviders.SCP"

    .line 150
    .line 151
    if-lez p0, :cond_4

    .line 152
    .line 153
    invoke-static {v0, v1}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    sub-long v5, v0, v8

    .line 158
    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-static {v5, v6, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-static {v8, v9}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    const-string v7, "Scheduling evaluate for "

    .line 176
    .line 177
    const-string v8, ", in "

    .line 178
    .line 179
    const-string v9, ", now="

    .line 180
    .line 181
    invoke-static {v7, p0, v8, v5, v9}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {p0, v6, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const/4 p0, 0x0

    .line 189
    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    const-string p0, "Not scheduling evaluate"

    .line 194
    .line 195
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :cond_5
    :goto_1
    return-void

    .line 199
    :goto_2
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    throw p0
.end method

.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPendingIntent(J)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "android"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/high16 v1, 0x10000000

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v1, "time"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/high16 p2, 0xc000000

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-static {p0, v0, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final isScheduleEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mScheduleEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isValidConditionId(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onBootComplete()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onConnected()V
    .locals 7

    .line 1
    const-string v0, "ConditionProviders.SCP"

    .line 2
    .line 3
    const-string/jumbo v1, "onConnected"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string/jumbo v4, "snoozed_schedule_condition_provider"

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    const-string v4, ";"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    array-length v5, v3

    .line 46
    if-ge v4, v5, :cond_2

    .line 47
    .line 48
    aget-object v5, v3, v4

    .line 49
    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_3

    .line 59
    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    iget-object v6, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 67
    .line 68
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    goto :goto_4

    .line 85
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    throw p0
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/ConditionProviderService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ConditionProviders.SCP"

    .line 5
    .line 6
    const-string/jumbo v1, "onDestroy"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    .line 14
    .line 15
    return-void
.end method

.method public final onScheduleEnabled(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onScheduleEnabled : "

    .line 2
    .line 3
    .line 4
    const-string v1, "ConditionProviders.SCP"

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mScheduleEnabled:Z

    .line 10
    .line 11
    return-void
.end method

.method public final onSubscribe(Landroid/net/Uri;)V
    .locals 3

    .line 1
    const-string v0, "ConditionProviders.SCP"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onSubscribe "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    const-string v1, "invalidId"

    .line 29
    .line 30
    invoke-static {v1, p1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Ljava/lang/String;Landroid/net/Uri;I)Landroid/service/notification/Condition;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions$1()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public final onUnsubscribe(Landroid/net/Uri;)V
    .locals 3

    .line 1
    const-string v0, "ConditionProviders.SCP"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onUnsubscribe "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions$1()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final removeSnoozed(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    const-string p1, ";"

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v2, "snoozed_schedule_condition_provider"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final setRegistered$1(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "setRegistered "

    .line 7
    .line 8
    .line 9
    const-string v1, "ConditionProviders.SCP"

    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p1, "android.intent.action.TIME_SET"

    .line 19
    .line 20
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Lcom/android/server/notification/ScheduleConditionProvider$1;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-virtual {p0, v0, p1, v1}, Landroid/service/notification/ConditionProviderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Lcom/android/server/notification/ScheduleConditionProvider$1;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method
