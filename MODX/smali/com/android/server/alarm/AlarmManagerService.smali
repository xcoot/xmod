.class public Lcom/android/server/alarm/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field public static pmInternalForMARs:Landroid/content/pm/PackageManagerInternal;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

.field public final mAdditionHistory:Landroid/util/SparseArray;

.field public final mAlarmClockUpdater:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

.field public final mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

.field public mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

.field public final mAlarmsPerUid:Landroid/util/SparseIntArray;

.field public mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public mAppOps:Landroid/app/AppOpsManager;

.field mAppStandbyParole:Z

.field public mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public final mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

.field public mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public final mBackgroundIntent:Landroid/content/Intent;

.field public mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public final mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

.field public mBroadcastRefCount:I

.field public final mBroadcastStats:Landroid/util/SparseArray;

.field public mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

.field public mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

.field public mDateChangeSender:Landroid/app/PendingIntent;

.field public final mDeliveryHistory:Landroid/util/SparseArray;

.field public final mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field volatile mExactAlarmCandidates:Ljava/util/Set;

.field public final mExpirationHistory:Lcom/android/internal/util/RingBuffer;

.field public final mForceAppStandbyListener:Lcom/android/server/alarm/AlarmManagerService$7;

.field public mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

.field public mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

.field public final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

.field public final mInFlight:Ljava/util/ArrayList;

.field public final mInFlightListeners:Ljava/util/ArrayList;

.field public final mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

.field public mInteractive:Z

.field public final mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

.field public mLastAlarmDeliveryTime:J

.field mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

.field public final mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

.field public mLastTickReceived:J

.field public mLastTickSet:J

.field public mLastTimeChangeClockTime:J

.field public mLastTimeChangeRealtime:J

.field public mLastTrigger:J

.field public mLastWakeup:J

.field public mListenerCount:I

.field public mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

.field public mListenerFinishCount:I

.field public mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public volatile mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/android/internal/util/LocalLog;

.field public mMaxDelayTime:J

.field public mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

.field public final mNextAlarmClockForUser:Landroid/util/SparseArray;

.field public mNextAlarmClockMayChange:Z

.field public mNextNonWakeUpSetAt:J

.field public mNextNonWakeup:J

.field public mNextNonWakeupDeliveryTime:J

.field public mNextTickHistory:I

.field public mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

.field public mNextWakeUpSetAt:J

.field public mNextWakeup:J

.field public mNonInteractiveStartTime:J

.field public mNonInteractiveTime:J

.field public mNumDelayedAlarms:I

.field public mNumTimeChanged:I

.field public final mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

.field public final mOptsWithFgs:Landroid/app/BroadcastOptions;

.field public final mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

.field public final mOptsWithoutFgs:Landroid/app/BroadcastOptions;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPendingBackgroundAlarms:Landroid/util/SparseArray;

.field public mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

.field public final mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

.field public final mPendingNonWakeupAlarms:Ljava/util/ArrayList;

.field public final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field public final mRemovalHistory:Landroid/util/SparseArray;

.field public final mRemoveFailedHistory:Landroid/util/SparseArray;

.field public final mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

.field public mSendCount:I

.field public mSendFinishCount:I

.field public final mService:Lcom/android/server/alarm/AlarmManagerService$4;

.field public mSetKernelNonWakeup:J

.field public mSetKernelWakeup:J

.field public mStartCurrentDelayTime:J

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mSystemUiUid:I

.field public mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

