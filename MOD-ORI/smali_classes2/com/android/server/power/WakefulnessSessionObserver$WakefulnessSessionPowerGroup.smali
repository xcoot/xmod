.class public Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field protected mCurrentUserActivityEvent:I

.field protected mCurrentUserActivityTimestamp:J

.field public mCurrentWakefulness:I

.field public mInteractiveStateOnStartTimestamp:J

.field public mIsInteractive:Z

.field public final mPowerGroupId:I

.field protected mPrevUserActivityEvent:I

.field protected mPrevUserActivityTimestamp:J

.field public mSendOverrideTimeoutLogTimestamp:J

.field public mTimeoutOffTimestamp:J

.field public mTimeoutOverrideReleaseReason:I

.field public mTimeoutOverrideWakeLockCounter:I

.field public final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    .line 20
    .line 21
    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public isInOverrideTimeout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 7
    .line 8
    if-lez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
