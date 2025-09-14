.class public final Lcom/android/server/notification/ScheduleConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ScheduleConditionProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string p1, "ConditionProviders.SCP"

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "onReceive "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const-string p1, "android.intent.action.TIMEZONE_CHANGED"

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 42
    .line 43
    monitor-enter p1

    .line 44
    :try_start_0
    iget-object p2, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 45
    .line 46
    iget-object p2, p2, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/net/Uri;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/service/notification/ScheduleCalendar;

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    monitor-exit p1

    .line 95
    goto :goto_2

    .line 96
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0

    .line 98
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions$1()V

    .line 101
    .line 102
    .line 103
    return-void
.end method
