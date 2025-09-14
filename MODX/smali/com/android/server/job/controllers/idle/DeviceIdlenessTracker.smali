.class public final Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessTracker;


# static fields
.field public static final DEBUG:Z

.field static final KEY_INACTIVITY_IDLE_THRESHOLD_MS:Ljava/lang/String; = "ic_dit_inactivity_idle_threshold_ms"

.field static final KEY_INACTIVITY_STABLE_POWER_IDLE_THRESHOLD_MS:Ljava/lang/String; = "ic_dit_inactivity_idle_stable_power_threshold_ms"


# instance fields
.field public mAlarm:Landroid/app/AlarmManager;

.field public mDockIdle:Z

.field public mIdle:Z

.field public final mIdleAlarmListener:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;

.field public mIdleListener:Lcom/android/server/job/controllers/IdleController;

.field public mIdleStartElapsed:J

.field public mIdleWindowSlop:J

.field public mIdlenessCheckScheduledElapsed:J

.field public mInactivityIdleThreshold:J

.field public mInactivityStablePowerIdleThreshold:J

.field public mIsStablePower:Z

.field public final mOnProjectionStateChangedListener:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mProjectionActive:Z

.field public mScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string v0, "JobScheduler.DeviceIdlenessTracker"

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdlenessCheckScheduledElapsed:J

    .line 8
    const-wide v0, 0x7fffffffffffffffL

    .line 13
    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleStartElapsed:J

    .line 15
    new-instance v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V

    .line 20
    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mOnProjectionStateChangedListener:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;

    .line 22
    new-instance v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;

    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V

    .line 27
    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;

    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 32
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7

    const-wide v0, 0x10b00000003L

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10800000001L

    .line 10
    iget-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000002L

    .line 11
    iget-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000003L

    .line 12
    iget-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000005L

    .line 13
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "  mIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2
    const-string v0, "  mScreenOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3
    const-string v0, "  mIsStablePower: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIsStablePower:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4
    const-string v0, "  mDockIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5
    const-string v0, "  mProjectionActive: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6
    const-string v0, "  mIdlenessCheckScheduledElapsed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdlenessCheckScheduledElapsed:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 7
    const-string v0, "  mIdleStartElapsed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleStartElapsed:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "DeviceIdlenessTracker:"

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    iget-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    .line 11
    const-string/jumbo v2, "ic_dit_inactivity_idle_threshold_ms"

    .line 14
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 17
    iget-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityStablePowerIdleThreshold:J

    .line 19
    const-string/jumbo v2, "ic_dit_inactivity_idle_stable_power_threshold_ms"

    .line 22
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 25
    iget-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object p0

    .line 31
    const-string/jumbo v0, "ic_dit_idle_window_slop_ms"

    .line 34
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 41
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 44
    return-void
.end method

.method public final exitIdle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 8
    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdlenessCheckScheduledElapsed:J

    .line 12
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleStartElapsed:J

    .line 19
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 21
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 26
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 31
    :cond_0
    return-void
.end method

.method public final handleIdleTrigger()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 3
    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    .line 5
    if-nez v0, :cond_2

    .line 7
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 13
    if-eqz v0, :cond_2

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    .line 17
    if-nez v0, :cond_2

    .line 19
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "Idle trigger fired @ "

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 52
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 60
    if-eqz v0, :cond_3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "TRIGGER_IDLE received but not changing state; idle="

    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, " screen="

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, " projection="

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    .line 91
    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 94
    :cond_3
    :goto_0
    return-void
.end method

.method public final isIdle()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 3
    return p0
.end method

