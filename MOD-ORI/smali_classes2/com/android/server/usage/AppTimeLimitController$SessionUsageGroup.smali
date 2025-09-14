.class public final Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mNewSessionThresholdMs:J

.field public mSessionEndCallback:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 4
    .line 5
    .line 6
    iput-wide p9, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    .line 7
    .line 8
    iput-object p11, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->dump(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    const-string v0, " lastUsageEndTime="

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 12
    .line 13
    .line 14
    const-string v0, " newSessionThreshold="

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final noteUsageStart(JJ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    .line 6
    .line 7
    sub-long v0, p1, v0

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController;->getAlarmManager()Landroid/app/AlarmManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final noteUsageStop(J)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    .line 11
    .line 12
    cmp-long p1, p1, v0

    .line 13
    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController;->getAlarmManager()Landroid/app/AlarmManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    .line 29
    .line 30
    add-long v2, p1, v1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 33
    .line 34
    iget-object v6, p1, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    const-string v4, "AppTimeLimitController"

    .line 38
    .line 39
    move-object v5, p0

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final onAlarm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->onSessionEnd()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onSessionEnd()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/UsageStatsService$2;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .line 29
    .line 30
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "android.app.usage.extra.OBSERVER_ID"

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    .line 36
    .line 37
    invoke-virtual {v4, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p0, "android.app.usage.extra.TIME_USED"

    .line 41
    .line 42
    invoke-virtual {v4, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object p0, v0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {v3, p0, v0, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v0, "Couldn\'t deliver callback: "

    .line 59
    .line 60
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v0, "UsageStatsService"

    .line 71
    .line 72
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public final remove()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    .line 23
    .line 24
    return-void
.end method
