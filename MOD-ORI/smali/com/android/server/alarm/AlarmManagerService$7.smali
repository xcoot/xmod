.class public final Lcom/android/server/alarm/AlarmManagerService$7;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleUidCachedChanged(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mUseFrozenStateToDropListenerAlarms:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-wide/32 v0, 0xfce9184

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 26
    .line 27
    iget-wide v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    .line 28
    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/16 v0, 0xf

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 41
    .line 42
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 51
    .line 52
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 63
    .line 64
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0
.end method

.method public final removeAlarmsForUid(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-direct {v1, p1, v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;-><init>(IILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final unblockAlarmsForUid(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final unblockAllUnrestrictedAlarms()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v3, v4, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v1, v3}, Lcom/android/server/alarm/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(JLjava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final updateAlarmsForUid(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 29
    .line 30
    iget v6, v5, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 31
    .line 32
    if-eq v6, p1, :cond_0

    .line 33
    .line 34
    move v5, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    sget-object v6, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 39
    .line 40
    invoke-virtual {v6, v5}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    :goto_1
    or-int/2addr v4, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget-object p1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 49
    .line 50
    sget-object v1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 51
    .line 52
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    if-eqz v4, :cond_3

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :goto_2
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final updateAllAlarms()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 28
    .line 29
    sget-object v5, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 32
    .line 33
    invoke-virtual {v5, v4}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    or-int/2addr v3, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eqz v3, :cond_1

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 42
    .line 43
    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 44
    .line 45
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method