.method public final maybeScheduleIdlenessCheck(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 3
    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    .line 5
    if-eqz v0, :cond_1

    .line 7
    sget-boolean p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const-string p0, "Already idle. Redundant reason="

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 23
    if-eqz v0, :cond_2

    .line 25
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 27
    if-eqz v0, :cond_a

    .line 29
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    .line 31
    if-nez v0, :cond_a

    .line 33
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    move-result-wide v2

    .line 42
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIsStablePower:Z

    .line 44
    if-eqz v0, :cond_3

    .line 46
    iget-wide v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityStablePowerIdleThreshold:J

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-wide v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    .line 51
    :goto_0
    iget-wide v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdlenessCheckScheduledElapsed:J

    .line 53
    const-wide/16 v8, 0x0

    .line 55
    cmp-long v0, v6, v8

    .line 57
    if-ltz v0, :cond_5

    .line 59
    add-long/2addr v6, v4

    .line 60
    cmp-long v0, v6, v2

    .line 62
    if-gtz v0, :cond_6

    .line 64
    sget-boolean p1, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 66
    if-eqz p1, :cond_4

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    const-string v0, "Previous idle check @ "

    .line 72
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-wide v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdlenessCheckScheduledElapsed:J

    .line 77
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, " allows device to be idle now"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    .line 95
    return-void

    .line 96
    :cond_5
    iput-wide v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdlenessCheckScheduledElapsed:J

    .line 98
    :cond_6
    iget-wide v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdlenessCheckScheduledElapsed:J

    .line 100
    add-long/2addr v6, v4

    .line 101
    iget-wide v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleStartElapsed:J

    .line 103
    cmp-long v0, v6, v4

    .line 105
    if-nez v0, :cond_8

    .line 107
    sget-boolean p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 109
    if-eqz p0, :cond_7

    .line 111
    const-string p0, "No change to idle start time"

    .line 113
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_7
    return-void

    .line 117
    :cond_8
    iput-wide v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleStartElapsed:J

    .line 119
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 121
    if-eqz v0, :cond_9

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    const-string v4, "Scheduling idle : "

    .line 127
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string p1, " now:"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    const-string p1, " checkElapsed="

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-wide v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdlenessCheckScheduledElapsed:J

    .line 148
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    const-string p1, " when="

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-wide v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleStartElapsed:J

    .line 158
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_9
    iget-object v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 170
    iget-wide v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleStartElapsed:J

    .line 172
    iget-wide v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    .line 174
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 177
    move-result-object v9

    .line 178
    iget-object v10, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;

    .line 180
    const/4 v3, 0x2

    .line 181
    const-string v8, "JS idleness"

    .line 183
    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 186
    :cond_a
    return-void
.end method

.method public final onBatteryStateChanged(ZZ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIsStablePower:Z

    .line 10
    if-eq p2, p1, :cond_1

    .line 12
    iput-boolean p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIsStablePower:Z

    .line 14
    const-string/jumbo p1, "stable power changed"

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->maybeScheduleIdlenessCheck(Ljava/lang/String;)V

    .line 20
    :cond_1
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string p1, "android.intent.action.DOCK_IDLE"

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    sget-boolean v2, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 11
    const-string v3, "JobScheduler.DeviceIdlenessTracker"

    .line 13
    if-eqz v2, :cond_0

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    const-string v5, "Received action: "

    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const/4 v4, -0x1

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 39
    move-result v5

    .line 40
    sparse-switch v5, :sswitch_data_0

    .line 43
    goto :goto_0

    .line 44
    :sswitch_0
    const-string v5, "android.intent.action.DOCK_ACTIVE"

    .line 46
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v4, 0x6

    .line 54
    goto :goto_0

    .line 55
    :sswitch_1
    const-string/jumbo v5, "com.android.server.ACTION_TRIGGER_IDLE"

    .line 58
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v4, 0x5

    .line 66
    goto :goto_0

    .line 67
    :sswitch_2
    const-string v5, "android.intent.action.DREAMING_STOPPED"

    .line 69
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_3

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v4, 0x4

    .line 77
    goto :goto_0

    .line 78
    :sswitch_3
    const-string v5, "android.intent.action.DREAMING_STARTED"

    .line 80
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_4

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/4 v4, 0x3

    .line 88
    goto :goto_0

    .line 89
    :sswitch_4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_5

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const/4 v4, 0x2

    .line 97
    goto :goto_0

    .line 98
    :sswitch_5
    const-string v5, "android.intent.action.SCREEN_ON"

    .line 100
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_6

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    move v4, v1

    .line 108
    goto :goto_0

    .line 109
    :sswitch_6
    const-string v5, "android.intent.action.SCREEN_OFF"

    .line 111
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_7

    .line 117
    goto :goto_0

    .line 118
    :cond_7
    move v4, v0

    .line 119
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 122
    goto :goto_2

    .line 123
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 125
    if-nez p1, :cond_8

    .line 127
    return-void

    .line 128
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    .line 131
    goto :goto_2

    .line 132
    :cond_8
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mPowerManager:Landroid/os/PowerManager;

    .line 134
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_9

    .line 140
    return-void

    .line 141
    :cond_9
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 145
    if-eqz v2, :cond_a

    .line 147
    const-string/jumbo p1, "exiting idle"

    .line 150
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->exitIdle()V

    .line 156
    goto :goto_2

    .line 157
    :pswitch_4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_c

    .line 163
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 165
    if-nez p1, :cond_b

    .line 167
    return-void

    .line 168
    :cond_b
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 170
    goto :goto_1

    .line 171
    :cond_c
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 175
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->maybeScheduleIdlenessCheck(Ljava/lang/String;)V

    .line 178
    :goto_2
    return-void

    .line 179
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6
        -0x56ac2893 -> :sswitch_5
        -0x35f53cc5 -> :sswitch_4
        0xe98bfe6 -> :sswitch_3
        0xf5d1132 -> :sswitch_2
        0x56d17cc5 -> :sswitch_1
        0x64b5c0ad -> :sswitch_0
    .end sparse-switch

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final processConstant(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-wide/32 v0, 0xdbba00

    .line 4
    const-wide/32 v2, 0xea60

    .line 7
    const/4 v4, -0x1

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result v5

    .line 12
    sparse-switch v5, :sswitch_data_0

    .line 15
    goto :goto_0

    .line 16
    :sswitch_0
    const-string/jumbo v5, "ic_dit_inactivity_idle_stable_power_threshold_ms"

    .line 19
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v4, 0x2

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string/jumbo v5, "ic_dit_inactivity_idle_threshold_ms"

    .line 31
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v4, 0x1

    .line 39
    goto :goto_0

    .line 40
    :sswitch_2
    const-string/jumbo v5, "ic_dit_idle_window_slop_ms"

    .line 43
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v4, 0x0

    .line 51
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 54
    goto :goto_1

    .line 55
    :pswitch_0
    iget-wide v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityStablePowerIdleThreshold:J

    .line 57
    invoke-virtual {p1, p2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 60
    move-result-wide p1

    .line 61
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 64
    move-result-wide p1

    .line 65
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 68
    move-result-wide p1

    .line 69
    iput-wide p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityStablePowerIdleThreshold:J

    .line 71
    goto :goto_1

    .line 72
    :pswitch_1
    iget-wide v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    .line 74
    invoke-virtual {p1, p2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 77
    move-result-wide p1

    .line 78
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 81
    move-result-wide p1

    .line 82
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 85
    move-result-wide p1

    .line 86
    iput-wide p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    .line 88
    goto :goto_1

    .line 89
    :pswitch_2
    iget-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    .line 91
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 94
    move-result-wide p1

    .line 95
    const-wide/32 v0, 0xdbba0

    .line 98
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 101
    move-result-wide p1

    .line 102
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 105
    move-result-wide p1

    .line 106
    iput-wide p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    .line 108
    :goto_1
    return-void

    .line 109
    :sswitch_data_0
    .sparse-switch
        -0x15c1bb4e -> :sswitch_2
        -0x9d8d391 -> :sswitch_1
        0x1dd35223 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final startTracking(Landroid/content/Context;Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/IdleController;)V
    .locals 4

    .line 1
    iput-object p3, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p3

    .line 7
    const v0, 0x10e00bd

    .line 10
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p3

    .line 14
    int-to-long v0, p3

    .line 15
    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p3

    .line 21
    const v0, 0x10e00be

    .line 24
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 27
    move-result p3

    .line 28
    int-to-long v0, p3

    .line 29
    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityStablePowerIdleThreshold:J

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p3

    .line 35
    const v0, 0x10e00bc

    .line 38
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 41
    move-result p3

    .line 42
    int-to-long v0, p3

    .line 43
    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    .line 45
    const-string p3, "alarm"

    .line 47
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object p3

    .line 51
    check-cast p3, Landroid/app/AlarmManager;

    .line 53
    iput-object p3, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 55
    const-class p3, Landroid/os/PowerManager;

    .line 57
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Landroid/os/PowerManager;

    .line 63
    iput-object p3, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    const-string p3, "android.intent.action.SCREEN_ON"

    .line 67
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 69
    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 71
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    .line 73
    const-string/jumbo v3, "com.android.server.ACTION_TRIGGER_IDLE"

    .line 76
    invoke-static {p3, v0, v1, v2, v3}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 79
    move-result-object p3

    .line 80
    const-string v0, "android.intent.action.DOCK_IDLE"

    .line 82
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v0, "android.intent.action.DOCK_ACTIVE"

    .line 87
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 93
    move-result-object v0

    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, p0, p3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 98
    const-class p3, Landroid/app/UiModeManager;

    .line 100
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/app/UiModeManager;

    .line 106
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 109
    move-result-object p3

    .line 110
    iget-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mOnProjectionStateChangedListener:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;

    .line 112
    const/4 v1, -0x1

    .line 113
    invoke-virtual {p1, v1, p3, v0}, Landroid/app/UiModeManager;->addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    .line 116
    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_0

    .line 128
    const/4 p1, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    const/4 p1, 0x0

    .line 131
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIsStablePower:Z

    .line 133
    return-void
.end method
