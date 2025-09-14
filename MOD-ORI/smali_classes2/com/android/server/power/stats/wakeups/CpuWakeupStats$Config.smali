.class public final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field public static final DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

.field public static final DEFAULT_WAKEUP_STATS_RETENTION_MS:J

.field public static final DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

.field public static final PROPERTY_NAMES:[Ljava/lang/String;


# instance fields
.field public volatile WAKEUP_MATCHING_WINDOW_MS:J

.field public volatile WAKEUP_STATS_RETENTION_MS:J

.field public volatile WAKING_ACTIVITY_RETENTION_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "wakeup_matching_window_ms"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "waking_activity_retention_ms"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "wakeup_stats_retention_ms"

    .line 8
    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->PROPERTY_NAMES:[Ljava/lang/String;

    .line 15
    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    const-wide/16 v1, 0x3

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_STATS_RETENTION_MS:J

    .line 25
    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    const-wide/16 v1, 0x1

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

    .line 35
    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    const-wide/16 v1, 0x5

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "Config:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "wakeup_stats_retention_ms"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "="

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    .line 21
    .line 22
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "wakeup_matching_window_ms"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 38
    .line 39
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "waking_activity_retention_ms"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    .line 55
    .line 56
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "waking_activity_retention_ms"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "wakeup_stats_retention_ms"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "wakeup_matching_window_ms"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_4

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/String;

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v5, -0x1

    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    sparse-switch v6, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :sswitch_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v5, 0x2

    .line 50
    goto :goto_1

    .line 51
    :sswitch_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v5, 0x1

    .line 59
    goto :goto_1

    .line 60
    :sswitch_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 v5, 0x0

    .line 68
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_0
    sget-wide v4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

    .line 73
    .line 74
    invoke-virtual {p1, v0, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    iput-wide v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_1
    sget-wide v4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_STATS_RETENTION_MS:J

    .line 82
    .line 83
    invoke-virtual {p1, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    iput-wide v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_2
    sget-wide v4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

    .line 91
    .line 92
    invoke-virtual {p1, v2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    iput-wide v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    return-void

    .line 100
    nop

    .line 101
    :sswitch_data_0
    .sparse-switch
        0xe683f93 -> :sswitch_2
        0x231a1707 -> :sswitch_1
        0x3e8a6539 -> :sswitch_0
    .end sparse-switch

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