.field public final mTickHistory:[J

.field public mTimeTickIntent:Landroid/content/Intent;

.field public mTimeTickOptions:Landroid/os/Bundle;

.field public mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

.field public final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

.field public mTotalDelayTime:J

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUseFrozenStateToDropListenerAlarms:Z

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;


# direct methods
.method public static -$$Nest$mdeliverHistory(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v7

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    move-result-wide v5

    .line 14
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    .line 16
    iget v1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/internal/util/RingBuffer;

    .line 24
    if-nez v0, :cond_3

    .line 26
    const/16 v0, 0x3e8

    .line 28
    const-class v2, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;

    .line 30
    if-eq v1, v0, :cond_2

    .line 32
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 34
    const-string/jumbo v3, "com.sec.android.app.clockpackage"

    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 46
    if-ne v1, v0, :cond_1

    .line 48
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 50
    const/16 v3, 0x1e

    .line 52
    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 58
    const/16 v3, 0xa

    .line 60
    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 66
    const/16 v3, 0x32

    .line 68
    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 71
    :goto_1
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    :cond_3
    new-instance v9, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;

    .line 78
    move-object v1, v9

    .line 79
    move-object v2, p1

    .line 80
    move-wide v3, v7

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;-><init>(Lcom/android/server/alarm/Alarm;JJ)V

    .line 84
    invoke-virtual {v0, v9}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 87
    iget-boolean v0, p1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 89
    if-eqz v0, :cond_4

    .line 91
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 93
    if-nez v0, :cond_4

    .line 95
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;

    .line 97
    iget v5, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 99
    iget-object v6, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 101
    move-object v1, v0

    .line 102
    move-object v2, p0

    .line 103
    move-wide v3, v7

    .line 104
    invoke-direct/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;-><init>(Lcom/android/server/alarm/AlarmManagerService;JILjava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 112
    :cond_4
    return-void
.end method

.method public static -$$Nest$mfiltAlarmsForFreeCess(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result p0

    .line 8
    add-int/lit8 p0, p0, -0x1

    .line 10
    :goto_0
    if-ltz p0, :cond_6

    .line 12
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/alarm/Alarm;

    .line 18
    if-eqz v0, :cond_5

    .line 20
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 22
    if-eqz v1, :cond_5

    .line 24
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 26
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 28
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    iget-object v3, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 34
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 41
    move-result v3

    .line 42
    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_5

    .line 48
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_0

    .line 59
    iget-boolean v1, v2, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 61
    if-nez v1, :cond_3

    .line 63
    :cond_0
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 65
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    .line 68
    move-result v1

    .line 69
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 71
    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 74
    if-eqz v4, :cond_1

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_1

    .line 86
    monitor-exit v3

    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_4

    .line 90
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 93
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    iget-object v4, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 99
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    .line 102
    move-result v4

    .line 103
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 106
    move-result v4

    .line 107
    monitor-enter v3

    .line 108
    :try_start_1
    invoke-virtual {v2, v4, v1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_4

    .line 114
    iget-object v1, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 116
    iget-boolean v4, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 118
    if-eqz v4, :cond_4

    .line 120
    iget-boolean v4, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 122
    if-nez v4, :cond_2

    .line 124
    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 126
    if-eqz v1, :cond_4

    .line 128
    goto :goto_1

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    goto :goto_3

    .line 131
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 134
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    iget-object v0, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 140
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    .line 143
    move-result v0

    .line 144
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 147
    move-result v0

    .line 148
    const-string v3, "Alarm"

    .line 150
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    goto :goto_5

    .line 154
    :cond_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    const-string v1, "AlarmManager"

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    const-string v3, "MARs: filtAlarmsForFreeCess ---pkgName = "

    .line 161
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v3, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 166
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v3, ", Uid = "

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v0, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 180
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    .line 183
    move-result v0

    .line 184
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    goto :goto_5

    .line 198
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    throw p0

    .line 200
    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    throw p0

    .line 202
    :cond_5
    :goto_5
    add-int/lit8 p0, p0, -0x1

    .line 204
    goto/16 :goto_0

    .line 206
    :cond_6
    return-void
.end method

.method public static -$$Nest$mlogAlarmBatchDelivered(Lcom/android/server/alarm/AlarmManagerService;IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    .line 7
    move-result p0

    .line 8
    new-array v3, p0, [I

    .line 10
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    .line 13
    move-result p0

    .line 14
    new-array v4, p0, [I

    .line 16
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    .line 19
    move-result p0

    .line 20
    new-array v5, p0, [I

    .line 22
    const/4 p0, 0x0

    .line 23
    move v0, p0

    .line 24
    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    .line 27
    move-result v1

    .line 28
    if-ge v0, v1, :cond_0

    .line 30
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 33
    move-result v1

    .line 34
    aput v1, v3, v0

    .line 36
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 39
    move-result v1

    .line 40
    aput v1, v4, v0

    .line 42
    aget v1, v3, v0

    .line 44
    invoke-virtual {p4, v1, p0}, Landroid/util/SparseIntArray;->get(II)I

    .line 47
    move-result v1

    .line 48
    aput v1, v5, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/16 v0, 0x16f

    .line 55
    move v1, p1

    .line 56
    move v2, p2

    .line 57
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[I[I[I)V

    .line 60
    return-void
.end method

.method public static -$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 11
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_0

    .line 19
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 21
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 24
    move-result v5

    .line 25
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 33
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_4

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 43
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 50
    move-result v1

    .line 51
    :goto_1
    if-ge v3, v1, :cond_3

    .line 53
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 63
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    move-result-object v5

    .line 71
    const-string/jumbo v6, "next_alarm_formatted"

    .line 74
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v7

    .line 78
    invoke-static {v7, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_1

    .line 84
    const-string v7, "EHm"

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const-string v7, "Ehma"

    .line 89
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 92
    move-result-object v8

    .line 93
    invoke-static {v8, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v7

    .line 97
    if-nez v4, :cond_2

    .line 99
    const-string v4, ""

    .line 101
    goto :goto_3

    .line 102
    :cond_2
    invoke-virtual {v4}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 105
    move-result-wide v8

    .line 106
    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 109
    move-result-object v4

    .line 110
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 113
    move-result-object v4

    .line 114
    :goto_3
    invoke-static {v5, v6, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 117
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v4

    .line 121
    sget-object v5, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 123
    new-instance v6, Landroid/os/UserHandle;

    .line 125
    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 128
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    return-void

    .line 135
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    throw p0
.end method

.method public static bridge synthetic -$$Nest$smgetNextAlarm(IJ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarm(JI)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smsetBootAlarm(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setBootAlarm(JLjava/lang/String;)V

    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smwaitForAlarm(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->waitForAlarm(J)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/high16 v1, 0x21000000

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 71
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, v0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 4
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 7
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    const/16 v0, 0xa

    .line 10
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 12
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 17
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 18
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    .line 19
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    .line 20
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    .line 21
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v2, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 22
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 23
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v2, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    .line 24
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v2, Lcom/android/internal/util/jobs/StatLogger;

    const-string v3, "REORDER_ALARMS_FOR_STANDBY"

    const-string v4, "HAS_SCHEDULE_EXACT_ALARM"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Alarm manager stats"

    invoke-direct {v2, v4, v3}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 28
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 29
    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    .line 30
    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 31
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    .line 33
    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    .line 34
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    .line 36
    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 37
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    .line 39
    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 40
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 41
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    .line 43
    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 44
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 45
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 46
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 47
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    .line 48
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 49
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 51
    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 52
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 53
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    const-wide/16 v1, 0x0

    .line 54
    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 55
    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 56
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Lcom/android/server/alarm/AlarmManagerService$4;

    .line 57
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/alarm/AlarmManagerService$7;

    .line 58
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 59
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 60
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 61
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 62
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 63
    new-instance p2, Lcom/android/server/alarm/SamsungAlarmManagerService;

    invoke-direct {p2, p1}, Lcom/android/server/alarm/SamsungAlarmManagerService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    .line 64
    sget p2, Lcom/android/server/alarm/AppSyncInfo;->$r8$clinit:I

    .line 65
    const-string/jumbo p2, "ro.csc.country_code"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "China"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 66
    new-instance p2, Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p2, p1}, Lcom/android/server/alarm/AppSyncInfo;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance p2, Lcom/android/server/alarm/DummyAppSync;

    .line 68
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 69
    :goto_0
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    return-void
.end method

.method public static addClampPositive(JJ)J
    .locals 5

    .line 1
    add-long v0, p0, p2

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-ltz v4, :cond_0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    cmp-long p0, p0, v2

    .line 12
    if-ltz p0, :cond_1

    .line 14
    cmp-long p0, p2, v2

    .line 16
    if-ltz p0, :cond_1

    .line 18
    const-wide p0, 0x7fffffffffffffffL

    .line 23
    return-wide p0

    .line 24
    :cond_1
    return-wide v2
.end method

.method public static calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/util/ArraySet;

    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v0, :cond_1

    .line 15
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 21
    iget-boolean v5, v4, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 23
    if-eqz v5, :cond_0

    .line 25
    iget v5, v4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 27
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    move-result v5

    .line 31
    iget-object v4, v4, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 33
    invoke-static {v5, v4}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v3, v2

    .line 44
    :goto_1
    if-ge v3, v0, :cond_4

    .line 46
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 52
    iget v5, v4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 54
    const/16 v6, 0x3e8

    .line 56
    iget-object v7, v4, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 58
    if-ne v5, v6, :cond_2

    .line 60
    const-string v5, "android"

    .line 62
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_2

    .line 68
    iput v2, v4, Lcom/android/server/alarm/Alarm;->priorityClass:I

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    iget v5, v4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 73
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 76
    move-result v5

    .line 77
    invoke-static {v5, v7}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_3

    .line 87
    const/4 v5, 0x1

    .line 88
    iput v5, v4, Lcom/android/server/alarm/Alarm;->priorityClass:I

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    const/4 v5, 0x2

    .line 92
    iput v5, v4, Lcom/android/server/alarm/Alarm;->priorityClass:I

    .line 94
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    return-void
.end method

.method private static native close(J)V
.end method

.method public static final dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 7
    :goto_0
    if-ltz v1, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 15
    iget v3, v2, Lcom/android/server/alarm/Alarm;->type:I

    .line 17
    invoke-static {v3}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 24
    const-string v3, " #"

    .line 26
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 29
    sub-int v3, v0, v1

    .line 31
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 34
    const-string v3, ": "

    .line 36
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 45
    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 48
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_0
    if-ltz v0, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 21
    :goto_1
    if-ltz v2, :cond_1

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 29
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 51
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 54
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    return-void
.end method

.method private static native getNextAlarm(JI)J
.end method

.method public static increment(ILandroid/util/SparseIntArray;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ltz v0, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 11
    move-result p0

    .line 12
    add-int/2addr p0, v1

    .line 13
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1, p0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    :goto_0
    return-void
.end method

.method private static native init()J
.end method

.method public static isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    .line 3
    and-int/lit8 p0, p0, 0x24

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static isExactAlarmChangeEnabled(ILjava/lang/String;)Z
    .locals 2

    .line 1
    const-wide/32 v0, 0xa35edc1

    .line 4
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {v0, v1, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 13
    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    .line 15
    and-int/lit8 p0, p0, 0xc

    .line 17
    if-eqz p0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method

.method public static isMARsRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    .line 9
    move-result v0

    .line 10
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 12
    if-nez v2, :cond_6

    .line 14
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 16
    const-wide/16 v4, 0x0

    .line 18
    cmp-long v2, v2, v4

    .line 20
    if-nez v2, :cond_0

    .line 22
    iget v2, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq v2, v3, :cond_0

    .line 27
    sget-object v2, Lcom/android/server/alarm/AlarmManagerService;->pmInternalForMARs:Landroid/content/pm/PackageManagerInternal;

    .line 29
    if-eqz v2, :cond_6

    .line 31
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    .line 34
    move-result v2

    .line 35
    const/16 v3, 0x1f

    .line 37
    if-ge v2, v3, :cond_6

    .line 39
    :cond_0
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 41
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 43
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 45
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 52
    move-result v0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 58
    monitor-enter v3

    .line 59
    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 61
    invoke-static {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 64
    move-result-object v2

    .line 65
    const/4 v4, 0x1

    .line 66
    if-nez v2, :cond_2

    .line 68
    monitor-exit v3

    .line 69
    :cond_1
    move p0, v1

    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_4

    .line 79
    iget-boolean v5, v2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 81
    if-nez v5, :cond_4

    .line 83
    iget v2, v2, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 85
    and-int/lit8 v2, v2, 0x8

    .line 87
    if-eqz v2, :cond_3

    .line 89
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 91
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 93
    invoke-virtual {v2, v0, p0}, Lcom/android/server/am/FreecessController;->matchFreezeState(ILjava/lang/String;)Z

    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_3

    .line 99
    move p0, v4

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    move p0, v1

    .line 102
    :goto_0
    monitor-exit v3

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget v2, v2, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 106
    and-int/lit8 v2, v2, 0x2

    .line 108
    if-eqz v2, :cond_5

    .line 110
    move v2, v4

    .line 111
    goto :goto_1

    .line 112
    :cond_5
    move v2, v1

    .line 113
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    if-nez v2, :cond_1

    .line 116
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 118
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 120
    invoke-virtual {v2, v0, p0}, Lcom/android/server/am/FreecessController;->matchFreezeState(ILjava/lang/String;)Z

    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_1

    .line 126
    move p0, v4

    .line 127
    :goto_2
    if-eqz p0, :cond_6

    .line 129
    return v4

    .line 130
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    throw p0

    .line 132
    :cond_6
    return v1
.end method

.method public static isRtc(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 4
    if-nez p0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :cond_1
    :goto_0
    return v0
.end method

.method public static maxTriggerTime(JJJ)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p4, v0

    .line 5
    if-nez v2, :cond_0

    .line 7
    sub-long p4, p2, p0

    .line 9
    :cond_0
    const-wide/16 p0, 0x2710

    .line 11
    cmp-long p0, p4, p0

    .line 13
    if-gez p0, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-wide v0, p4

    .line 17
    :goto_0
    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    .line 19
    long-to-double p4, v0

    .line 20
    mul-double/2addr p4, p0

    .line 21
    double-to-long p0, p4

    .line 22
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    .line 25
    move-result-wide p0

    .line 26
    if-nez v2, :cond_2

    .line 28
    const-wide/32 p4, 0x36ee80

    .line 31
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    .line 34
    move-result-wide p2

    .line 35
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 38
    move-result-wide p0

    .line 39
    :cond_2
    return-wide p0
.end method

.method private static native set(JIJJ)I
.end method

.method private static native setBootAlarm(JLjava/lang/String;)V
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method public final adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 12
    if-eqz v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 17
    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 25
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 27
    invoke-virtual {v2}, Landroid/app/PendingIntent;->isForegroundService()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 36
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 42
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_3
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 46
    const/4 v4, 0x3

    .line 47
    if-eqz v3, :cond_b

    .line 49
    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 51
    invoke-virtual {v3, v2, v5}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z

    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_4

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    iget v3, p1, Lcom/android/server/alarm/Alarm;->flags:I

    .line 60
    and-int/lit8 v6, v3, 0x8

    .line 62
    if-eqz v6, :cond_5

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_8

    .line 71
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 74
    move-result v2

    .line 75
    and-int/lit8 v3, v3, 0x4

    .line 77
    if-eqz v3, :cond_6

    .line 79
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 81
    iget v6, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 83
    iget-wide v7, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 85
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 87
    goto :goto_1

    .line 88
    :cond_6
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 90
    iget v6, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 92
    iget-wide v7, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 94
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 96
    :goto_1
    invoke-virtual {p0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(ILjava/lang/String;)I

    .line 99
    move-result v3

    .line 100
    if-ge v3, v6, :cond_7

    .line 102
    goto :goto_2

    .line 103
    :cond_7
    invoke-virtual {p0, v2, v6, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(IILjava/lang/String;)J

    .line 106
    move-result-wide v0

    .line 107
    add-long/2addr v0, v7

    .line 108
    goto :goto_2

    .line 109
    :cond_8
    and-int/lit8 v3, v3, 0x40

    .line 111
    if-eqz v3, :cond_a

    .line 113
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 115
    const-wide/16 v5, 0x0

    .line 117
    invoke-virtual {v3, v2, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 120
    move-result-wide v2

    .line 121
    cmp-long v5, v2, v5

    .line 123
    if-nez v5, :cond_9

    .line 125
    goto :goto_2

    .line 126
    :cond_9
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 128
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    .line 130
    add-long/2addr v0, v2

    .line 131
    goto :goto_2

    .line 132
    :cond_a
    const-wide v2, 0x757b12c00L

    .line 137
    add-long/2addr v0, v2

    .line 138
    :goto_2
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 141
    move-result p0

    .line 142
    return p0

    .line 143
    :cond_b
    :goto_3
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 146
    move-result p0

    .line 147
    return p0
.end method

.method public final adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v2, :cond_5

    .line 17
    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 19
    if-eqz v2, :cond_0

    .line 21
    goto/16 :goto_2

    .line 23
    :cond_0
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 25
    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 27
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    move-result v4

    .line 31
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 33
    invoke-virtual {v5, v4, v2, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 36
    move-result v5

    .line 37
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 39
    invoke-virtual {v6, v4, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(ILjava/lang/String;)I

    .line 42
    move-result v6

    .line 43
    const/16 v7, 0x2d

    .line 45
    if-ne v5, v7, :cond_1

    .line 47
    if-lez v6, :cond_4

    .line 49
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 51
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 53
    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    .line 55
    invoke-virtual {v5, v4, v6, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(IILjava/lang/String;)J

    .line 58
    move-result-wide v4

    .line 59
    sub-long v6, v0, v4

    .line 61
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 63
    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 65
    cmp-long p0, v6, v8

    .line 67
    if-gez p0, :cond_4

    .line 69
    add-long/2addr v4, v8

    .line 70
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 73
    move-result p0

    .line 74
    return p0

    .line 75
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->getQuotaForBucketLocked(I)I

    .line 78
    move-result v5

    .line 79
    if-lt v6, v5, :cond_4

    .line 81
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 83
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-static {v4, v2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 89
    move-result-object v7

    .line 90
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 92
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    .line 98
    if-eqz v6, :cond_2

    .line 100
    iget v7, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    .line 102
    if-lez v7, :cond_2

    .line 104
    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    .line 106
    cmp-long v6, v0, v6

    .line 108
    if-gtz v6, :cond_2

    .line 110
    iput-boolean v3, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 112
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 115
    move-result p0

    .line 116
    return p0

    .line 117
    :cond_2
    if-gtz v5, :cond_3

    .line 119
    const-wide v4, 0x757b12c00L

    .line 124
    :goto_0
    add-long/2addr v0, v4

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 128
    invoke-virtual {v0, v4, v5, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(IILjava/lang/String;)J

    .line 131
    move-result-wide v0

    .line 132
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 134
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 136
    goto :goto_0

    .line 137
    :goto_1
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 140
    move-result p0

    .line 141
    return p0

    .line 142
    :cond_4
    const/4 p0, 0x0

    .line 143
    iput-boolean p0, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 145
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 148
    move-result p0

    .line 149
    return p0

    .line 150
    :cond_5
    :goto_2
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 153
    move-result p0

    .line 154
    return p0
.end method

.method public final adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 12
    const/4 v3, 0x2

    .line 13
    if-eqz v2, :cond_7

    .line 15
    if-ne v2, p1, :cond_0

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    .line 20
    and-int/lit8 v2, v2, 0xa

    .line 22
    if-eqz v2, :cond_1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    .line 28
    move-result v2

    .line 29
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    .line 31
    iget v5, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 33
    if-eqz v2, :cond_4

    .line 35
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 38
    move-result v2

    .line 39
    and-int/lit8 v4, v4, 0x4

    .line 41
    if-eqz v4, :cond_2

    .line 43
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 45
    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 47
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 49
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 54
    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 56
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 58
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 60
    :goto_0
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 62
    invoke-virtual {v4, v2, v8}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(ILjava/lang/String;)I

    .line 65
    move-result v9

    .line 66
    if-ge v9, v5, :cond_3

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v4, v2, v5, v8}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(IILjava/lang/String;)J

    .line 72
    move-result-wide v0

    .line 73
    add-long/2addr v0, v6

    .line 74
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 76
    iget-wide v4, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 78
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 81
    move-result-wide v0

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    and-int/lit8 v2, v4, 0x40

    .line 85
    if-eqz v2, :cond_6

    .line 87
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 89
    const-wide/16 v6, 0x0

    .line 91
    invoke-virtual {v2, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 94
    move-result-wide v4

    .line 95
    cmp-long v2, v4, v6

    .line 97
    if-nez v2, :cond_5

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 102
    iget-wide v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    .line 104
    add-long/2addr v0, v4

    .line 105
    :goto_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 107
    iget-wide v4, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 109
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 112
    move-result-wide v0

    .line 113
    goto :goto_2

    .line 114
    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 116
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 118
    :goto_2
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 121
    move-result p0

    .line 122
    return p0

    .line 123
    :cond_7
    :goto_3
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 126
    move-result p0

    .line 127
    return p0
.end method

.method public final adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z
    .locals 10

    .line 1
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    iget-wide v2, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 11
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    .line 13
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(IJ)J

    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 20
    move-result v0

    .line 21
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 23
    if-nez v2, :cond_1

    .line 25
    return v0

    .line 26
    :cond_1
    iget-wide v2, v2, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 28
    iget-wide v4, p1, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 30
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 32
    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 34
    sub-long v6, v2, v6

    .line 36
    cmp-long v4, v4, v6

    .line 38
    if-gez v4, :cond_2

    .line 40
    return v0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    move-result-wide v4

    .line 50
    sub-long v6, v2, v4

    .line 52
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 54
    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 56
    cmp-long v0, v6, v8

    .line 58
    if-gtz v0, :cond_3

    .line 60
    invoke-virtual {p1, v1, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 67
    move-result-object v0

    .line 68
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 70
    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 72
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 75
    move-result-wide v4

    .line 76
    const-wide/16 v6, 0x1

    .line 78
    add-long/2addr v4, v6

    .line 79
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 81
    iget-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 83
    invoke-virtual {v0, v6, v7, v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    .line 86
    move-result-wide v4

    .line 87
    sub-long/2addr v2, v4

    .line 88
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 91
    :goto_0
    const/4 p0, 0x1

    .line 92
    return p0
.end method

.method public final checkAllowNonWakeupDelayLocked(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    return v1

    .line 14
    :cond_1
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 16
    const-wide/16 v4, 0x0

    .line 18
    cmp-long v0, v2, v4

    .line 20
    if-gtz v0, :cond_2

    .line 22
    return v1

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_3

    .line 31
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 33
    cmp-long v0, v2, p1

    .line 35
    if-gez v0, :cond_3

    .line 37
    return v1

    .line 38
    :cond_3
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 40
    sub-long v2, p1, v2

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    .line 45
    move-result-wide p0

    .line 46
    cmp-long p0, v2, p0

    .line 48
    if-gtz p0, :cond_4

    .line 50
    const/4 v1, 0x1

    .line 51
    :cond_4
    return v1
.end method

.method public final convertToElapsed(IJ)J
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    move-result-wide p0

    .line 23
    sub-long/2addr v0, p0

    .line 24
    sub-long/2addr p2, v0

    .line 25
    :cond_0
    return-wide p2
.end method

.method public final currentNonWakeupFuzzLocked(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    const-wide/32 v0, 0x493e0

    .line 7
    cmp-long p0, p1, v0

    .line 9
    if-gez p0, :cond_0

    .line 11
    const-wide/32 p0, 0x1d4c0

    .line 14
    return-wide p0

    .line 15
    :cond_0
    const-wide/32 v0, 0x1b7740

    .line 18
    cmp-long p0, p1, v0

    .line 20
    if-gez p0, :cond_1

    .line 22
    const-wide/32 p0, 0xdbba0

    .line 25
    return-wide p0

    .line 26
    :cond_1
    const-wide/32 p0, 0x36ee80

    .line 29
    return-wide p0
.end method

.method public final decrementAlarmCount(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ltz v0, :cond_1

    .line 10
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 15
    move-result v2

    .line 16
    if-le v2, v1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 20
    add-int/lit8 v3, v2, -0x1

    .line 22
    invoke-virtual {p0, v0, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 28
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v2, v1, :cond_2

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    const-string v0, "Attempt to decrement existing alarm count "

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, " by 1 for uid "

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    const-string p1, "AlarmManager"

    .line 59
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2
    return-void
.end method

.method public final deliverAlarmsLocked(JLjava/util/ArrayList;)V
    .locals 9

    .line 1
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 10
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 16
    iget-boolean v2, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 18
    iget v3, v1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 20
    const-wide/32 v4, 0x20000

    .line 23
    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 25
    if-eqz v2, :cond_0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    const-string v7, "Dispatch wakeup alarm to "

    .line 31
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    const-string v7, "Dispatch non-wakeup alarm to "

    .line 49
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 62
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 64
    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 66
    iget-object v7, v1, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 68
    iget-object v8, v1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 70
    invoke-virtual {v2, v6, v7, v3, v8}, Landroid/app/ActivityManagerInternal;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 75
    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "AlarmManager"

    .line 82
    const-string v6, "Failure sending alarm."

    .line 84
    invoke-static {v2, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(I)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public final deliverPendingBackgroundAlarmsLocked(JLjava/util/ArrayList;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-wide/from16 v11, p1

    .line 5
    move-object/from16 v14, p3

    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v13

    .line 11
    const/16 v20, 0x0

    .line 13
    move/from16 v1, v20

    .line 15
    move v15, v1

    .line 16
    :goto_0
    if-ge v15, v13, :cond_2

    .line 18
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    move-object v9, v2

    .line 23
    check-cast v9, Lcom/android/server/alarm/Alarm;

    .line 25
    iget-boolean v2, v9, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v2, :cond_0

    .line 30
    move/from16 v21, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move/from16 v21, v1

    .line 35
    :goto_1
    iput v3, v9, Lcom/android/server/alarm/Alarm;->count:I

    .line 37
    iget-wide v5, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 39
    const-wide/16 v1, 0x0

    .line 41
    cmp-long v1, v5, v1

    .line 43
    if-lez v1, :cond_1

    .line 45
    int-to-long v1, v3

    .line 46
    iget-object v3, v9, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 48
    aget-wide v3, v3, v20

    .line 50
    sub-long v7, v11, v3

    .line 52
    div-long/2addr v7, v5

    .line 53
    add-long/2addr v7, v1

    .line 54
    long-to-int v1, v7

    .line 55
    iput v1, v9, Lcom/android/server/alarm/Alarm;->count:I

    .line 57
    int-to-long v1, v1

    .line 58
    mul-long v16, v1, v5

    .line 60
    add-long v18, v3, v16

    .line 62
    move-wide/from16 v7, v18

    .line 64
    move-wide/from16 v1, p1

    .line 66
    move-wide/from16 v3, v18

    .line 68
    invoke-static/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    .line 71
    move-result-wide v1

    .line 72
    iget-wide v3, v9, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 74
    add-long v5, v3, v16

    .line 76
    sub-long v1, v1, v18

    .line 78
    move-object v4, v9

    .line 79
    move-wide v9, v1

    .line 80
    iget-object v1, v4, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 82
    move/from16 v22, v15

    .line 84
    move-object v15, v1

    .line 85
    iget-object v1, v4, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 87
    move-object/from16 v17, v1

    .line 89
    iget-object v1, v4, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 91
    move/from16 v23, v13

    .line 93
    move-object v13, v1

    .line 94
    iget v3, v4, Lcom/android/server/alarm/Alarm;->uid:I

    .line 96
    iget-object v1, v4, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 98
    move-object/from16 v19, v1

    .line 100
    iget v1, v4, Lcom/android/server/alarm/Alarm;->type:I

    .line 102
    iget-wide v11, v4, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 104
    const/4 v2, 0x0

    .line 105
    move-object v14, v2

    .line 106
    const/16 v18, 0x0

    .line 108
    iget v2, v4, Lcom/android/server/alarm/Alarm;->flags:I

    .line 110
    const/16 v16, 0x0

    .line 112
    const/4 v4, -0x1

    .line 113
    move-object/from16 v0, p0

    .line 115
    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    goto :goto_2

    .line 119
    :cond_1
    move/from16 v23, v13

    .line 121
    move/from16 v22, v15

    .line 123
    :goto_2
    add-int/lit8 v15, v22, 0x1

    .line 125
    move-object/from16 v0, p0

    .line 127
    move-wide/from16 v11, p1

    .line 129
    move-object/from16 v14, p3

    .line 131
    move/from16 v1, v21

    .line 133
    move/from16 v13, v23

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    if-nez v1, :cond_4

    .line 138
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_4

    .line 144
    move-object/from16 v0, p0

    .line 146
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_3

    .line 154
    move-wide/from16 v1, p1

    .line 156
    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 158
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    .line 161
    move-result-wide v3

    .line 162
    const-wide/16 v5, 0x3

    .line 164
    mul-long/2addr v3, v5

    .line 165
    const-wide/16 v5, 0x2

    .line 167
    div-long/2addr v3, v5

    .line 168
    add-long/2addr v3, v1

    .line 169
    iput-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 171
    :cond_3
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 173
    move-object/from16 v3, p3

    .line 175
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 180
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 183
    move-result v2

    .line 184
    add-int/2addr v2, v1

    .line 185
    iput v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 187
    goto :goto_3

    .line 188
    :cond_4
    move-object/from16 v0, p0

    .line 190
    move-wide/from16 v1, p1

    .line 192
    move-object/from16 v3, p3

    .line 194
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 199
    move-result v4

    .line 200
    if-lez v4, :cond_6

    .line 202
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 209
    sub-long v4, v1, v4

    .line 211
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 213
    add-long/2addr v6, v4

    .line 214
    iput-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 216
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 218
    cmp-long v6, v6, v4

    .line 220
    if-gez v6, :cond_5

    .line 222
    iput-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 224
    :cond_5
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 229
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 232
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    .line 234
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(JLjava/util/ArrayList;)V

    .line 240
    :goto_3
    return-void
.end method

.method public final dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .locals 21
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const-string v3, "App Standby Parole: "

    .line 7
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v4

    .line 10
    :try_start_0
    const-string v5, "Current Alarm Manager state:"

    .line 12
    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 18
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 20
    invoke-virtual {v5, v2}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 26
    const-string v5, "Feature Flags:"

    .line 28
    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 34
    const-string/jumbo v5, "com.android.server.alarm.use_frozen_state_to_drop_listener_alarms"

    .line 37
    iget-boolean v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mUseFrozenStateToDropListenerAlarms:Z

    .line 39
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v2, v5, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 49
    const-string/jumbo v5, "com.android.server.alarm.start_user_before_scheduled_alarms"

    .line 52
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    invoke-virtual {v2, v5, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget-boolean v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 73
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 86
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 88
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v3, v2}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    move-object v1, v0

    .line 99
    goto/16 :goto_26

    .line 101
    :cond_0
    :goto_0
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 103
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 109
    move-result-wide v5

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 113
    move-result-wide v7

    .line 114
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 116
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    move-result-wide v9

    .line 123
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 125
    const-string/jumbo v11, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 128
    invoke-direct {v3, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v11, "nowRTC="

    .line 134
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2, v9, v10}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 140
    const-string v11, "="

    .line 142
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 145
    new-instance v11, Ljava/util/Date;

    .line 147
    invoke-direct {v11, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 150
    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 153
    move-result-object v11

    .line 154
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 157
    const-string v11, " nowELAPSED="

    .line 159
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2, v5, v6}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 168
    const-string/jumbo v11, "mLastTimeChangeClockTime="

    .line 171
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 174
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 176
    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 179
    const-string v11, "="

    .line 181
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 184
    new-instance v11, Ljava/util/Date;

    .line 186
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 188
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 191
    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 194
    move-result-object v11

    .line 195
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v11, "mLastTimeChangeRealtime="

    .line 201
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 204
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 206
    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 209
    const-string/jumbo v11, "mLastTickReceived="

    .line 212
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 215
    new-instance v11, Ljava/util/Date;

    .line 217
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    .line 219
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 222
    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 225
    move-result-object v11

    .line 226
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v11, "mLastTickSet="

    .line 232
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 235
    new-instance v11, Ljava/util/Date;

    .line 237
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    .line 239
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 242
    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 245
    move-result-object v11

    .line 246
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 252
    const-string v11, "Recent TIME_TICK history:"

    .line 254
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 260
    iget v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    .line 262
    :cond_1
    add-int/lit8 v11, v11, -0x1

    .line 264
    if-gez v11, :cond_2

    .line 266
    const/16 v11, 0x9

    .line 268
    :cond_2
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    .line 270
    aget-wide v12, v12, v11

    .line 272
    const-wide/16 v14, 0x0

    .line 274
    cmp-long v16, v12, v14

    .line 276
    if-lez v16, :cond_3

    .line 278
    new-instance v14, Ljava/util/Date;

    .line 280
    sub-long v12, v5, v12

    .line 282
    sub-long v12, v9, v12

    .line 284
    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 287
    invoke-virtual {v3, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 290
    move-result-object v12

    .line 291
    goto :goto_1

    .line 292
    :cond_3
    const-string v12, "-"

    .line 294
    :goto_1
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 297
    iget v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    .line 299
    if-ne v11, v12, :cond_1

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 304
    const-class v11, Lcom/android/server/SystemServiceManager;

    .line 306
    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 309
    move-result-object v11

    .line 310
    check-cast v11, Lcom/android/server/SystemServiceManager;

    .line 312
    if-eqz v11, :cond_5

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 317
    const-string v12, "RuntimeStarted="

    .line 319
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 322
    new-instance v12, Ljava/util/Date;

    .line 324
    sub-long v13, v9, v5

    .line 326
    move-wide/from16 v18, v9

    .line 328
    iget-wide v9, v11, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    .line 330
    add-long/2addr v13, v9

    .line 331
    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 334
    invoke-virtual {v3, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 337
    move-result-object v9

    .line 338
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 341
    iget-boolean v9, v11, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 343
    if-eqz v9, :cond_4

    .line 345
    const-string v9, "  (Runtime restarted)"

    .line 347
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 350
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 353
    const-string v9, "Runtime uptime (elapsed): "

    .line 355
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget-wide v9, v11, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    .line 360
    invoke-static {v5, v6, v9, v10, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 366
    const-string v9, "Runtime uptime (uptime): "

    .line 368
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    .line 374
    move-result-wide v9

    .line 375
    invoke-static {v7, v8, v9, v10, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 381
    goto :goto_2

    .line 382
    :cond_5
    move-wide/from16 v18, v9

    .line 384
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 387
    iget-boolean v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 389
    if-nez v7, :cond_6

    .line 391
    const-string v7, "Time since non-interactive: "

    .line 393
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 398
    sub-long v7, v5, v7

    .line 400
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 406
    :cond_6
    const-string v7, "Max wakeup delay: "

    .line 408
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    .line 414
    move-result-wide v7

    .line 415
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 421
    const-string v7, "Time since last dispatch: "

    .line 423
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 426
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 428
    sub-long v7, v5, v7

    .line 430
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 436
    const-string v7, "Next non-wakeup delivery time: "

    .line 438
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 443
    invoke-static {v7, v8, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 449
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 451
    sub-long v9, v18, v5

    .line 453
    add-long/2addr v7, v9

    .line 454
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 456
    add-long/2addr v11, v9

    .line 457
    const-string v9, "Next non-wakeup alarm: "

    .line 459
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 462
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 464
    invoke-static {v9, v10, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 467
    const-string v9, " = "

    .line 469
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 474
    invoke-virtual {v2, v9, v10}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 477
    const-string v9, " = "

    .line 479
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 482
    new-instance v9, Ljava/util/Date;

    .line 484
    invoke-direct {v9, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 487
    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 490
    move-result-object v9

    .line 491
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 497
    const-string/jumbo v9, "set at "

    .line 500
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 503
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 505
    invoke-static {v9, v10, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 514
    const-string v9, "Next wakeup alarm: "

    .line 516
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 519
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 521
    invoke-static {v9, v10, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 524
    const-string v9, " = "

    .line 526
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 529
    iget-wide v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 531
    invoke-virtual {v2, v9, v10}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 534
    const-string v9, " = "

    .line 536
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 539
    new-instance v9, Ljava/util/Date;

    .line 541
    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 544
    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 547
    move-result-object v7

    .line 548
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 554
    const-string/jumbo v7, "set at "

    .line 557
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 562
    invoke-static {v7, v8, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 571
    const-string v7, "Next kernel non-wakeup alarm: "

    .line 573
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 578
    iget-wide v7, v7, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    .line 580
    const/4 v9, 0x3

    .line 581
    invoke-static {v9, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smgetNextAlarm(IJ)J

    .line 584
    move-result-wide v7

    .line 585
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 591
    const-string v7, "Next kernel wakeup alarm: "

    .line 593
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 596
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 598
    iget-wide v7, v7, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    .line 600
    const/4 v9, 0x2

    .line 601
    invoke-static {v9, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smgetNextAlarm(IJ)J

    .line 604
    move-result-wide v7

    .line 605
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 611
    const-string v7, "Last wakeup: "

    .line 613
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 616
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    .line 618
    invoke-static {v7, v8, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 621
    const-string v7, " = "

    .line 623
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    .line 628
    invoke-virtual {v2, v7, v8}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 631
    const-string v7, "Last trigger: "

    .line 633
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 636
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    .line 638
    invoke-static {v7, v8, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 641
    const-string v7, " = "

    .line 643
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 646
    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    .line 648
    invoke-virtual {v2, v7, v8}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 651
    const-string v7, "Num time change events: "

    .line 653
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 656
    iget v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    .line 658
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 664
    new-instance v7, Ljava/lang/StringBuilder;

    .line 666
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    const-string v8, "App ids requesting SCHEDULE_EXACT_ALARM: "

    .line 671
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 676
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    move-result-object v7

    .line 683
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 689
    const-string v7, "Last OP_SCHEDULE_EXACT_ALARM: ["

    .line 691
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 694
    const/4 v7, 0x0

    .line 695
    move v8, v7

    .line 696
    :goto_3
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 698
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 701
    move-result v9

    .line 702
    if-ge v8, v9, :cond_8

    .line 704
    if-lez v8, :cond_7

    .line 706
    const-string v9, ", "

    .line 708
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 711
    :cond_7
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 713
    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 716
    move-result v9

    .line 717
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 720
    new-instance v9, Ljava/lang/StringBuilder;

    .line 722
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    const-string v10, ":"

    .line 727
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 732
    invoke-virtual {v10, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 735
    move-result v10

    .line 736
    invoke-static {v10}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 739
    move-result-object v10

    .line 740
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    move-result-object v9

    .line 747
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 750
    add-int/lit8 v8, v8, 0x1

    .line 752
    goto :goto_3

    .line 753
    :cond_8
    const-string v8, "]"

    .line 755
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 761
    const-string v8, "Next alarm clock information: "

    .line 763
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 769
    new-instance v8, Ljava/util/TreeSet;

    .line 771
    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 774
    move v9, v7

    .line 775
    :goto_4
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 777
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 780
    move-result v10

    .line 781
    if-ge v9, v10, :cond_9

    .line 783
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 785
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    .line 788
    move-result v10

    .line 789
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 792
    move-result-object v10

    .line 793
    invoke-virtual {v8, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 796
    add-int/lit8 v9, v9, 0x1

    .line 798
    goto :goto_4

    .line 799
    :cond_9
    move v9, v7

    .line 800
    :goto_5
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 802
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    .line 805
    move-result v10

    .line 806
    if-ge v9, v10, :cond_a

    .line 808
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 810
    invoke-virtual {v10, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 813
    move-result v10

    .line 814
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 817
    move-result-object v10

    .line 818
    invoke-virtual {v8, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 821
    add-int/lit8 v9, v9, 0x1

    .line 823
    goto :goto_5

    .line 824
    :cond_a
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 827
    move-result-object v8

    .line 828
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 831
    move-result v9

    .line 832
    if-eqz v9, :cond_d

    .line 834
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 837
    move-result-object v9

    .line 838
    check-cast v9, Ljava/lang/Integer;

    .line 840
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 843
    move-result v9

    .line 844
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 846
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 849
    move-result-object v10

    .line 850
    check-cast v10, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 852
    if-eqz v10, :cond_b

    .line 854
    invoke-virtual {v10}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 857
    move-result-wide v10

    .line 858
    goto :goto_7

    .line 859
    :cond_b
    const-wide/16 v10, 0x0

    .line 861
    :goto_7
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 863
    invoke-virtual {v12, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 866
    move-result v12

    .line 867
    const-string/jumbo v13, "user:"

    .line 870
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 876
    const-string v9, " pendingSend:"

    .line 878
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 884
    const-string v9, " time:"

    .line 886
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v2, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 892
    const-wide/16 v12, 0x0

    .line 894
    cmp-long v9, v10, v12

    .line 896
    if-lez v9, :cond_c

    .line 898
    const-string v9, " = "

    .line 900
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 903
    new-instance v9, Ljava/util/Date;

    .line 905
    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 908
    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 911
    move-result-object v9

    .line 912
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 915
    const-string v9, " = "

    .line 917
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 920
    move-wide/from16 v14, v18

    .line 922
    invoke-static {v10, v11, v14, v15, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 925
    goto :goto_8

    .line 926
    :cond_c
    move-wide/from16 v14, v18

    .line 928
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 931
    move-wide/from16 v18, v14

    .line 933
    goto :goto_6

    .line 934
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 937
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 939
    iget-object v8, v8, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 941
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 944
    move-result v8

    .line 945
    if-lez v8, :cond_e

    .line 947
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 950
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 952
    invoke-virtual {v8, v2, v5, v6, v3}, Lcom/android/server/alarm/LazyAlarmStore;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 955
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 958
    const-string v8, "Pending user blocked background alarms: "

    .line 960
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 966
    move v8, v7

    .line 967
    move v9, v8

    .line 968
    :goto_9
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 970
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 973
    move-result v10

    .line 974
    const/4 v11, 0x1

    .line 975
    if-ge v8, v10, :cond_10

    .line 977
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 979
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 982
    move-result-object v10

    .line 983
    check-cast v10, Ljava/util/ArrayList;

    .line 985
    if-eqz v10, :cond_f

    .line 987
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 990
    move-result v12

    .line 991
    if-lez v12, :cond_f

    .line 993
    invoke-static {v2, v10, v5, v6, v3}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 996
    move v9, v11

    .line 997
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 999
    goto :goto_9

    .line 1000
    :cond_10
    if-nez v9, :cond_11

    .line 1002
    const-string/jumbo v8, "none"

    .line 1005
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1011
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1014
    const-string v8, "Pending alarms per uid: ["

    .line 1016
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    move v8, v7

    .line 1020
    :goto_a
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 1022
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 1025
    move-result v9

    .line 1026
    if-ge v8, v9, :cond_13

    .line 1028
    if-lez v8, :cond_12

    .line 1030
    const-string v9, ", "

    .line 1032
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    :cond_12
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 1037
    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 1040
    move-result v9

    .line 1041
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1044
    const-string v9, ":"

    .line 1046
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 1051
    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 1054
    move-result v9

    .line 1055
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1058
    add-int/lit8 v8, v8, 0x1

    .line 1060
    goto :goto_a

    .line 1061
    :cond_13
    const-string v8, "]"

    .line 1063
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1069
    const-string v8, "App Alarm history:"

    .line 1071
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1076
    invoke-virtual {v8, v2, v5, v6}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 1079
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1082
    const-string v8, "Temporary Quota Reserves:"

    .line 1084
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 1089
    invoke-virtual {v8, v2, v5, v6}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 1092
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 1094
    if-eqz v8, :cond_15

    .line 1096
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1099
    const-string v8, "Idle mode state:"

    .line 1101
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1107
    const-string v8, "Idling until: "

    .line 1109
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 1114
    if-eqz v8, :cond_14

    .line 1116
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1119
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 1121
    invoke-virtual {v8, v2, v5, v6, v3}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 1124
    goto :goto_b

    .line 1125
    :cond_14
    const-string/jumbo v8, "null"

    .line 1128
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1134
    :cond_15
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 1136
    if-eqz v8, :cond_16

    .line 1138
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1141
    const-string v8, "Next wake from idle: "

    .line 1143
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 1148
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1151
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1154
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 1156
    invoke-virtual {v8, v2, v5, v6, v3}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 1159
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1162
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1165
    const-string v8, "Past-due non-wakeup alarms: "

    .line 1167
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 1172
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1175
    move-result v8

    .line 1176
    if-lez v8, :cond_17

    .line 1178
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 1180
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1183
    move-result v8

    .line 1184
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1187
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1190
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 1192
    invoke-static {v2, v8, v5, v6, v3}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 1195
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1198
    goto :goto_c

    .line 1199
    :cond_17
    const-string v8, "(none)"

    .line 1201
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1207
    const-string v8, "Number of delayed alarms: "

    .line 1209
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1212
    iget v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1214
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1217
    const-string v8, ", total delay time: "

    .line 1219
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    iget-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1224
    invoke-static {v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1227
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1230
    const-string v8, "Max delay time: "

    .line 1232
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1235
    iget-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 1237
    invoke-static {v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1240
    const-string v8, ", max non-interactive time: "

    .line 1242
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    iget-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 1247
    invoke-static {v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1250
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1253
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1256
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1259
    const-string v8, "Broadcast ref count: "

    .line 1261
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    iget v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 1266
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1269
    const-string v8, "PendingIntent send count: "

    .line 1271
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1274
    iget v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 1276
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1279
    const-string v8, "PendingIntent finish count: "

    .line 1281
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    iget v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 1286
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1289
    const-string v8, "Listener send count: "

    .line 1291
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    iget v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 1296
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1299
    const-string v8, "Listener finish count: "

    .line 1301
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1304
    iget v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 1306
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1309
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1312
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 1314
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1317
    move-result v8

    .line 1318
    if-lez v8, :cond_19

    .line 1320
    const-string v8, "Outstanding deliveries:"

    .line 1322
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1328
    move v8, v7

    .line 1329
    :goto_d
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 1331
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1334
    move-result v9

    .line 1335
    if-ge v8, v9, :cond_18

    .line 1337
    const-string v9, "#"

    .line 1339
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1345
    const-string v9, ": "

    .line 1347
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1350
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 1352
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1355
    move-result-object v9

    .line 1356
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1359
    add-int/lit8 v8, v8, 0x1

    .line 1361
    goto :goto_d

    .line 1362
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1365
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1368
    :cond_19
    const-string v8, "Allow while idle history:"

    .line 1370
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1375
    invoke-virtual {v8, v2, v5, v6}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 1378
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1381
    const-string v8, "Allow while idle compat history:"

    .line 1383
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1388
    invoke-virtual {v8, v2, v5, v6}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 1391
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1394
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 1396
    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    .line 1399
    move-result v8

    .line 1400
    if-lez v8, :cond_1b

    .line 1402
    const-string v8, "Last priority alarm dispatches:"

    .line 1404
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1410
    move v8, v7

    .line 1411
    :goto_e
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 1413
    invoke-virtual {v9}, Landroid/util/SparseLongArray;->size()I

    .line 1416
    move-result v9

    .line 1417
    if-ge v8, v9, :cond_1a

    .line 1419
    const-string v9, "UID: "

    .line 1421
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1424
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 1426
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 1429
    move-result v9

    .line 1430
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1433
    const-string v9, ": "

    .line 1435
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1438
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 1440
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 1443
    move-result-wide v9

    .line 1444
    invoke-static {v9, v10, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1447
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1450
    add-int/lit8 v8, v8, 0x1

    .line 1452
    goto :goto_e

    .line 1453
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1456
    :cond_1b
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 1458
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 1461
    move-result v8

    .line 1462
    if-lez v8, :cond_1e

    .line 1464
    const-string v8, "Removal history:"

    .line 1466
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1472
    move v8, v7

    .line 1473
    :goto_f
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 1475
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 1478
    move-result v9

    .line 1479
    if-ge v8, v9, :cond_1d

    .line 1481
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 1483
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1486
    move-result v9

    .line 1487
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1490
    const-string v9, ":"

    .line 1492
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1498
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 1500
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1503
    move-result-object v9

    .line 1504
    check-cast v9, Lcom/android/internal/util/RingBuffer;

    .line 1506
    invoke-virtual {v9}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1509
    move-result-object v9

    .line 1510
    check-cast v9, [Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    .line 1512
    array-length v10, v9

    .line 1513
    sub-int/2addr v10, v11

    .line 1514
    :goto_10
    if-ltz v10, :cond_1c

    .line 1516
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1518
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1521
    const-string v13, "#"

    .line 1523
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    array-length v13, v9

    .line 1527
    sub-int/2addr v13, v10

    .line 1528
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1531
    const-string v13, ": "

    .line 1533
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1539
    move-result-object v12

    .line 1540
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1543
    aget-object v12, v9, v10

    .line 1545
    invoke-virtual {v12, v2, v5, v6, v3}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 1548
    add-int/lit8 v10, v10, -0x1

    .line 1550
    goto :goto_10

    .line 1551
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1554
    add-int/lit8 v8, v8, 0x1

    .line 1556
    goto :goto_f

    .line 1557
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1560
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1563
    :cond_1e
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    .line 1565
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 1568
    move-result v8

    .line 1569
    if-lez v8, :cond_21

    .line 1571
    const-string v8, "Remove Failed history: "

    .line 1573
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1579
    move v8, v7

    .line 1580
    :goto_11
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    .line 1582
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 1585
    move-result v9

    .line 1586
    if-ge v8, v9, :cond_20

    .line 1588
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    .line 1590
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1593
    move-result v9

    .line 1594
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1597
    const-string v9, ":"

    .line 1599
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1605
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    .line 1607
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1610
    move-result-object v9

    .line 1611
    check-cast v9, Lcom/android/internal/util/RingBuffer;

    .line 1613
    invoke-virtual {v9}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1616
    move-result-object v9

    .line 1617
    check-cast v9, [Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;

    .line 1619
    array-length v10, v9

    .line 1620
    if-gtz v10, :cond_1f

    .line 1622
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1625
    add-int/lit8 v8, v8, 0x1

    .line 1627
    goto :goto_11

    .line 1628
    :cond_1f
    aget-object v1, v9, v7

    .line 1630
    const/4 v1, 0x0

    .line 1631
    throw v1

    .line 1632
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1635
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1638
    :cond_21
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    .line 1640
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 1643
    move-result v8

    .line 1644
    if-lez v8, :cond_24

    .line 1646
    const-string v8, "Addition history: "

    .line 1648
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1654
    move v8, v7

    .line 1655
    :goto_12
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    .line 1657
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 1660
    move-result v9

    .line 1661
    if-ge v8, v9, :cond_23

    .line 1663
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    .line 1665
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1668
    move-result v9

    .line 1669
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1672
    const-string v9, ":"

    .line 1674
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1680
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    .line 1682
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1685
    move-result-object v9

    .line 1686
    check-cast v9, Lcom/android/internal/util/RingBuffer;

    .line 1688
    invoke-virtual {v9}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1691
    move-result-object v9

    .line 1692
    check-cast v9, [Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;

    .line 1694
    array-length v10, v9

    .line 1695
    move v12, v7

    .line 1696
    :goto_13
    if-ge v12, v10, :cond_22

    .line 1698
    aget-object v13, v9, v12

    .line 1700
    invoke-virtual {v13, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 1703
    add-int/lit8 v12, v12, 0x1

    .line 1705
    goto :goto_13

    .line 1706
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1709
    add-int/lit8 v8, v8, 0x1

    .line 1711
    goto :goto_12

    .line 1712
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1715
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1718
    :cond_24
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    .line 1720
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 1723
    move-result v8

    .line 1724
    if-lez v8, :cond_27

    .line 1726
    const-string v8, "Delivery history: "

    .line 1728
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1734
    move v8, v7

    .line 1735
    :goto_14
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    .line 1737
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 1740
    move-result v9

    .line 1741
    if-ge v8, v9, :cond_26

    .line 1743
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    .line 1745
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1748
    move-result v9

    .line 1749
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1752
    const-string v9, ":"

    .line 1754
    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1760
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    .line 1762
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1765
    move-result-object v9

    .line 1766
    check-cast v9, Lcom/android/internal/util/RingBuffer;

    .line 1768
    invoke-virtual {v9}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1771
    move-result-object v9

    .line 1772
    check-cast v9, [Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;

    .line 1774
    array-length v10, v9

    .line 1775
    move v12, v7

    .line 1776
    :goto_15
    if-ge v12, v10, :cond_25

    .line 1778
    aget-object v13, v9, v12

    .line 1780
    invoke-virtual {v13, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 1783
    add-int/lit8 v12, v12, 0x1

    .line 1785
    goto :goto_15

    .line 1786
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1789
    add-int/lit8 v8, v8, 0x1

    .line 1791
    goto :goto_14

    .line 1792
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1795
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1798
    :cond_27
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 1800
    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1803
    move-result v8

    .line 1804
    if-lez v8, :cond_29

    .line 1806
    const-string v8, "Expiration history: "

    .line 1808
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1811
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1814
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 1816
    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1819
    move-result-object v8

    .line 1820
    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    .line 1822
    array-length v9, v8

    .line 1823
    move v10, v7

    .line 1824
    :goto_16
    if-ge v10, v9, :cond_28

    .line 1826
    aget-object v12, v8, v10

    .line 1828
    invoke-virtual {v12, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 1831
    add-int/lit8 v10, v10, 0x1

    .line 1833
    goto :goto_16

    .line 1834
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1837
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1840
    :cond_29
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 1842
    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1845
    move-result v8

    .line 1846
    if-lez v8, :cond_2c

    .line 1848
    const-string v8, "Invalid Expiration history: ["

    .line 1850
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1853
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 1855
    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1858
    move-result-object v8

    .line 1859
    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    .line 1861
    move v9, v7

    .line 1862
    :goto_17
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    .line 1864
    invoke-virtual {v10}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1867
    move-result v10

    .line 1868
    if-ge v9, v10, :cond_2b

    .line 1870
    aget-object v10, v8, v9

    .line 1872
    if-lez v9, :cond_2a

    .line 1874
    const-string v12, ", "

    .line 1876
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1879
    :cond_2a
    iget-wide v12, v10, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    .line 1881
    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 1884
    add-int/lit8 v9, v9, 0x1

    .line 1886
    goto :goto_17

    .line 1887
    :cond_2b
    const-string v8, "]"

    .line 1889
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1895
    :cond_2c
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    .line 1897
    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1900
    move-result v8

    .line 1901
    if-lez v8, :cond_2e

    .line 1903
    const-string v8, "Wakeup Alarm history(screen off): "

    .line 1905
    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1911
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    .line 1913
    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1916
    move-result-object v8

    .line 1917
    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;

    .line 1919
    array-length v9, v8

    .line 1920
    move v10, v7

    .line 1921
    :goto_18
    if-ge v10, v9, :cond_2d

    .line 1923
    aget-object v12, v8, v10

    .line 1925
    invoke-virtual {v12, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 1928
    add-int/lit8 v10, v10, 0x1

    .line 1930
    goto :goto_18

    .line 1931
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1934
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1937
    :cond_2e
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 1939
    const-string v8, "Recent problems:"

    .line 1941
    invoke-virtual {v3, v2, v8}, Lcom/android/internal/util/LocalLog;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    .line 1944
    move-result v3

    .line 1945
    if-eqz v3, :cond_2f

    .line 1947
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1950
    :cond_2f
    const/16 v3, 0xa

    .line 1952
    new-array v8, v3, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 1954
    new-instance v9, Lcom/android/server/alarm/AlarmManagerService$5;

    .line 1956
    const/4 v10, 0x0

    .line 1957
    invoke-direct {v9, v1, v10}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 1960
    move v10, v7

    .line 1961
    move v12, v10

    .line 1962
    :goto_19
    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1964
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 1967
    move-result v13

    .line 1968
    if-ge v10, v13, :cond_37

    .line 1970
    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1972
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1975
    move-result-object v13

    .line 1976
    check-cast v13, Landroid/util/ArrayMap;

    .line 1978
    move v14, v7

    .line 1979
    :goto_1a
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 1982
    move-result v15

    .line 1983
    if-ge v14, v15, :cond_36

    .line 1985
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1988
    move-result-object v15

    .line 1989
    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 1991
    move v3, v7

    .line 1992
    :goto_1b
    iget-object v11, v15, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 1994
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 1997
    move-result v11

    .line 1998
    if-ge v3, v11, :cond_35

    .line 2000
    iget-object v11, v15, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 2002
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 2005
    move-result-object v11

    .line 2006
    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 2008
    if-lez v12, :cond_30

    .line 2010
    invoke-static {v8, v7, v12, v11, v9}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    .line 2013
    move-result v18

    .line 2014
    move/from16 v7, v18

    .line 2016
    :cond_30
    if-gez v7, :cond_31

    .line 2018
    neg-int v7, v7

    .line 2019
    const/16 v17, 0x1

    .line 2021
    add-int/lit8 v7, v7, -0x1

    .line 2023
    :goto_1c
    move-object/from16 v19, v13

    .line 2025
    const/16 v13, 0xa

    .line 2027
    goto :goto_1d

    .line 2028
    :cond_31
    const/16 v17, 0x1

    .line 2030
    goto :goto_1c

    .line 2031
    :goto_1d
    if-ge v7, v13, :cond_33

    .line 2033
    rsub-int/lit8 v13, v7, 0x9

    .line 2035
    if-lez v13, :cond_32

    .line 2037
    move-object/from16 v20, v15

    .line 2039
    add-int/lit8 v15, v7, 0x1

    .line 2041
    invoke-static {v8, v7, v8, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2044
    goto :goto_1e

    .line 2045
    :cond_32
    move-object/from16 v20, v15

    .line 2047
    :goto_1e
    aput-object v11, v8, v7

    .line 2049
    const/16 v7, 0xa

    .line 2051
    if-ge v12, v7, :cond_34

    .line 2053
    add-int/lit8 v12, v12, 0x1

    .line 2055
    goto :goto_1f

    .line 2056
    :cond_33
    move v7, v13

    .line 2057
    move-object/from16 v20, v15

    .line 2059
    :cond_34
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    .line 2061
    move-object/from16 v13, v19

    .line 2063
    move-object/from16 v15, v20

    .line 2065
    const/4 v7, 0x0

    .line 2066
    goto :goto_1b

    .line 2067
    :cond_35
    move-object/from16 v19, v13

    .line 2069
    const/16 v7, 0xa

    .line 2071
    const/16 v17, 0x1

    .line 2073
    add-int/lit8 v14, v14, 0x1

    .line 2075
    move v3, v7

    .line 2076
    move/from16 v11, v17

    .line 2078
    const/4 v7, 0x0

    .line 2079
    goto :goto_1a

    .line 2080
    :cond_36
    move v7, v3

    .line 2081
    move/from16 v17, v11

    .line 2083
    add-int/lit8 v10, v10, 0x1

    .line 2085
    const/4 v7, 0x0

    .line 2086
    goto :goto_19

    .line 2087
    :cond_37
    if-lez v12, :cond_3a

    .line 2089
    const-string v3, "Top Alarms:"

    .line 2091
    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2097
    const/4 v3, 0x0

    .line 2098
    :goto_20
    if-ge v3, v12, :cond_39

    .line 2100
    aget-object v7, v8, v3

    .line 2102
    iget v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 2104
    if-lez v10, :cond_38

    .line 2106
    const-string v10, "*ACTIVE* "

    .line 2108
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2111
    :cond_38
    iget-wide v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 2113
    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2116
    const-string v10, " running, "

    .line 2118
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2121
    iget v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2123
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2126
    const-string v10, " wakeups, "

    .line 2128
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2131
    iget v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    .line 2133
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2136
    const-string v10, " alarms: "

    .line 2138
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2141
    iget-object v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 2143
    iget v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    .line 2145
    invoke-static {v2, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2148
    const-string v10, ":"

    .line 2150
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2153
    iget-object v10, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 2155
    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    .line 2157
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2160
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2163
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2166
    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    .line 2168
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2174
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2177
    add-int/lit8 v3, v3, 0x1

    .line 2179
    goto :goto_20

    .line 2180
    :cond_39
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2183
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2186
    const-string v3, "Alarm Stats:"

    .line 2188
    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    new-instance v3, Ljava/util/ArrayList;

    .line 2193
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2196
    const/4 v7, 0x0

    .line 2197
    :goto_21
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 2199
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 2202
    move-result v8

    .line 2203
    if-ge v7, v8, :cond_40

    .line 2205
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 2207
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 2210
    move-result-object v8

    .line 2211
    check-cast v8, Landroid/util/ArrayMap;

    .line 2213
    const/4 v10, 0x0

    .line 2214
    :goto_22
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 2217
    move-result v11

    .line 2218
    if-ge v10, v11, :cond_3f

    .line 2220
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 2223
    move-result-object v11

    .line 2224
    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 2226
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2228
    if-lez v12, :cond_3b

    .line 2230
    const-string v12, "*ACTIVE* "

    .line 2232
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2235
    :cond_3b
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    .line 2237
    invoke-static {v2, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2240
    const-string v12, ":"

    .line 2242
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2245
    iget-object v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    .line 2247
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2250
    const-string v12, " "

    .line 2252
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2255
    iget-wide v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 2257
    invoke-static {v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2260
    const-string v12, " running, "

    .line 2262
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2265
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2267
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2270
    const-string v12, " wakeups:"

    .line 2272
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2278
    const/4 v12, 0x0

    .line 2279
    :goto_23
    iget-object v13, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 2281
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 2284
    move-result v13

    .line 2285
    if-ge v12, v13, :cond_3c

    .line 2287
    iget-object v13, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 2289
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 2292
    move-result-object v13

    .line 2293
    check-cast v13, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 2295
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2298
    add-int/lit8 v12, v12, 0x1

    .line 2300
    goto :goto_23

    .line 2301
    :cond_3c
    invoke-static {v3, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2304
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2307
    const/4 v11, 0x0

    .line 2308
    :goto_24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2311
    move-result v12

    .line 2312
    if-ge v11, v12, :cond_3e

    .line 2314
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2317
    move-result-object v12

    .line 2318
    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 2320
    iget v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 2322
    if-lez v13, :cond_3d

    .line 2324
    const-string v13, "*ACTIVE* "

    .line 2326
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2329
    :cond_3d
    iget-wide v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 2331
    invoke-static {v13, v14, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2334
    const-string v13, " "

    .line 2336
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2339
    iget v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2341
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2344
    const-string v13, " wakes "

    .line 2346
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    iget v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    .line 2351
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2354
    const-string v13, " alarms, last "

    .line 2356
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2359
    iget-wide v13, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    .line 2361
    invoke-static {v13, v14, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2364
    const-string v13, ":"

    .line 2366
    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2372
    iget-object v12, v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    .line 2374
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2377
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2380
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2383
    add-int/lit8 v11, v11, 0x1

    .line 2385
    goto :goto_24

    .line 2386
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2389
    add-int/lit8 v10, v10, 0x1

    .line 2391
    goto/16 :goto_22

    .line 2393
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    .line 2395
    goto/16 :goto_21

    .line 2397
    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2400
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 2402
    invoke-virtual {v3, v2}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2405
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    .line 2407
    if-eqz v3, :cond_41

    .line 2409
    invoke-virtual {v3, v2}, Lcom/android/server/alarm/GmsAlarmManager;->doDump(Ljava/io/PrintWriter;)V

    .line 2412
    :cond_41
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    .line 2414
    if-eqz v1, :cond_42

    .line 2416
    invoke-virtual {v1, v2}, Lcom/android/server/alarm/AppSyncWrapper;->dump(Ljava/io/PrintWriter;)V

    .line 2419
    goto :goto_25

    .line 2420
    :cond_42
    const-string v1, "<AppSync Disabled>"

    .line 2422
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2425
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2428
    :goto_25
    monitor-exit v4

    .line 2429
    return-void

    .line 2430
    :goto_26
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2431
    throw v1
.end method

.method public final finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 3
    iget-wide v0, v0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    throw v0
.end method

.method public getQuotaForBucketLocked(I)I
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 3
    if-gt p1, v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v0, 0x14

    .line 9
    if-gt p1, v0, :cond_1

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/16 v0, 0x1e

    .line 15
    if-gt p1, v0, :cond_2

    .line 17
    const/4 p1, 0x2

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/16 v0, 0x32

    .line 21
    if-ge p1, v0, :cond_3

    .line 23
    const/4 p1, 0x3

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    const/4 p1, 0x4

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 28
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 30
    aget p0, p0, p1

    .line 32
    return p0
.end method

.method public final getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 27
    if-nez p0, :cond_1

    .line 29
    new-instance p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 34
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_1
    return-object p0
.end method

.method public final hasScheduleExactAlarmInternal(ILjava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 9
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v2, :cond_0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    move-result v2

    .line 30
    invoke-static {v2, p2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(ILjava/lang/String;)Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    move-result v2

    .line 41
    const-wide/32 v5, 0xd7f327a

    .line 44
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 47
    move-result-object v2

    .line 48
    invoke-static {v5, v6, p2, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v2

    .line 58
    const-string v5, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 60
    const/4 v6, -0x1

    .line 61
    invoke-static {v2, v5, v6, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_4

    .line 67
    :cond_2
    :goto_0
    move v4, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 71
    const/16 v5, 0x6b

    .line 73
    invoke-virtual {v2, v5, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 76
    move-result p1

    .line 77
    const/4 p2, 0x3

    .line 78
    if-eq p1, p2, :cond_2

    .line 80
    if-nez p1, :cond_4

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 85
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 88
    return v4
.end method

.method public final hasUseExactAlarmInternal(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result v0

    .line 5
    const-wide/32 v1, 0xd068d35

    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v1, v2, p2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p0

    .line 22
    const-string v0, "android.permission.USE_EXACT_ALARM"

    .line 24
    const/4 v1, -0x1

    .line 25
    invoke-static {p0, v0, v1, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public final interactiveStateChangedLocked(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 3
    if-eq v0, p1, :cond_4

    .line 5
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 7
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v0

    .line 16
    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result p1

    .line 24
    if-lez p1, :cond_1

    .line 26
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 28
    sub-long v2, v0, v2

    .line 30
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 32
    add-long/2addr v4, v2

    .line 33
    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 35
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 37
    cmp-long p1, v4, v2

    .line 39
    if-gez p1, :cond_0

    .line 41
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 43
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 47
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(JLjava/util/ArrayList;)V

    .line 53
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 58
    :cond_1
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 60
    const-wide/16 v4, 0x0

    .line 62
    cmp-long p1, v2, v4

    .line 64
    if-lez p1, :cond_2

    .line 66
    sub-long/2addr v0, v2

    .line 67
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 69
    cmp-long p1, v0, v2

    .line 71
    if-lez p1, :cond_2

    .line 73
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 77
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 89
    :cond_4
    :goto_0
    return-void
.end method

.method public final isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    return v1

    .line 18
    :cond_1
    iget v0, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 26
    return v1

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 29
    if-eqz p0, :cond_3

    .line 31
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_3

    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_3
    return v1
.end method

.method public final isExemptFromExactAlarmPermissionNoLock(I)Z
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const-string v0, "AlarmManager"

    .line 15
    const-string v1, "Alarm lock held while calling into DeviceIdleController"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 22
    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 28
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 34
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 36
    if-eqz p0, :cond_2

    .line 38
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 41
    move-result p1

    .line 42
    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->isAppOnWhitelist(I)Z

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 52
    :goto_1
    return p0
.end method

.method public final lookForPackageLocked(ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    iget-object v0, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 33
    iget-object v3, v1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 35
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 41
    iget v1, v1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 43
    if-ne v1, p1, :cond_0

    .line 45
    return v2

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 54
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v0

    .line 60
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 72
    iget-object v1, v1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 74
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 80
    return v2

    .line 81
    :cond_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object p0

    .line 87
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 93
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/android/server/alarm/Alarm;

    .line 99
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 101
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 107
    iget v0, v0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 109
    if-ne v0, p1, :cond_4

    .line 111
    return v2

    .line 112
    :cond_5
    const/4 p0, 0x0

    .line 113
    return p0
.end method

.method public final onBootPhase(I)V
    .locals 5

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 10
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 12
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 20
    move-result-object v1

    .line 21
    const-string v2, "alarm_manager"

    .line 23
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v3, v1, [Ljava/lang/String;

    .line 29
    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService$Constants;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    const-string v2, "appops"

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/app/AppOpsManager;

    .line 48
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 50
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 52
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    .line 58
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 60
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    .line 62
    if-eqz v0, :cond_0

    .line 64
    iget-boolean v2, v0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 66
    if-eqz v2, :cond_0

    .line 68
    iget v2, v0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 70
    const/4 v3, -0x1

    .line 71
    if-eq v2, v3, :cond_0

    .line 73
    new-instance v2, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    .line 75
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 77
    invoke-direct {v2, v0, v3}, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Handler;)V

    .line 80
    iput-object v2, v0, Lcom/android/server/alarm/GmsAlarmManager;->mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    .line 82
    iget-object v2, v0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    move-result-object v2

    .line 88
    sget-object v3, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 90
    iget-object v4, v0, Lcom/android/server/alarm/GmsAlarmManager;->mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    .line 92
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    invoke-virtual {v0}, Lcom/android/server/alarm/GmsAlarmManager;->getSettingsValueFromDB()V

    .line 98
    :cond_0
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 100
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 106
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 108
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 110
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/android/server/AppStateTrackerImpl;

    .line 116
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 118
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/alarm/AlarmManagerService$7;

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v0

    .line 127
    const-class v1, Landroid/os/BatteryManager;

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/os/BatteryManager;

    .line 135
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    .line 138
    move-result v0

    .line 139
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 141
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 143
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 146
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 148
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 151
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    const-string p1, "appops"

    .line 159
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 166
    move-result-object p1

    .line 167
    const/4 v0, 0x0

    .line 168
    :try_start_1
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$3;

    .line 170
    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 173
    const/16 v2, 0x6b

    .line 175
    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :catch_0
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 180
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 186
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 188
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    .line 191
    const-class p1, Lcom/android/server/usage/AppStandbyInternal;

    .line 193
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Lcom/android/server/usage/AppStandbyInternal;

    .line 199
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;

    .line 201
    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 204
    invoke-interface {p1, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 207
    const-class p1, Landroid/os/BatteryStatsInternal;

    .line 209
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Landroid/os/BatteryStatsInternal;

    .line 215
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 217
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 220
    move-result-object p1

    .line 221
    const-class v1, Landroid/app/role/RoleManager;

    .line 223
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Landroid/app/role/RoleManager;

    .line 229
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    .line 231
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;

    .line 233
    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 236
    iget-object p0, p1, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    .line 238
    const-class v2, Landroid/app/StatsManager;

    .line 240
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 243
    move-result-object p0

    .line 244
    check-cast p0, Landroid/app/StatsManager;

    .line 246
    sget-object v2, Lcom/android/internal/util/jobs/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 248
    new-instance v3, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;

    .line 250
    invoke-direct {v3, p1, v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/MetricsHelper;Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;)V

    .line 253
    const/16 p1, 0x277a

    .line 255
    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 258
    goto :goto_0

    .line 259
    :catchall_0
    move-exception p0

    .line 260
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    throw p0

    .line 262
    :cond_1
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v1, "alarm_jni"

    .line 8
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->init()J

    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    .line 17
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 22
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 24
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 55
    new-instance v0, Lcom/android/server/alarm/MetricsHelper;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 63
    invoke-direct {v0, v2, v3}, Lcom/android/server/alarm/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 66
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    .line 68
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 70
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 76
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 78
    invoke-static {}, Lcom/android/server/alarm/Flags;->useFrozenStateToDropListenerAlarms()Z

    .line 81
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUseFrozenStateToDropListenerAlarms:Z

    .line 84
    invoke-static {}, Lcom/android/server/alarm/Flags;->startUserBeforeScheduledAlarms()Z

    .line 87
    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mUseFrozenStateToDropListenerAlarms:Z

    .line 89
    if-eqz v2, :cond_0

    .line 91
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;

    .line 93
    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v3

    .line 100
    const-class v4, Landroid/app/ActivityManager;

    .line 102
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Landroid/app/ActivityManager;

    .line 108
    new-instance v4, Landroid/os/HandlerExecutor;

    .line 110
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 112
    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 115
    invoke-virtual {v3, v4, v2}, Landroid/app/ActivityManager;->registerUidFrozenStateChangedCallback(Ljava/util/concurrent/Executor;Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V

    .line 118
    :cond_0
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$1;

    .line 120
    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 123
    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

    .line 125
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 127
    monitor-enter v2

    .line 128
    :try_start_0
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 130
    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 133
    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 135
    new-instance v3, Lcom/android/server/alarm/LazyAlarmStore;

    .line 137
    invoke-direct {v3}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    .line 140
    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 142
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    .line 144
    iput-object v4, v3, Lcom/android/server/alarm/LazyAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    .line 146
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 148
    invoke-direct {v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>()V

    .line 151
    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 153
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 155
    invoke-direct {v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>()V

    .line 158
    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 160
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 162
    invoke-direct {v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>()V

    .line 165
    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 167
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 169
    invoke-direct {v3}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;-><init>()V

    .line 172
    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 174
    const-wide/16 v3, 0x0

    .line 176
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 178
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 180
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 182
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService$Injector;->initializeTimeIfRequired()V

    .line 188
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 190
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 193
    move-result-object v5

    .line 194
    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 196
    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 198
    sput-object v5, Lcom/android/server/alarm/AlarmManagerService;->pmInternalForMARs:Landroid/content/pm/PackageManagerInternal;

    .line 200
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 202
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    invoke-virtual {v5}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 212
    move-result-object v6

    .line 213
    const-wide/32 v7, 0x100000

    .line 216
    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 219
    move-result v5

    .line 220
    iput v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 222
    if-gtz v5, :cond_1

    .line 224
    const-string v5, "AlarmManager"

    .line 226
    const-string v6, "SysUI package not found!"

    .line 228
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    goto :goto_0

    .line 232
    :catchall_0
    move-exception p0

    .line 233
    goto/16 :goto_2

    .line 235
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 237
    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    .line 239
    const-string/jumbo v6, "power"

    .line 242
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    move-result-object v5

    .line 246
    check-cast v5, Landroid/os/PowerManager;

    .line 248
    const-string v6, "*alarm*"

    .line 250
    invoke-virtual {v5, v0, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 253
    move-result-object v5

    .line 254
    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 256
    new-instance v5, Landroid/content/Intent;

    .line 258
    const-string v6, "android.intent.action.TIME_TICK"

    .line 260
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    const/high16 v6, 0x50200000

    .line 265
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    move-result-object v5

    .line 269
    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 271
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 278
    move-result-object v0

    .line 279
    const/4 v5, 0x2

    .line 280
    invoke-virtual {v0, v5}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 287
    move-result-object v0

    .line 288
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    .line 290
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$2;

    .line 292
    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 295
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

    .line 297
    new-instance v0, Landroid/content/Intent;

    .line 299
    const-string v5, "android.intent.action.DATE_CHANGED"

    .line 301
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    const/high16 v5, 0x20200000

    .line 306
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 312
    move-result-object v5

    .line 313
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 315
    const/high16 v7, 0x4000000

    .line 317
    invoke-static {v5, v1, v0, v7, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 320
    move-result-object v0

    .line 321
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 323
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 330
    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 333
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 335
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;

    .line 337
    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 340
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    .line 342
    const/4 v1, 0x1

    .line 343
    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 346
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    .line 348
    const/4 v1, 0x0

    .line 349
    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 352
    const-string/jumbo v0, "ro.csc.country_code"

    .line 355
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    move-result-object v0

    .line 359
    const-string v1, "CHINA"

    .line 361
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 364
    move-result v1

    .line 365
    if-nez v1, :cond_2

    .line 367
    const-string v1, "HONG KONG"

    .line 369
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_3

    .line 375
    :cond_2
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager;

    .line 377
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 380
    move-result-object v1

    .line 381
    invoke-direct {v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;-><init>(Landroid/content/Context;)V

    .line 384
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    .line 386
    invoke-virtual {v0, p0}, Lcom/android/server/alarm/GmsAlarmManager;->init(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 391
    iget-wide v0, v0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    .line 393
    cmp-long v0, v0, v3

    .line 395
    if-eqz v0, :cond_4

    .line 397
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;

    .line 399
    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 402
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 405
    goto :goto_1

    .line 406
    :cond_4
    const-string v0, "AlarmManager"

    .line 408
    const-string v1, "Failed to open alarm driver. Falling back to a handler."

    .line 410
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    const-class v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 416
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 418
    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$LocalService;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 421
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 424
    const-string v0, "alarm"

    .line 426
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Lcom/android/server/alarm/AlarmManagerService$4;

    .line 428
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 431
    return-void

    .line 432
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 10
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;

    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
.end method

.method public final reevaluateRtcAlarms()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 6
    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_1

    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 26
    iget v6, v5, Lcom/android/server/alarm/Alarm;->type:I

    .line 28
    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_0

    .line 34
    move v5, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-wide v6, v5, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 38
    iget v8, v5, Lcom/android/server/alarm/Alarm;->type:I

    .line 40
    invoke-virtual {p0, v8, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(IJ)J

    .line 43
    move-result-wide v6

    .line 44
    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 47
    move-result v5

    .line 48
    :goto_1
    or-int/2addr v4, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-eqz v4, :cond_2

    .line 52
    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 54
    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 56
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    :cond_2
    if-eqz v4, :cond_7

    .line 61
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 63
    if-eqz v1, :cond_7

    .line 65
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 67
    if-eqz v1, :cond_7

    .line 69
    iget v1, v1, Lcom/android/server/alarm/Alarm;->type:I

    .line 71
    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_7

    .line 77
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 79
    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v2

    .line 85
    move v5, v3

    .line 86
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_4

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 98
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 100
    if-ne v6, v7, :cond_3

    .line 102
    invoke-virtual {p0, v6}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 108
    const/4 v6, 0x1

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    move v6, v3

    .line 111
    :goto_3
    or-int/2addr v5, v6

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    if-eqz v5, :cond_5

    .line 115
    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 117
    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 119
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    :cond_5
    if-eqz v5, :cond_7

    .line 124
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 126
    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object v2

    .line 132
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_6

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 144
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 147
    move-result v5

    .line 148
    or-int/2addr v3, v5

    .line 149
    goto :goto_4

    .line 150
    :cond_6
    if-eqz v3, :cond_7

    .line 152
    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 154
    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 156
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 159
    goto :goto_5

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto :goto_6

    .line 162
    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    .line 164
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 167
    :cond_8
    monitor-exit v0

    .line 168
    return-void

    .line 169
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    throw p0
.end method

.method public final refreshExactAlarmCandidates()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 3
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 5
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 7
    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 9
    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/util/ArraySet;

    .line 15
    array-length v2, v0

    .line 16
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 19
    array-length v2, v0

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    :goto_0
    if-ge v4, v2, :cond_1

    .line 24
    aget-object v5, v0, v4

    .line 26
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 28
    const-wide/32 v7, 0x400000

    .line 31
    invoke-virtual {v6, v5, v7, v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 34
    move-result v5

    .line 35
    if-lez v5, :cond_0

    .line 37
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 57
    return-void
.end method

.method public final removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v10

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v12

    .line 18
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 20
    invoke-virtual {v2, v1}, Lcom/android/server/alarm/LazyAlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    move-result v3

    .line 28
    const/4 v14, 0x1

    .line 29
    xor-int/lit8 v15, v3, 0x1

    .line 31
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 36
    move-result v3

    .line 37
    sub-int/2addr v3, v14

    .line 38
    :goto_0
    if-ltz v3, :cond_3

    .line 40
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v5

    .line 52
    sub-int/2addr v5, v14

    .line 53
    :goto_1
    if-ltz v5, :cond_1

    .line 55
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 61
    invoke-interface {v1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_0

    .line 67
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 73
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_2

    .line 85
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 90
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 95
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 98
    move-result v3

    .line 99
    sub-int/2addr v3, v14

    .line 100
    :goto_2
    if-ltz v3, :cond_7

    .line 102
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 104
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 113
    move-result v5

    .line 114
    sub-int/2addr v5, v14

    .line 115
    :goto_3
    if-ltz v5, :cond_5

    .line 117
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 123
    invoke-interface {v1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_4

    .line 129
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 135
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 140
    goto :goto_3

    .line 141
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_6

    .line 147
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 149
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 152
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 154
    goto :goto_2

    .line 155
    :cond_7
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 160
    move-result v3

    .line 161
    sub-int/2addr v3, v14

    .line 162
    :goto_4
    if-ltz v3, :cond_9

    .line 164
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 166
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 172
    invoke-interface {v1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_8

    .line 178
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 186
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 191
    goto :goto_4

    .line 192
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    move-result-object v2

    .line 196
    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    move-result v3

    .line 200
    const/4 v4, 0x0

    .line 201
    if-eqz v3, :cond_11

    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    move-result-object v3

    .line 207
    move-object v5, v3

    .line 208
    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 210
    iget-object v3, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 212
    if-eqz v3, :cond_b

    .line 214
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    .line 216
    iget-object v3, v3, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    .line 218
    invoke-virtual {v3, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    :cond_b
    iget v3, v5, Lcom/android/server/alarm/Alarm;->uid:I

    .line 226
    invoke-virtual {v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(I)V

    .line 229
    iget-object v6, v5, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 231
    if-eqz v6, :cond_c

    .line 233
    invoke-interface {v6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 236
    move-result-object v6

    .line 237
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

    .line 239
    invoke-interface {v6, v7, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 242
    :cond_c
    if-eqz p1, :cond_a

    .line 244
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 246
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 249
    move-result-object v4

    .line 250
    check-cast v4, Lcom/android/internal/util/RingBuffer;

    .line 252
    if-nez v4, :cond_10

    .line 254
    const/16 v4, 0x3e8

    .line 256
    const-class v6, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    .line 258
    if-eq v3, v4, :cond_f

    .line 260
    iget-object v4, v5, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 262
    const-string/jumbo v7, "com.sec.android.app.clockpackage"

    .line 265
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_d

    .line 271
    goto :goto_6

    .line 272
    :cond_d
    iget v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 274
    if-ne v3, v4, :cond_e

    .line 276
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    .line 278
    const/16 v7, 0x1e

    .line 280
    invoke-direct {v4, v6, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 283
    goto :goto_7

    .line 284
    :cond_e
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    .line 286
    const/16 v7, 0xa

    .line 288
    invoke-direct {v4, v6, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 291
    goto :goto_7

    .line 292
    :cond_f
    :goto_6
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    .line 294
    const/16 v7, 0x32

    .line 296
    invoke-direct {v4, v6, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 299
    :goto_7
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 301
    invoke-virtual {v6, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    :cond_10
    move-object v8, v4

    .line 305
    new-instance v9, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    .line 307
    move-object v3, v9

    .line 308
    move-object v4, v5

    .line 309
    move/from16 v5, p1

    .line 311
    move-wide v6, v10

    .line 312
    move-object/from16 v16, v2

    .line 314
    move-object v14, v8

    .line 315
    move-object v2, v9

    .line 316
    move-wide v8, v12

    .line 317
    invoke-direct/range {v3 .. v9}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;-><init>(Lcom/android/server/alarm/Alarm;IJJ)V

    .line 320
    invoke-virtual {v14, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 323
    move-object/from16 v2, v16

    .line 325
    const/4 v14, 0x1

    .line 326
    goto/16 :goto_5

    .line 328
    :cond_11
    if-eqz v15, :cond_19

    .line 330
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 332
    if-eqz v2, :cond_12

    .line 334
    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_12

    .line 340
    const/4 v2, 0x0

    .line 341
    iput-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 343
    const/4 v2, 0x1

    .line 344
    goto :goto_8

    .line 345
    :cond_12
    move v2, v4

    .line 346
    :goto_8
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 348
    if-eqz v3, :cond_16

    .line 350
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_16

    .line 356
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 358
    invoke-virtual {v1}, Lcom/android/server/alarm/LazyAlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    .line 361
    move-result-object v1

    .line 362
    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 364
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 366
    if-eqz v1, :cond_16

    .line 368
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 370
    iget-object v3, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 372
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 375
    move-result-object v3

    .line 376
    move v5, v4

    .line 377
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    move-result v6

    .line 381
    if-eqz v6, :cond_14

    .line 383
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    move-result-object v6

    .line 387
    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 389
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 391
    if-ne v6, v7, :cond_13

    .line 393
    invoke-virtual {v0, v6}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    .line 396
    move-result v6

    .line 397
    if-eqz v6, :cond_13

    .line 399
    const/4 v6, 0x1

    .line 400
    goto :goto_a

    .line 401
    :cond_13
    move v6, v4

    .line 402
    :goto_a
    or-int/2addr v5, v6

    .line 403
    goto :goto_9

    .line 404
    :cond_14
    if-eqz v5, :cond_15

    .line 406
    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 408
    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 410
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 413
    :cond_15
    or-int/2addr v2, v5

    .line 414
    :cond_16
    if-eqz v2, :cond_18

    .line 416
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 418
    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 420
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 423
    move-result-object v2

    .line 424
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    move-result v3

    .line 428
    if-eqz v3, :cond_17

    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    move-result-object v3

    .line 434
    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 436
    invoke-virtual {v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 439
    move-result v3

    .line 440
    or-int/2addr v4, v3

    .line 441
    goto :goto_b

    .line 442
    :cond_17
    if-eqz v4, :cond_18

    .line 444
    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 446
    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 448
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 451
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 457
    :cond_19
    return-void
.end method

.method public final removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result v0

    .line 11
    invoke-static {v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(ILjava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    const-string v0, "AlarmManager"

    .line 20
    const-string v1, "Package "

    .line 22
    const-string v2, ", uid "

    .line 24
    const-string v3, " lost permission to set exact alarms!"

    .line 26
    invoke-static {p1, v1, p2, v2, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;

    .line 35
    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;-><init>(ILjava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 40
    monitor-enter p2

    .line 41
    const/4 v1, 0x2

    .line 42
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 45
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    if-eqz p3, :cond_2

    .line 48
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 51
    move-result p0

    .line 52
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 55
    move-result p1

    .line 56
    const-string/jumbo p2, "schedule_exact_alarm revoked"

    .line 59
    sget-object p3, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 64
    move-result-wide v0

    .line 65
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 68
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    if-eqz p3, :cond_1

    .line 71
    :try_start_2
    invoke-interface {p3, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    goto :goto_2

    .line 81
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    throw p0

    .line 85
    :cond_2
    :goto_2
    return-void

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    throw p0

    .line 89
    :cond_3
    :goto_3
    return-void
.end method

.method public final removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    if-nez p2, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;

    .line 8
    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 11
    invoke-virtual {p0, p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 14
    return-void
.end method

.method public final removeUserLocked(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-string p0, "AlarmManager"

    .line 5
    const-string p1, "Ignoring attempt to remove system-user state!"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(II)V

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 21
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 23
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    .line 26
    move-result v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 29
    :goto_0
    if-ltz v0, :cond_2

    .line 31
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 33
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    move-result v1

    .line 41
    if-ne v1, p1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 45
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 48
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 56
    move-result v0

    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 59
    :goto_1
    if-ltz v0, :cond_4

    .line 61
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 70
    move-result v1

    .line 71
    if-ne v1, p1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 78
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 83
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 86
    move-result v0

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 89
    :goto_2
    if-ltz v0, :cond_6

    .line 91
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 93
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 100
    move-result v1

    .line 101
    if-ne v1, p1, :cond_5

    .line 103
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 105
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 108
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    return-void
.end method

.method public final reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 9
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;

    .line 11
    invoke-direct {v4, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V

    .line 14
    invoke-virtual {v3, v4}, Lcom/android/server/alarm/LazyAlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 17
    move-result p0

    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 22
    return p0
.end method

.method public final rescheduleKernelAlarmsLocked()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v1

    .line 12
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 14
    iget-object v3, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v3

    .line 20
    const-wide/16 v4, 0x0

    .line 22
    if-lez v3, :cond_a

    .line 24
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 26
    iget-object v6, v3, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 28
    invoke-virtual {v6}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    .line 31
    move-result-wide v7

    .line 32
    iget-object v9, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v9

    .line 38
    const/4 v10, 0x1

    .line 39
    sub-int/2addr v9, v10

    .line 40
    move-wide v11, v4

    .line 41
    :goto_0
    if-ltz v9, :cond_4

    .line 43
    iget-object v13, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v13

    .line 49
    check-cast v13, Lcom/android/server/alarm/Alarm;

    .line 51
    iget-boolean v14, v13, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 53
    if-nez v14, :cond_0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-static {v13}, Lcom/android/server/alarm/AlarmManagerService;->isMARsRestricted(Lcom/android/server/alarm/Alarm;)Z

    .line 59
    move-result v14

    .line 60
    if-eqz v14, :cond_1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    cmp-long v14, v11, v4

    .line 65
    if-nez v14, :cond_2

    .line 67
    iget-wide v11, v13, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-wide v14, v13, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 72
    cmp-long v14, v14, v11

    .line 74
    if-lez v14, :cond_3

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-wide v13, v13, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 79
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 82
    move-result-wide v11

    .line 83
    :goto_1
    add-int/lit8 v9, v9, -0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_2
    invoke-virtual {v6, v10, v7, v8}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 89
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 91
    iget-object v6, v3, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 93
    invoke-virtual {v6}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    .line 96
    move-result-wide v7

    .line 97
    iget-object v9, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 102
    move-result v9

    .line 103
    const/4 v10, 0x2

    .line 104
    if-nez v9, :cond_5

    .line 106
    move-wide v13, v4

    .line 107
    move-wide v3, v13

    .line 108
    goto :goto_5

    .line 109
    :cond_5
    iget-object v13, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 111
    add-int/lit8 v14, v9, -0x1

    .line 113
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v13

    .line 117
    check-cast v13, Lcom/android/server/alarm/Alarm;

    .line 119
    iget-wide v13, v13, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 121
    sub-int/2addr v9, v10

    .line 122
    :goto_3
    if-ltz v9, :cond_7

    .line 124
    iget-object v15, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v15

    .line 130
    check-cast v15, Lcom/android/server/alarm/Alarm;

    .line 132
    iget-wide v4, v15, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 134
    cmp-long v4, v4, v13

    .line 136
    if-lez v4, :cond_6

    .line 138
    goto :goto_4

    .line 139
    :cond_6
    iget-wide v4, v15, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 141
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 144
    move-result-wide v13

    .line 145
    add-int/lit8 v9, v9, -0x1

    .line 147
    const-wide/16 v4, 0x0

    .line 149
    goto :goto_3

    .line 150
    :cond_7
    :goto_4
    const/4 v3, 0x0

    .line 151
    invoke-virtual {v6, v3, v7, v8}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 154
    const-wide/16 v3, 0x0

    .line 156
    :goto_5
    cmp-long v5, v11, v3

    .line 158
    if-eqz v5, :cond_8

    .line 160
    iput-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 162
    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 164
    invoke-virtual {v0, v10, v11, v12}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    .line 167
    :cond_8
    cmp-long v3, v13, v11

    .line 169
    if-eqz v3, :cond_9

    .line 171
    goto :goto_7

    .line 172
    :cond_9
    :goto_6
    const-wide/16 v13, 0x0

    .line 174
    goto :goto_7

    .line 175
    :cond_a
    const-wide/16 v11, 0x0

    .line 177
    goto :goto_6

    .line 178
    :goto_7
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 183
    move-result v3

    .line 184
    if-lez v3, :cond_c

    .line 186
    const-wide/16 v3, 0x0

    .line 188
    cmp-long v5, v13, v3

    .line 190
    if-eqz v5, :cond_b

    .line 192
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 194
    cmp-long v3, v3, v13

    .line 196
    if-gez v3, :cond_c

    .line 198
    :cond_b
    iget-wide v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 200
    :cond_c
    const-wide/16 v3, 0x0

    .line 202
    cmp-long v5, v13, v3

    .line 204
    if-eqz v5, :cond_d

    .line 206
    iput-wide v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 208
    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 210
    const/4 v1, 0x3

    .line 211
    invoke-virtual {v0, v1, v13, v14}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    .line 214
    :cond_d
    cmp-long v1, v11, v3

    .line 216
    if-eqz v1, :cond_e

    .line 218
    iput-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelWakeup:J

    .line 220
    :cond_e
    if-eqz v5, :cond_f

    .line 222
    iput-wide v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelNonWakeup:J

    .line 224
    :cond_f
    return-void
.end method

.method public final sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    if-eqz p2, :cond_4

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v2

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 31
    :goto_0
    if-ltz v2, :cond_2

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 39
    iget-object v3, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 41
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 53
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_3

    .line 65
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 70
    :cond_3
    move-object v0, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 77
    :goto_1
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    move-result-wide p1

    .line 86
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(JLjava/util/ArrayList;)V

    .line 89
    :cond_5
    :goto_2
    return-void
.end method

.method public final setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v2, p1

    .line 5
    move-wide/from16 v3, p2

    .line 7
    move-wide/from16 v5, p4

    .line 9
    move-wide/from16 v7, p6

    .line 11
    move/from16 v9, p14

    .line 13
    move-object/from16 v15, p15

    .line 15
    const-string v1, "Maximum limit of concurrent alarms "

    .line 17
    if-nez p8, :cond_0

    .line 19
    if-eqz p9, :cond_1

    .line 21
    :cond_0
    if-eqz p8, :cond_2

    .line 23
    if-eqz p9, :cond_2

    .line 25
    :cond_1
    const-string v0, "AlarmManager"

    .line 27
    const-string v1, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 33
    :cond_2
    const/4 v10, 0x0

    .line 34
    if-eqz p9, :cond_3

    .line 36
    :try_start_0
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 39
    move-result-object v11

    .line 40
    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

    .line 42
    invoke-interface {v11, v12, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_3
    move-object/from16 v14, p10

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    const-string v0, "AlarmManager"

    .line 50
    const-string v1, "Dropping unreachable alarm listener "

    .line 52
    move-object/from16 v14, p10

    .line 54
    invoke-static {v1, v14, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 58
    :goto_0
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 60
    iget-wide v12, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 62
    const-wide/16 v16, 0x0

    .line 64
    cmp-long v18, v7, v16

    .line 66
    if-lez v18, :cond_4

    .line 68
    cmp-long v18, v7, v12

    .line 70
    if-gez v18, :cond_4

    .line 72
    const-string v11, "AlarmManager"

    .line 74
    const-string v10, "Suspiciously short interval "

    .line 76
    const-string v14, " millis; expanding to "

    .line 78
    invoke-static {v10, v7, v8, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    move-result-object v7

    .line 82
    const-wide/16 v19, 0x3e8

    .line 84
    div-long v14, v12, v19

    .line 86
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    const-string v8, " seconds"

    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v7

    .line 98
    invoke-static {v11, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    iget-wide v10, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 104
    cmp-long v10, v7, v10

    .line 106
    if-lez v10, :cond_5

    .line 108
    const-string v10, "AlarmManager"

    .line 110
    new-instance v11, Ljava/lang/StringBuilder;

    .line 112
    const-string v12, "Suspiciously long interval "

    .line 114
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    const-string v7, " millis; clamping"

    .line 122
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v7

    .line 129
    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 134
    iget-wide v7, v7, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 136
    :cond_5
    move-wide v12, v7

    .line 137
    :goto_1
    if-ltz v2, :cond_f

    .line 139
    const/4 v7, 0x3

    .line 140
    if-gt v2, v7, :cond_f

    .line 142
    cmp-long v7, v3, v16

    .line 144
    if-gez v7, :cond_6

    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 149
    move-result v7

    .line 150
    int-to-long v7, v7

    .line 151
    const-string v10, "AlarmManager"

    .line 153
    const-string v11, "Invalid alarm trigger time! "

    .line 155
    const-string v14, " from uid="

    .line 157
    invoke-static {v9, v11, v3, v4, v14}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    move-result-object v3

    .line 161
    const-string v4, " pid="

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v3

    .line 173
    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move-wide/from16 v7, v16

    .line 178
    goto :goto_2

    .line 179
    :cond_6
    move-wide v7, v3

    .line 180
    :goto_2
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 182
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 188
    move-result-wide v3

    .line 189
    invoke-virtual {v0, v2, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(IJ)J

    .line 192
    move-result-wide v10

    .line 193
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->isCore(I)Z

    .line 196
    move-result v14

    .line 197
    if-eqz v14, :cond_7

    .line 199
    move-wide/from16 v14, v16

    .line 201
    goto :goto_3

    .line 202
    :cond_7
    iget-object v14, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 204
    iget-wide v14, v14, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 206
    :goto_3
    add-long/2addr v14, v3

    .line 207
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 210
    move-result-wide v10

    .line 211
    cmp-long v14, v5, v16

    .line 213
    if-nez v14, :cond_8

    .line 215
    move-wide/from16 p6, v12

    .line 217
    move-object/from16 v12, p15

    .line 219
    move-wide v13, v5

    .line 220
    goto/16 :goto_6

    .line 222
    :cond_8
    if-gez v14, :cond_9

    .line 224
    move-wide/from16 p2, v3

    .line 226
    move-wide/from16 p4, v10

    .line 228
    move-wide/from16 p6, v12

    .line 230
    invoke-static/range {p2 .. p7}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    .line 233
    move-result-wide v3

    .line 234
    sub-long/2addr v3, v10

    .line 235
    :goto_4
    move-object/from16 v12, p15

    .line 237
    :goto_5
    move-wide v13, v3

    .line 238
    goto/16 :goto_6

    .line 240
    :cond_9
    sub-long v3, v10, v3

    .line 242
    long-to-double v3, v3

    .line 243
    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    .line 245
    mul-double/2addr v3, v14

    .line 246
    double-to-long v3, v3

    .line 247
    iget-object v14, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 249
    iget-wide v14, v14, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    .line 251
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 254
    move-result-wide v3

    .line 255
    const-wide/32 v14, 0x5265c00

    .line 258
    cmp-long v16, v5, v14

    .line 260
    if-lez v16, :cond_a

    .line 262
    const-string v3, "AlarmManager"

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    const-string v14, "Window length "

    .line 268
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v5, "ms too long; limiting to 1 day"

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v4

    .line 284
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-wide/from16 p6, v12

    .line 289
    const-wide/32 v3, 0x5265c00

    .line 292
    goto :goto_4

    .line 293
    :cond_a
    and-int/lit8 v14, p11, 0x40

    .line 295
    if-nez v14, :cond_b

    .line 297
    cmp-long v14, v5, v3

    .line 299
    if-gez v14, :cond_b

    .line 301
    invoke-virtual {v0, v9}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    .line 304
    move-result v14

    .line 305
    if-nez v14, :cond_b

    .line 307
    const-wide/32 v14, 0xb09e9e4

    .line 310
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 313
    move-result-object v2

    .line 314
    move-wide/from16 p6, v12

    .line 316
    move-object/from16 v12, p15

    .line 318
    invoke-static {v14, v15, v12, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_c

    .line 324
    const-string v2, "AlarmManager"

    .line 326
    const-string v13, "Window length "

    .line 328
    const-string/jumbo v14, "ms too short; expanding to "

    .line 331
    invoke-static {v13, v5, v6, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 338
    const-string/jumbo v6, "ms."

    .line 341
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v5

    .line 348
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    goto :goto_5

    .line 352
    :cond_b
    move-wide/from16 p6, v12

    .line 354
    move-object/from16 v12, p15

    .line 356
    :cond_c
    move-wide v3, v5

    .line 357
    goto :goto_5

    .line 358
    :goto_6
    iget-object v15, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 360
    monitor-enter v15

    .line 361
    :try_start_1
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 363
    const/4 v3, 0x0

    .line 364
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 367
    move-result v2

    .line 368
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 370
    iget v3, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 372
    if-lt v2, v3, :cond_e

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 376
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 381
    iget v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, " reached for uid: "

    .line 388
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v1, ", callingPackage: "

    .line 400
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    move-result-object v1

    .line 410
    const-string v2, "AlarmManager"

    .line 412
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v2, 0x3e8

    .line 417
    if-ne v9, v2, :cond_d

    .line 419
    const-string v2, "234441463"

    .line 421
    const/4 v3, -0x1

    .line 422
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    move-result-object v3

    .line 426
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 429
    move-result-object v1

    .line 430
    const v2, 0x534e4554

    .line 433
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 436
    goto :goto_7

    .line 437
    :catchall_0
    move-exception v0

    .line 438
    move-object/from16 v21, v15

    .line 440
    goto :goto_8

    .line 441
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 443
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 446
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :cond_e
    :goto_7
    move-object/from16 v1, p0

    .line 449
    move/from16 v2, p1

    .line 451
    move/from16 v3, p11

    .line 453
    move/from16 v4, p14

    .line 455
    move/from16 v5, p17

    .line 457
    move-wide v6, v7

    .line 458
    move-wide v8, v10

    .line 459
    move-wide v10, v13

    .line 460
    move-wide/from16 v12, p6

    .line 462
    move-object/from16 v14, p13

    .line 464
    move-object/from16 v21, v15

    .line 466
    move-object/from16 v15, p9

    .line 468
    move-object/from16 v16, p8

    .line 470
    move-object/from16 v17, p16

    .line 472
    move-object/from16 v18, p12

    .line 474
    move-object/from16 v19, p10

    .line 476
    move-object/from16 v20, p15

    .line 478
    :try_start_2
    invoke-virtual/range {v1 .. v20}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    monitor-exit v21

    .line 482
    return-void

    .line 483
    :catchall_1
    move-exception v0

    .line 484
    :goto_8
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 485
    throw v0

    .line 486
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 488
    const-string v1, "Invalid alarm type "

    .line 490
    move/from16 v2, p1

    .line 492
    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 495
    move-result-object v1

    .line 496
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 499
    throw v0
.end method

.method public final setImplLocked(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, p3

    move-wide/from16 v13, p9

    move-object/from16 v11, p15

    .line 1
    const-string v2, "BT="

    const-string v9, "AlarmManager"

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez p13, :cond_8

    if-eq v1, v7, :cond_0

    if-nez v1, :cond_8

    :cond_0
    and-int/lit8 v3, p2, 0x10

    if-nez v3, :cond_8

    .line 2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz v11, :cond_1

    .line 3
    :try_start_0
    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move v12, v1

    goto/16 :goto_6

    :cond_1
    move-object/from16 v5, p19

    :goto_0
    if-eqz v11, :cond_2

    .line 4
    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v15

    :goto_1
    if-eqz v11, :cond_3

    .line 5
    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 6
    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, v16

    goto :goto_2

    :cond_3
    move-object v10, v8

    .line 7
    :goto_2
    sget-boolean v17, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 8
    sget-object v17, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v17, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 11
    sget-object v12, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 v7, 0x18

    .line 12
    invoke-virtual {v12, v7, v5, v8, v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 13
    sget-boolean v7, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    const/16 v7, 0x17

    .line 14
    invoke-virtual {v12, v7, v5, v8, v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_7

    const/4 v7, 0x2

    if-ne v1, v7, :cond_5

    const/4 v12, 0x3

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    move v12, v1

    .line 15
    :goto_3
    :try_start_1
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", AT="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", WE="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v21, v9

    sub-long v8, p7, v19

    :try_start_2
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", WL="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v9, v21

    :try_start_3
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-object/from16 v9, v21

    goto :goto_6

    :cond_7
    :goto_4
    move v12, v1

    .line 18
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    .line 19
    :catch_2
    :goto_6
    :try_start_4
    const-string v2, "alarmException"

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 20
    :goto_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw v0

    :cond_8
    move v12, v1

    .line 22
    :goto_8
    new-instance v10, Lcom/android/server/alarm/Alarm;

    move-object v2, v10

    move v3, v12

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    const/16 v22, 0x0

    move-wide/from16 v7, p5

    move-object/from16 v23, v9

    move-object v0, v10

    move-wide/from16 v9, p7

    move-object/from16 p2, v0

    move v0, v12

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    invoke-direct/range {v2 .. v21}, Lcom/android/server/alarm/Alarm;-><init>(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v1, :cond_9

    move-object/from16 v2, p2

    .line 23
    iput v1, v2, Lcom/android/server/alarm/Alarm;->origType:I

    move-object/from16 v1, p0

    goto :goto_9

    :cond_9
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 24
    :goto_9
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v4, p3

    move-object/from16 v5, p19

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not setting alarm from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- package not allowed to start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 26
    :cond_a
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v3

    .line 27
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    const/4 v12, 0x4

    const/4 v5, 0x6

    if-eqz v4, :cond_16

    if-nez p13, :cond_16

    .line 28
    iget v6, v4, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_b

    goto/16 :goto_f

    .line 29
    :cond_b
    iget-boolean v6, v4, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-nez v6, :cond_c

    iget-boolean v6, v4, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v6, :cond_17

    :cond_c
    iget v6, v4, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_17

    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_17

    iget-boolean v8, v4, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    if-nez v8, :cond_d

    goto/16 :goto_f

    .line 30
    :cond_d
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.google.android.gms"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 31
    invoke-static {v6}, Lcom/android/server/alarm/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_e

    move-object/from16 v8, v22

    goto :goto_a

    .line 32
    :cond_e
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    :goto_a
    if-eqz v8, :cond_10

    .line 33
    const-string/jumbo v6, "com.google.android.gms.gcm."

    .line 34
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "com.google.android.intent.action.GCM_RECONNECT"

    .line 35
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    const/16 v6, 0xc

    goto :goto_e

    .line 36
    :cond_10
    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_17

    .line 37
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 38
    invoke-static {v6}, Lcom/android/server/alarm/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_11

    move-object/from16 v8, v22

    goto :goto_b

    .line 39
    :cond_11
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    :goto_b
    if-eqz v8, :cond_12

    .line 40
    const-string v9, "CONTEXT_MANAGER_ALARM_WAKEUP_"

    .line 41
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string/jumbo v9, "com.google.android.gms.common.receiver.LOG_CORE_ANALYTICS"

    .line 42
    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string/jumbo v9, "com.google.android.gms.matchstick.register_intent_action"

    .line 43
    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string/jumbo v9, "com.google.android.gms.reminders.notification.ACTION_REFRESH_TIME_REMINDERS"

    .line 44
    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string/jumbo v9, "com.google.android.intent.action.SEND_IDLE"

    .line 45
    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_d

    :cond_12
    if-nez v6, :cond_13

    move-object/from16 v8, v22

    goto :goto_c

    .line 46
    :cond_13
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    :goto_c
    if-eqz v8, :cond_17

    .line 47
    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "com.google.android.gms.checkin.EventLogServiceReceiver"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_14
    :goto_d
    move v6, v5

    .line 48
    :goto_e
    iget-boolean v4, v4, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez v4, :cond_17

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 50
    iget-wide v10, v2, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    sub-long/2addr v10, v8

    int-to-long v13, v6

    const-wide/32 v15, 0x36ee80

    mul-long/2addr v13, v15

    cmp-long v4, v10, v13

    if-lez v4, :cond_15

    goto :goto_f

    :cond_15
    add-long/2addr v8, v13

    .line 51
    invoke-virtual {v2, v12, v8, v9}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    goto :goto_f

    :cond_16
    const/4 v7, 0x1

    :cond_17
    :goto_f
    const/4 v4, 0x0

    move-object/from16 v6, p14

    move-object/from16 v8, p15

    .line 52
    invoke-virtual {v1, v8, v6, v4}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 53
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    iget v8, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v8, v6}, Lcom/android/server/alarm/AlarmManagerService;->increment(ILandroid/util/SparseIntArray;)V

    .line 54
    invoke-virtual {v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    const-wide/16 v8, 0x0

    cmp-long v1, p9, v8

    if-nez v1, :cond_18

    move v1, v7

    goto :goto_10

    :cond_18
    move v1, v4

    .line 55
    :goto_10
    iget v6, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v6, v12

    if-eqz v6, :cond_19

    move v6, v7

    goto :goto_11

    :cond_19
    move v6, v4

    :goto_11
    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v10, :cond_1a

    move v10, v7

    goto :goto_12

    :cond_1a
    move v10, v4

    :goto_12
    iget-wide v13, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    cmp-long v8, v13, v8

    if-eqz v8, :cond_1b

    move v8, v7

    goto :goto_13

    :cond_1b
    move v8, v4

    .line 56
    :goto_13
    iget v9, v2, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    if-eqz v9, :cond_20

    if-eq v9, v7, :cond_1f

    const/4 v7, 0x2

    if-eq v9, v7, :cond_1e

    const/4 v7, 0x3

    if-eq v9, v7, :cond_1d

    const/4 v7, 0x5

    if-eq v9, v12, :cond_20

    if-eq v9, v7, :cond_1c

    move v7, v4

    goto :goto_14

    :cond_1c
    move v7, v5

    goto :goto_14

    :cond_1d
    move v7, v12

    goto :goto_14

    :cond_1e
    const/4 v7, 0x3

    goto :goto_14

    :cond_1f
    const/4 v7, 0x2

    .line 57
    :cond_20
    :goto_14
    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    .line 58
    invoke-static {v3}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v3

    .line 59
    iget-boolean v4, v2, Lcom/android/server/alarm/Alarm;->wakeup:Z

    iget v2, v2, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v5, 0x170

    move/from16 p0, v5

    move/from16 p1, v2

    move/from16 p2, v1

    move/from16 p3, v4

    move/from16 p4, v6

    move/from16 p5, v10

    move/from16 p6, v8

    move/from16 p7, v7

    move/from16 p8, v0

    move/from16 p9, v3

    invoke-static/range {p0 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZZZZZIZI)V

    return-void
.end method

.method public final setImplLocked(Lcom/android/server/alarm/Alarm;)V
    .locals 8

    .line 60
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    .line 62
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eq v1, p1, :cond_0

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setImplLocked: idle until changed from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AlarmManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v3}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/android/server/alarm/LazyAlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 66
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 67
    iget-object v3, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 69
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    .line 70
    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    :cond_3
    :goto_1
    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_4

    .line 74
    iget-wide v3, v0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 75
    iget-wide v5, p1, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_9

    .line 76
    :cond_4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 77
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_9

    .line 78
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 79
    iget-object v3, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 81
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v5, v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v4, v5

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    .line 82
    iget-object v0, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    if-eqz v4, :cond_9

    .line 83
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 84
    iget-object v3, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 86
    invoke-virtual {p0, v4}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    .line 87
    iget-object v0, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    :cond_9
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_a

    .line 89
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    iput-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 93
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 95
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 98
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/RingBuffer;

    if-nez v0, :cond_e

    const/16 v0, 0x3e8

    .line 99
    const-class v2, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;

    if-eq v1, v0, :cond_d

    .line 100
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    const-string/jumbo v7, "com.sec.android.app.clockpackage"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    .line 101
    :cond_b
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-ne v1, v0, :cond_c

    .line 102
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const/16 v7, 0x1e

    invoke-direct {v0, v2, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_6

    .line 103
    :cond_c
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const/16 v7, 0xa

    invoke-direct {v0, v2, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_6

    .line 104
    :cond_d
    :goto_5
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const/16 v7, 0x32

    invoke-direct {v0, v2, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 105
    :goto_6
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    :cond_e
    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;-><init>(Lcom/android/server/alarm/Alarm;JJ)V

    invoke-virtual {v0, v7}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 108
    iget-object v1, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 109
    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_f

    rsub-int/lit8 v1, v1, -0x1

    .line 110
    :cond_f
    iget-object v0, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method public final setLocked(IJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 3
    iget-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    .line 5
    const-wide/16 v3, 0x0

    .line 7
    cmp-long v0, v1, v3

    .line 9
    if-eqz v0, :cond_1

    .line 11
    cmp-long p0, p2, v3

    .line 13
    if-gez p0, :cond_0

    .line 15
    move-wide p2, v3

    .line 16
    move-wide v8, p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v3, 0x3e8

    .line 20
    div-long v5, p2, v3

    .line 22
    rem-long/2addr p2, v3

    .line 23
    const-wide/32 v3, 0xf4240

    .line 26
    mul-long/2addr v3, p2

    .line 27
    move-wide v8, v3

    .line 28
    move-wide p2, v5

    .line 29
    :goto_0
    move v3, p1

    .line 30
    move-wide v4, p2

    .line 31
    move-wide v6, v8

    .line 32
    invoke-static/range {v1 .. v7}, Lcom/android/server/alarm/AlarmManagerService;->set(JIJJ)I

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    move-result-wide v0

    .line 42
    const-string v2, "Unable to set kernel alarm, now="

    .line 44
    const-string v3, " type="

    .line 46
    invoke-static {p1, v2, v0, v1, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p1

    .line 50
    const-string v0, " @ ("

    .line 52
    const-string v1, ","

    .line 54
    invoke-static {p1, v0, p2, p3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 57
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    const-string p2, "), ret = "

    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string p2, " = "

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {p0}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    const-string p1, "AlarmManager"

    .line 86
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 93
    move-result-object p1

    .line 94
    const/4 v0, 0x1

    .line 95
    iput v0, p1, Landroid/os/Message;->what:I

    .line 97
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 99
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 107
    :cond_2
    :goto_1
    return-void
.end method

.method public final setTimeZoneImpl(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 11
    move-result-object v0

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/SystemTimeZone;->setTimeZoneId(ILjava/lang/String;Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    move-result-wide p2

    .line 26
    invoke-virtual {v0, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    .line 29
    move-result p2

    .line 30
    const-string/jumbo p3, "persist.sys.time.offset"

    .line 33
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    invoke-static {p3, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    .line 47
    move-result-object p2

    .line 48
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p2, p3}, Ljava/time/zone/ZoneRules;->nextTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;

    .line 55
    move-result-object p2

    .line 56
    if-eqz p2, :cond_1

    .line 58
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    .line 67
    move-result v1

    .line 68
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    .line 75
    move-result v2

    .line 76
    sub-int/2addr v1, v2

    .line 77
    int-to-long v1, v1

    .line 78
    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 81
    move-result-wide v1

    .line 82
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    .line 85
    move-result-wide v3

    .line 86
    invoke-virtual {p3, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 89
    move-result-wide p2

    .line 90
    const-string/jumbo v3, "persist.sys.time.dst_transition"

    .line 93
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 97
    invoke-static {v3, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo p2, "persist.sys.time.dst_offset"

    .line 103
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 106
    move-result-object p3

    .line 107
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    const/4 p2, 0x0

    .line 115
    invoke-static {p2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 118
    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 122
    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 125
    const-string p1, "android.intent.action.TIMEZONE_CHANGED"

    .line 127
    const/high16 p3, 0x25200000

    .line 129
    invoke-static {p3, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 132
    move-result-object p1

    .line 133
    const-string/jumbo p3, "time-zone"

    .line 136
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 145
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 147
    invoke-virtual {p3}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 150
    move-result-wide v2

    .line 151
    const-string v6, ""

    .line 153
    const/4 v4, 0x0

    .line 154
    const/16 v5, 0xcc

    .line 156
    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 159
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 161
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p3, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 168
    move-result-object p3

    .line 169
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 171
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 173
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p3, p1, v0, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    :cond_2
    return-void

    .line 181
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw p1
.end method

.method public final setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    if-eqz p4, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object p3, v0

    .line 8
    :goto_0
    invoke-virtual {v1, p3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 11
    if-eqz p1, :cond_1

    .line 13
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 18
    return-void

    .line 19
    :cond_1
    if-ltz p2, :cond_2

    .line 21
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    new-instance p3, Landroid/os/WorkSource;

    .line 25
    invoke-direct {p3, p2}, Landroid/os/WorkSource;-><init>(I)V

    .line 28
    invoke-virtual {p1, p3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 32
    :catch_0
    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 37
    return-void
.end method

.method public final triggerAlarmsLocked(JLjava/util/ArrayList;)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v14, p3

    .line 5
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v3, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v3

    .line 21
    const/4 v11, 0x1

    .line 22
    sub-int/2addr v3, v11

    .line 23
    const/16 v20, 0x0

    .line 25
    move/from16 v4, v20

    .line 27
    move v5, v4

    .line 28
    :goto_0
    if-ltz v3, :cond_3

    .line 30
    iget-object v6, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 38
    iget-wide v7, v6, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 40
    cmp-long v7, v7, p1

    .line 42
    if-lez v7, :cond_0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v7, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-boolean v7, v6, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 55
    if-eqz v7, :cond_1

    .line 57
    iget-wide v7, v6, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 59
    const-wide/16 v9, 0x1f4

    .line 61
    add-long v9, p1, v9

    .line 63
    cmp-long v7, v7, v9

    .line 65
    if-gtz v7, :cond_1

    .line 67
    move v4, v11

    .line 68
    :cond_1
    iget v6, v6, Lcom/android/server/alarm/Alarm;->flags:I

    .line 70
    and-int/2addr v6, v11

    .line 71
    if-eqz v6, :cond_2

    .line 73
    move v5, v11

    .line 74
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v6

    .line 86
    sub-int/2addr v6, v11

    .line 87
    :goto_2
    if-ltz v6, :cond_6

    .line 89
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Lcom/android/server/alarm/Alarm;

    .line 95
    if-nez v4, :cond_4

    .line 97
    iget-boolean v8, v7, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 99
    if-eqz v8, :cond_4

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    if-eqz v5, :cond_5

    .line 104
    iget v8, v7, Lcom/android/server/alarm/Alarm;->flags:I

    .line 106
    and-int/2addr v8, v11

    .line 107
    if-nez v8, :cond_5

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    iget-object v4, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 126
    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 128
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v21

    .line 135
    move/from16 v22, v20

    .line 137
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_13

    .line 143
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v1

    .line 147
    move-object v12, v1

    .line 148
    check-cast v12, Lcom/android/server/alarm/Alarm;

    .line 150
    invoke-virtual {v0, v12}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    .line 153
    move-result v1

    .line 154
    iget v2, v12, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 156
    if-eqz v1, :cond_8

    .line 158
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 160
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Ljava/util/ArrayList;

    .line 166
    if-nez v1, :cond_7

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    .line 170
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 175
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    :cond_7
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    goto :goto_4

    .line 182
    :cond_8
    invoke-static {v12}, Lcom/android/server/alarm/AlarmManagerService;->isMARsRestricted(Lcom/android/server/alarm/Alarm;)Z

    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_a

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    const-string v3, "Deferring alarm "

    .line 192
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    const-string v3, " due to freecess. [uid "

    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v3, "]"

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    const-string v3, "AlarmManager"

    .line 217
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 222
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Ljava/util/ArrayList;

    .line 228
    if-nez v1, :cond_9

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    .line 232
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 237
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    :cond_9
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    goto :goto_4

    .line 244
    :cond_a
    iput v11, v12, Lcom/android/server/alarm/Alarm;->count:I

    .line 246
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget v1, v12, Lcom/android/server/alarm/Alarm;->flags:I

    .line 251
    and-int/lit8 v1, v1, 0x2

    .line 253
    if-eqz v1, :cond_c

    .line 255
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 257
    if-eqz v1, :cond_b

    .line 259
    move v1, v11

    .line 260
    goto :goto_5

    .line 261
    :cond_b
    move/from16 v1, v20

    .line 263
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    move-result-object v1

    .line 267
    iget-object v2, v12, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 269
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 272
    move-result-object v1

    .line 273
    const v2, 0x84d2

    .line 276
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 279
    :cond_c
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 281
    if-ne v1, v12, :cond_e

    .line 283
    const/4 v1, 0x0

    .line 284
    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 286
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 288
    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 293
    move-result-object v2

    .line 294
    move/from16 v3, v20

    .line 296
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    move-result v4

    .line 300
    if-eqz v4, :cond_d

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    move-result-object v4

    .line 306
    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 308
    invoke-virtual {v0, v4}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 311
    move-result v4

    .line 312
    or-int/2addr v3, v4

    .line 313
    goto :goto_6

    .line 314
    :cond_d
    if-eqz v3, :cond_e

    .line 316
    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 318
    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 320
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 323
    :cond_e
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 325
    if-ne v1, v12, :cond_f

    .line 327
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 329
    invoke-virtual {v1}, Lcom/android/server/alarm/LazyAlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    .line 332
    move-result-object v1

    .line 333
    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 335
    :cond_f
    iget-wide v5, v12, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 337
    const-wide/16 v1, 0x0

    .line 339
    cmp-long v1, v5, v1

    .line 341
    if-lez v1, :cond_10

    .line 343
    iget v1, v12, Lcom/android/server/alarm/Alarm;->count:I

    .line 345
    int-to-long v1, v1

    .line 346
    iget-object v3, v12, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 348
    aget-wide v3, v3, v20

    .line 350
    sub-long v7, p1, v3

    .line 352
    div-long/2addr v7, v5

    .line 353
    add-long/2addr v7, v1

    .line 354
    long-to-int v1, v7

    .line 355
    iput v1, v12, Lcom/android/server/alarm/Alarm;->count:I

    .line 357
    int-to-long v1, v1

    .line 358
    mul-long v9, v1, v5

    .line 360
    add-long v15, v3, v9

    .line 362
    move-wide v7, v15

    .line 363
    move-wide/from16 v1, p1

    .line 365
    move-wide v3, v15

    .line 366
    invoke-static/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    .line 369
    move-result-wide v1

    .line 370
    iget-wide v3, v12, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 372
    add-long v5, v3, v9

    .line 374
    sub-long v9, v1, v15

    .line 376
    iget-object v15, v12, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 378
    iget-object v1, v12, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 380
    move-object/from16 v17, v1

    .line 382
    iget-object v13, v12, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 384
    iget v3, v12, Lcom/android/server/alarm/Alarm;->uid:I

    .line 386
    iget-object v1, v12, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 388
    move-object/from16 v19, v1

    .line 390
    iget v1, v12, Lcom/android/server/alarm/Alarm;->type:I

    .line 392
    move/from16 v23, v1

    .line 394
    iget-wide v0, v12, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 396
    move v4, v11

    .line 397
    move-object v2, v12

    .line 398
    move-wide v11, v0

    .line 399
    const/4 v0, 0x0

    .line 400
    move-object v1, v14

    .line 401
    move-object v14, v0

    .line 402
    const/16 v18, 0x0

    .line 404
    iget v0, v2, Lcom/android/server/alarm/Alarm;->flags:I

    .line 406
    move-object/from16 v24, v2

    .line 408
    move v2, v0

    .line 409
    const/16 v16, 0x0

    .line 411
    const/4 v0, -0x1

    .line 412
    move v4, v0

    .line 413
    move-object/from16 v0, p0

    .line 415
    move/from16 v1, v23

    .line 417
    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    move-object/from16 v1, v24

    .line 422
    goto :goto_7

    .line 423
    :cond_10
    move-object v1, v12

    .line 424
    :goto_7
    iget-boolean v0, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 426
    if-eqz v0, :cond_11

    .line 428
    add-int/lit8 v22, v22, 0x1

    .line 430
    :cond_11
    iget-object v0, v1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 432
    if-eqz v0, :cond_12

    .line 434
    move-object/from16 v0, p0

    .line 436
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    .line 438
    iget-object v1, v1, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    .line 440
    const/4 v2, 0x1

    .line 441
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    iput-boolean v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 449
    goto :goto_8

    .line 450
    :cond_12
    const/4 v2, 0x1

    .line 451
    move-object/from16 v0, p0

    .line 453
    :goto_8
    move-object/from16 v14, p3

    .line 455
    move v11, v2

    .line 456
    goto/16 :goto_4

    .line 458
    :cond_13
    invoke-static/range {p3 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 461
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    .line 463
    move-object/from16 v1, p3

    .line 465
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 468
    return v22
.end method

.method public final updateNextAlarmClockLocked()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 9
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 14
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    iget-object v2, v2, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 23
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_3

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 45
    iget-object v4, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 47
    if-eqz v4, :cond_1

    .line 49
    iget v4, v3, Lcom/android/server/alarm/Alarm;->uid:I

    .line 51
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 54
    move-result v4

    .line 55
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 57
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 63
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v6

    .line 67
    if-nez v6, :cond_2

    .line 69
    iget-object v3, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 71
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v3, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 77
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_1

    .line 83
    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 86
    move-result-wide v6

    .line 87
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 93
    invoke-virtual {v3}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 96
    move-result-wide v8

    .line 97
    cmp-long v3, v6, v8

    .line 99
    if-gtz v3, :cond_1

    .line 101
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 108
    move-result v2

    .line 109
    :goto_1
    if-ge v0, v2, :cond_5

    .line 111
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 117
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 120
    move-result v4

    .line 121
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 123
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 129
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v5

    .line 133
    if-nez v5, :cond_4

    .line 135
    invoke-virtual {p0, v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 138
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 143
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 146
    move-result v0

    .line 147
    add-int/lit8 v0, v0, -0x1

    .line 149
    :goto_2
    if-ltz v0, :cond_7

    .line 151
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 153
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 156
    move-result v2

    .line 157
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 160
    move-result-object v3

    .line 161
    if-nez v3, :cond_6

    .line 163
    const/4 v3, 0x0

    .line 164
    invoke-virtual {p0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 167
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 169
    goto :goto_2

    .line 170
    :cond_7
    return-void
.end method

.method public final updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 14
    :goto_0
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 20
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 22
    const/4 p2, 0x2

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 28
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    return-void
.end method
