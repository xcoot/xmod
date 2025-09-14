.class public final Lcom/android/server/job/controllers/FlexibilityController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final FLEXIBLE_CONSTRAINTS:I = 0x10000007


# instance fields
.field public mAppliedConstraints:I

.field public mDeadlineProximityLimitMs:J

.field public mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

.field public mFallbackFlexibilityDeadlineMs:J

.field public mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

.field public mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

.field final mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

.field final mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

.field public mFlexibilityEnabled:Z

.field final mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

.field public final mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

.field public final mJobScoreTrackers:Landroid/util/SparseArrayMap;

.field public final mJobsToCheck:Landroid/util/ArraySet;

.field public final mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

.field public mLocalOverride:Z

.field public mMaxRescheduledDeadline:J

.field public mMinTimeBetweenFlexibilityAlarmsMs:J

.field public final mPackagesToCheck:Landroid/util/ArraySet;

.field public mPercentsToDropConstraints:Landroid/util/SparseArray;

.field final mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

.field final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field final mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

.field public mRescheduledJobDeadline:J

.field mSatisfiedFlexibleConstraints:I

.field public final mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

.field public final mSupportedFlexConstraints:I

.field public mUnseenConstraintGracePeriodMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string v0, "JobScheduler.Flex"

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
    sput-boolean v0, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/PrefetchController;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 4
    const-wide/32 v0, 0x5265c00

    .line 7
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    .line 9
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 11
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    .line 13
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 15
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    .line 17
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 19
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    .line 21
    const-wide/32 v2, 0x36ee80

    .line 24
    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    .line 26
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    .line 28
    const-wide/32 v0, 0xf731400

    .line 31
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 33
    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 36
    const-wide/32 v0, 0xea60

    .line 39
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    .line 41
    const-wide/32 v0, 0xdbba0

    .line 44
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    .line 46
    new-instance v0, Landroid/util/SparseLongArray;

    .line 48
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 53
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 55
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 60
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$1;

    .line 62
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/FlexibilityController$1;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 65
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 67
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 69
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    .line 76
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    .line 83
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    .line 88
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 90
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 97
    move-result-object v1

    .line 98
    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/os/Looper;)V

    .line 101
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 103
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 108
    move-result-object v0

    .line 109
    const-string v1, "android.hardware.type.automotive"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 122
    move-result-object v0

    .line 123
    const-string v1, "android.hardware.type.embedded"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const v0, 0x10000007

    .line 135
    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 140
    :goto_1
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 142
    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 144
    and-int/2addr v0, v1

    .line 145
    if-eqz v0, :cond_2

    .line 147
    const/4 p1, 0x1

    .line 148
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 150
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 155
    move-result v0

    .line 156
    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;-><init>(Lcom/android/server/job/controllers/FlexibilityController;I)V

    .line 159
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 161
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 163
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 166
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 168
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 170
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 172
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 179
    move-result-object v1

    .line 180
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;)V

    .line 183
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 185
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 187
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    .line 189
    iput-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 191
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 193
    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 196
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 198
    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 200
    if-eqz p0, :cond_3

    .line 202
    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    .line 205
    :cond_3
    return-void
.end method


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 3
    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 11
    const-string v0, "FlexibilityController"

    .line 13
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const-string v0, ":"

    .line 18
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 24
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v1, "fc_applied_constraints"

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 36
    const-string v0, "("

    .line 38
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 43
    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string/jumbo v0, "nothing"

    .line 52
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 55
    :goto_0
    const-string v0, ")"

    .line 57
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    .line 62
    const-string/jumbo v2, "fc_flexibility_deadline_proximity_limit_ms"

    .line 65
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 68
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    .line 70
    const-string/jumbo v2, "fc_fallback_flexibility_deadline_ms"

    .line 73
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 78
    const-string/jumbo v1, "fc_fallback_flexibility_deadlines"

    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 88
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 90
    const-string/jumbo v1, "fc_fallback_flexibility_deadline_scores"

    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 100
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 102
    const-string/jumbo v1, "fc_fallback_flexibility_deadline_additional_score_time_factors"

    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 112
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 114
    const-string/jumbo v2, "fc_min_time_between_flexibility_alarms_ms"

    .line 117
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 122
    const-string/jumbo v1, "fc_percents_to_drop_flexible_constraints"

    .line 125
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 132
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    .line 134
    const-string/jumbo v2, "fc_rescheduled_job_deadline_ms"

    .line 137
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 140
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    .line 142
    const-string/jumbo v2, "fc_max_rescheduled_deadline_ms"

    .line 145
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 148
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    move-result-object p0

    .line 154
    const-string/jumbo v0, "fc_unseen_constraint_grace_period_ms"

    .line 157
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 164
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 167
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "Local override active"

    .line 7
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 10
    :cond_0
    const-string v0, "Applied Flexible Constraints:"

    .line 12
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 15
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 17
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 20
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 23
    const-string v0, "Satisfied Flexible Constraints:"

    .line 25
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 28
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 30
    invoke-static {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 33
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 36
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 39
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    move-result-wide v7

    .line 48
    const-string v0, "Time since constraint combos last seen:"

    .line 50
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 56
    const/4 v0, 0x0

    .line 57
    move v1, v0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 60
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    .line 63
    move-result v2

    .line 64
    if-ge v1, v2, :cond_3

    .line 66
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 68
    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 71
    move-result v2

    .line 72
    iget v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 74
    if-ne v2, v3, :cond_1

    .line 76
    const-string v3, "0ms"

    .line 78
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 84
    invoke-virtual {v3, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 87
    move-result-wide v3

    .line 88
    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 91
    :goto_1
    const-string v3, ":"

    .line 93
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 96
    if-eqz v2, :cond_2

    .line 98
    invoke-static {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    const-string v2, " none"

    .line 104
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 107
    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 116
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 119
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    const-string v2, "Special apps:"

    .line 126
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 132
    iget-object v2, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 134
    monitor-enter v2

    .line 135
    move v3, v0

    .line 136
    :goto_3
    :try_start_0
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 138
    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    .line 141
    move-result v4

    .line 142
    if-ge v3, v4, :cond_4

    .line 144
    const-string v4, "User "

    .line 146
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 151
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 154
    move-result v4

    .line 155
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 158
    const-string v4, ": "

    .line 160
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 163
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 165
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 174
    goto :goto_3

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    goto/16 :goto_8

    .line 178
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 181
    const-string v3, "Carrier privileged packages:"

    .line 183
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 189
    move v3, v0

    .line 190
    :goto_4
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 192
    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    .line 195
    move-result v4

    .line 196
    if-ge v3, v4, :cond_5

    .line 198
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 200
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 203
    move-result v4

    .line 204
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 207
    const-string v4, ": "

    .line 209
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 212
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 214
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 223
    goto :goto_4

    .line 224
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 227
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 230
    const-string v3, "Power allowlisted packages: "

    .line 232
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 235
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 237
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 240
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 244
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 247
    iget-object v9, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 249
    move v10, v0

    .line 250
    :goto_5
    iget-object v1, v9, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 252
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 255
    move-result v1

    .line 256
    if-ge v10, v1, :cond_8

    .line 258
    iget-object v1, v9, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    move-result-object v1

    .line 264
    move-object v11, v1

    .line 265
    check-cast v11, Landroid/util/ArraySet;

    .line 267
    move v12, v0

    .line 268
    :goto_6
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    .line 271
    move-result v1

    .line 272
    if-ge v12, v1, :cond_7

    .line 274
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 277
    move-result-object v1

    .line 278
    move-object v2, v1

    .line 279
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 281
    invoke-virtual {p2, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_6

    .line 287
    goto :goto_7

    .line 288
    :cond_6
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 291
    const-string v1, " from "

    .line 293
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget v1, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 298
    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 301
    const-string v1, "-> Num Required Constraints: "

    .line 303
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 309
    move-result v1

    .line 310
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 313
    const-string v1, ", lifecycle=["

    .line 315
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object v1, v9, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 320
    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 323
    move-result-wide v5

    .line 324
    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 327
    const-string v3, ", ("

    .line 329
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    .line 335
    move-result v1

    .line 336
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 339
    const-string v1, "%), "

    .line 341
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-object v1, v9, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 346
    move-wide v3, v7

    .line 347
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    .line 350
    move-result-wide v1

    .line 351
    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 354
    const-string v1, "]"

    .line 356
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 362
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 364
    goto :goto_6

    .line 365
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 367
    goto :goto_5

    .line 368
    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 371
    const-string p2, "Job scores:"

    .line 373
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 379
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 381
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;

    .line 383
    invoke-direct {v0, p1, v7, v8}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;J)V

    .line 386
    invoke-virtual {p2, v0}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 389
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 392
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 395
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 400
    return-void

    .line 401
    :goto_8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    throw p0
.end method

.method public getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 4
    move-result-wide v6

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    move-wide v4, v6

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    .line 12
    move-result-wide p0

    .line 13
    const-wide v0, 0x7fffffffffffffffL

    .line 18
    cmp-long v0, p0, v0

    .line 20
    if-eqz v0, :cond_3

    .line 22
    cmp-long v0, v6, p2

    .line 24
    if-ltz v0, :cond_0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    cmp-long v0, p2, p0

    .line 29
    if-gtz v0, :cond_2

    .line 31
    cmp-long v0, p0, v6

    .line 33
    if-nez v0, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sub-long/2addr p2, v6

    .line 37
    const-wide/16 v0, 0x64

    .line 39
    mul-long/2addr p2, v0

    .line 40
    sub-long/2addr p0, v6

    .line 41
    div-long/2addr p2, p0

    .line 42
    long-to-int p0, p2

    .line 43
    return p0

    .line 44
    :cond_2
    :goto_0
    const/16 p0, 0x64

    .line 46
    return p0

    .line 47
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public getFcConfig()Lcom/android/server/job/controllers/FlexibilityController$FcConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 3
    return-object p0
.end method

.method public getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 8

    .line 1
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-nez v4, :cond_0

    .line 9
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 11
    :cond_0
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 13
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_1

    .line 25
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 27
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 30
    move-result-wide v4

    .line 31
    iget-wide v6, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 33
    sub-long/2addr v6, v4

    .line 34
    add-long/2addr v6, v0

    .line 35
    const-wide/16 v0, 0x2

    .line 37
    div-long v0, v6, v0

    .line 39
    :cond_1
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 41
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 47
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 54
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    .line 57
    move-result-wide v5

    .line 58
    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 60
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 62
    invoke-virtual {v4, v7, p1, v5, v6}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    .line 65
    move-result-wide v4

    .line 66
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v6, v7, p1, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/Long;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 81
    move-result-wide v2

    .line 82
    const-wide v6, 0x7fffffffffffffffL

    .line 87
    cmp-long p1, v4, v6

    .line 89
    if-eqz p1, :cond_2

    .line 91
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 93
    invoke-virtual {p0}, Lcom/android/server/job/controllers/PrefetchController;->getLaunchTimeThresholdMs()J

    .line 96
    move-result-wide p0

    .line 97
    sub-long/2addr v4, p0

    .line 98
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 101
    move-result-wide v2

    .line 102
    :cond_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 105
    move-result-wide p0

    .line 106
    return-wide p0

    .line 107
    :cond_3
    return-wide v0
.end method

.method public getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 9
    const-wide v2, 0x7fffffffffffffffL

    .line 14
    iget-wide v4, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 16
    if-eqz v0, :cond_2

    .line 18
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object p3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 25
    invoke-virtual {p3}, Ljava/time/Clock;->millis()J

    .line 28
    move-result-wide p3

    .line 29
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 31
    invoke-virtual {p2, p1, v1, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    .line 34
    move-result-wide p1

    .line 35
    cmp-long p3, v4, v2

    .line 37
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 39
    if-eqz p3, :cond_0

    .line 41
    iget-wide p3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 43
    sub-long/2addr p1, p3

    .line 44
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 47
    move-result-wide p0

    .line 48
    return-wide p0

    .line 49
    :cond_0
    cmp-long p3, p1, v2

    .line 51
    if-eqz p3, :cond_1

    .line 53
    iget-wide p3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 55
    sub-long/2addr p1, p3

    .line 56
    return-wide p1

    .line 57
    :cond_1
    return-wide v2

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 61
    move-result v0

    .line 62
    const/4 v6, 0x1

    .line 63
    if-le v0, v6, :cond_3

    .line 65
    iget-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    .line 67
    long-to-float p2, p2

    .line 68
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 71
    move-result p1

    .line 72
    add-int/lit8 p1, p1, -0x2

    .line 74
    invoke-static {p2, p1}, Ljava/lang/Math;->scalb(FI)F

    .line 77
    move-result p1

    .line 78
    float-to-long p1, p1

    .line 79
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    .line 81
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 84
    move-result-wide p0

    .line 85
    add-long/2addr p0, p4

    .line 86
    return-wide p0

    .line 87
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 90
    move-result v0

    .line 91
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 93
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getScoreLocked(ILjava/lang/String;J)I

    .line 96
    move-result p1

    .line 97
    iget-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    .line 99
    const-wide/16 v6, 0x3

    .line 101
    mul-long/2addr v6, p2

    .line 102
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    .line 104
    invoke-virtual {v1, v0, p2, p3}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 107
    move-result-wide p2

    .line 108
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    .line 110
    const-wide/32 v8, 0xea60

    .line 113
    invoke-virtual {p0, v0, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 116
    move-result-wide v0

    .line 117
    int-to-long p0, p1

    .line 118
    mul-long/2addr v0, p0

    .line 119
    add-long/2addr v0, p2

    .line 120
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 123
    move-result-wide p0

    .line 124
    add-long/2addr p0, p4

    .line 125
    cmp-long p2, v4, v2

    .line 127
    if-nez p2, :cond_4

    .line 129
    return-wide p0

    .line 130
    :cond_4
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 133
    move-result-wide p0

    .line 134
    return-wide p0
.end method

.method public getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    .line 2
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v6

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide v4

    move-wide v2, v6

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J
    .locals 3

    .line 7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/FlexibilityController;->getPercentsToDropConstraints(I)[I

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p4, v0

    if-eqz v2, :cond_1

    .line 8
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 9
    array-length v2, p0

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    aget p0, p0, p1

    sub-long/2addr p4, p2

    int-to-long p0, p0

    mul-long/2addr p4, p0

    const-wide/16 p0, 0x64

    .line 11
    div-long/2addr p4, p0

    add-long/2addr p4, p2

    return-wide p4

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public final getPercentsToDropConstraints(I)[I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [I

    .line 9
    if-nez p0, :cond_0

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "No %-to-drop for priority "

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const-string p1, "JobScheduler.Flex"

    .line 31
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/16 p0, 0x46

    .line 36
    const/16 p1, 0x50

    .line 38
    const/16 v0, 0x32

    .line 40
    const/16 v1, 0x3c

    .line 42
    filled-new-array {v0, v1, p0, p1}, [I

    .line 45
    move-result-object p0

    .line 46
    :cond_0
    return-object p0
.end method

.method public getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    const/high16 p1, 0x10000000

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    or-int/lit8 p1, p1, 0x7

    .line 11
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 13
    and-int/2addr p0, p1

    .line 14
    return p0
.end method

.method public getScoreLocked(ILjava/lang/String;J)I
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    .line 15
    cmp-long p2, p3, v0

    .line 17
    if-gez p2, :cond_1

    .line 19
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    .line 21
    move p1, p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-wide/32 v0, 0x5265c00

    .line 26
    sub-long/2addr p3, v0

    .line 27
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    .line 29
    array-length v2, p2

    .line 30
    const-wide v3, 0x7fffffffffffffffL

    .line 35
    move-wide v4, v3

    .line 36
    move v3, p1

    .line 37
    :goto_0
    if-ge p1, v2, :cond_3

    .line 39
    aget-object v6, p2, p1

    .line 41
    if-eqz v6, :cond_2

    .line 43
    iget-wide v7, v6, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    .line 45
    cmp-long v9, v7, p3

    .line 47
    if-ltz v9, :cond_2

    .line 49
    iget v6, v6, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    .line 51
    add-int/2addr v3, v6

    .line 52
    cmp-long v6, v4, v7

    .line 54
    if-lez v6, :cond_2

    .line 56
    move-wide v4, v7

    .line 57
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iput v3, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    .line 62
    add-long/2addr v4, v0

    .line 63
    iput-wide v4, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    .line 65
    move p1, v3

    .line 66
    :goto_1
    return p1
.end method

.method public hasEnoughSatisfiedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 3
    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 5
    and-int/2addr v0, v1

    .line 6
    iget-boolean v1, p1, Lcom/android/server/job/controllers/JobStatus;->mTransportAffinitiesSatisfied:Z

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/high16 v1, 0x10000000

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    or-int/lit8 v1, v1, 0x7

    .line 17
    and-int/2addr v0, v1

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x1

    .line 27
    if-lt v0, v1, :cond_1

    .line 29
    return v3

    .line 30
    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    move-result-wide v4

    .line 39
    iget-wide v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 41
    cmp-long v1, v4, v6

    .line 43
    if-gez v1, :cond_2

    .line 45
    return v2

    .line 46
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 49
    move-result p1

    .line 50
    not-int p1, p1

    .line 51
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 53
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    .line 56
    move-result v1

    .line 57
    sub-int/2addr v1, v3

    .line 58
    :goto_1
    if-ltz v1, :cond_6

    .line 60
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 62
    invoke-virtual {v6, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 65
    move-result v6

    .line 66
    and-int v7, v6, p1

    .line 68
    if-eqz v7, :cond_3

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object v7, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 73
    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 76
    move-result-wide v7

    .line 77
    sub-long v7, v4, v7

    .line 79
    iget-wide v9, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 81
    cmp-long v7, v7, v9

    .line 83
    if-gtz v7, :cond_4

    .line 85
    move v7, v3

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move v7, v2

    .line 88
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    .line 91
    move-result v6

    .line 92
    if-le v6, v0, :cond_5

    .line 94
    if-eqz v7, :cond_5

    .line 96
    return v2

    .line 97
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    return v3
.end method

.method public isConstraintSatisfied(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 7
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x28

    .line 15
    if-eq v0, v1, :cond_5

    .line 17
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 19
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x1e

    .line 27
    const/16 v2, 0x12c

    .line 29
    if-lt v0, v1, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 34
    move-result v0

    .line 35
    if-ge v0, v2, :cond_5

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 40
    move-result v0

    .line 41
    if-lt v0, v2, :cond_3

    .line 43
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 45
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 47
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 49
    iget-object v3, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 51
    monitor-enter v3

    .line 52
    :try_start_0
    iget-object v4, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 54
    const/4 v5, -0x1

    .line 55
    invoke-virtual {v4, v5, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 61
    monitor-exit v3

    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 73
    monitor-exit v3

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    monitor-exit v3

    .line 76
    goto :goto_1

    .line 77
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0

    .line 79
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->hasEnoughSatisfiedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 85
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_4

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const/4 p0, 0x0

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    :goto_2
    const/4 p0, 0x1

    .line 97
    :goto_3
    return p0
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 7
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v0

    .line 16
    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 18
    const/high16 v2, 0x200000

    .line 20
    if-nez p2, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 23
    invoke-virtual {p1, v2, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 30
    move-result p2

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 34
    move-result p2

    .line 35
    iput p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 44
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 46
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 49
    const/16 p2, 0x80

    .line 51
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 54
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 56
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 59
    :cond_1
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    const/16 p2, 0x80

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 11
    invoke-virtual {p2, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 16
    iget-object p2, p2, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroid/util/ArraySet;

    .line 28
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 33
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 7
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 12
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 17
    iget-object v2, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 22
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 28
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 31
    move-result v0

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 34
    :goto_0
    if-ltz v0, :cond_3

    .line 36
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 38
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 44
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 46
    if-ne v2, p1, :cond_0

    .line 48
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 50
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 56
    :cond_0
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 58
    if-ne v2, p1, :cond_2

    .line 60
    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 62
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 78
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 81
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    :cond_0
    return-void
.end method

.method public final onSystemServicesReady()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 8
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    .line 14
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    .line 16
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 18
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 20
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 28
    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 32
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 37
    iget-boolean v2, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 39
    if-eqz v2, :cond_0

    .line 41
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 43
    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-direct {v2, v3, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 54
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 56
    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    .line 58
    const/4 v3, 0x2

    .line 59
    invoke-direct {v2, v3, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final onUidBiasChangedLocked(III)V
    .locals 9

    .line 1
    const/16 v0, 0x1e

    .line 3
    if-ge p2, v0, :cond_0

    .line 5
    if-ge p3, v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    sget-object p3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v0

    .line 17
    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 19
    iget-object v2, p3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 21
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v3, Landroid/util/ArraySet;

    .line 28
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 31
    invoke-virtual {v2, p1, v3}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    .line 34
    const/4 v2, 0x0

    .line 35
    move v4, v2

    .line 36
    move v5, v4

    .line 37
    :goto_0
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 40
    move-result v6

    .line 41
    if-ge v4, v6, :cond_2

    .line 43
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 49
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_1

    .line 55
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 58
    move-result v7

    .line 59
    const/high16 v8, 0x200000

    .line 61
    invoke-virtual {v6, v8, v0, v1, v7}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 64
    iget-object v6, v6, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 66
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 69
    move-result v6

    .line 70
    or-int/2addr v5, v6

    .line 71
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v5, :cond_4

    .line 76
    const/16 v3, 0x28

    .line 78
    if-ne p2, v3, :cond_4

    .line 80
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 83
    move-result p2

    .line 84
    invoke-virtual {p3, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_3

    .line 90
    return-void

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 94
    move-result p3

    .line 95
    if-ge v2, p3, :cond_4

    .line 97
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Ljava/lang/String;

    .line 103
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 105
    const-wide/16 v4, 0x0

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, p2, p3, v4}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Ljava/lang/Long;

    .line 117
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 120
    move-result-wide v4

    .line 121
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 124
    move-result-wide v4

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, p2, p3, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 8
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 19
    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 25
    :goto_0
    if-ltz v0, :cond_1

    .line 27
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 29
    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 36
    move-result v1

    .line 37
    if-ne v1, p1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 41
    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 44
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 49
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 52
    move-result v0

    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 55
    :goto_1
    if-ltz v0, :cond_4

    .line 57
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 59
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 65
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 67
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 70
    move-result v2

    .line 71
    if-eq v2, p1, :cond_2

    .line 73
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 75
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 78
    move-result v1

    .line 79
    if-ne v1, p1, :cond_3

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 83
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 86
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0
.end method

.method public final prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 3
    const/16 v1, 0x28

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 10
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    .line 16
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 18
    div-int/lit8 v3, v0, 0x64

    .line 20
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 30
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 32
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    .line 40
    if-nez v1, :cond_1

    .line 42
    new-instance v1, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    .line 44
    invoke-direct {v1}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;-><init>()V

    .line 47
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 49
    invoke-virtual {p0, v2, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    move-result-wide p0

    .line 61
    invoke-virtual {v1, v0, p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    .line 64
    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 6
    return-void
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x1

    .line 8
    move-object/from16 v5, p0

    .line 10
    iget-object v5, v5, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/16 v6, 0x64

    .line 17
    const/16 v7, 0xc8

    .line 19
    const/16 v8, 0x12c

    .line 21
    const/16 v9, 0x190

    .line 23
    const/16 v10, 0x1f4

    .line 25
    const/16 v11, 0x2c

    .line 27
    const-wide/32 v12, 0x5265c00

    .line 30
    const/4 v14, 0x0

    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v15

    .line 35
    sparse-switch v15, :sswitch_data_0

    .line 38
    :goto_0
    move v15, v3

    .line 39
    goto/16 :goto_1

    .line 41
    :sswitch_0
    const-string/jumbo v15, "fc_fallback_flexibility_deadline_ms"

    .line 44
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v15

    .line 48
    if-nez v15, :cond_0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/16 v15, 0xa

    .line 53
    goto/16 :goto_1

    .line 55
    :sswitch_1
    const-string/jumbo v15, "fc_applied_constraints"

    .line 58
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v15

    .line 62
    if-nez v15, :cond_1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 v15, 0x9

    .line 67
    goto/16 :goto_1

    .line 69
    :sswitch_2
    const-string/jumbo v15, "fc_fallback_flexibility_deadline_additional_score_time_factors"

    .line 72
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v15

    .line 76
    if-nez v15, :cond_2

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/16 v15, 0x8

    .line 81
    goto/16 :goto_1

    .line 83
    :sswitch_3
    const-string/jumbo v15, "fc_unseen_constraint_grace_period_ms"

    .line 86
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v15

    .line 90
    if-nez v15, :cond_3

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 v15, 0x7

    .line 94
    goto :goto_1

    .line 95
    :sswitch_4
    const-string/jumbo v15, "fc_percents_to_drop_flexible_constraints"

    .line 98
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v15

    .line 102
    if-nez v15, :cond_4

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const/4 v15, 0x6

    .line 106
    goto :goto_1

    .line 107
    :sswitch_5
    const-string/jumbo v15, "fc_flexibility_deadline_proximity_limit_ms"

    .line 110
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v15

    .line 114
    if-nez v15, :cond_5

    .line 116
    goto :goto_0

    .line 117
    :cond_5
    const/4 v15, 0x5

    .line 118
    goto :goto_1

    .line 119
    :sswitch_6
    const-string/jumbo v15, "fc_fallback_flexibility_deadlines"

    .line 122
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v15

    .line 126
    if-nez v15, :cond_6

    .line 128
    goto :goto_0

    .line 129
    :cond_6
    const/4 v15, 0x4

    .line 130
    goto :goto_1

    .line 131
    :sswitch_7
    const-string/jumbo v15, "fc_rescheduled_job_deadline_ms"

    .line 134
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v15

    .line 138
    if-nez v15, :cond_7

    .line 140
    goto :goto_0

    .line 141
    :cond_7
    const/4 v15, 0x3

    .line 142
    goto :goto_1

    .line 143
    :sswitch_8
    const-string/jumbo v15, "fc_fallback_flexibility_deadline_scores"

    .line 146
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v15

    .line 150
    if-nez v15, :cond_8

    .line 152
    goto :goto_0

    .line 153
    :cond_8
    const/4 v15, 0x2

    .line 154
    goto :goto_1

    .line 155
    :sswitch_9
    const-string/jumbo v15, "fc_max_rescheduled_deadline_ms"

    .line 158
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v15

    .line 162
    if-nez v15, :cond_9

    .line 164
    goto :goto_0

    .line 165
    :cond_9
    move v15, v4

    .line 166
    goto :goto_1

    .line 167
    :sswitch_a
    const-string/jumbo v15, "fc_min_time_between_flexibility_alarms_ms"

    .line 170
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result v15

    .line 174
    if-nez v15, :cond_a

    .line 176
    goto/16 :goto_0

    .line 178
    :cond_a
    move v15, v2

    .line 179
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 182
    goto/16 :goto_7

    .line 184
    :pswitch_0
    invoke-virtual {v0, v1, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 187
    move-result-wide v0

    .line 188
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    .line 190
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 192
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    .line 194
    cmp-long v3, v3, v0

    .line 196
    if-eqz v3, :cond_14

    .line 198
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    .line 200
    goto/16 :goto_7

    .line 202
    :pswitch_1
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 205
    move-result v0

    .line 206
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 208
    iget v6, v1, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 210
    and-int/2addr v0, v6

    .line 211
    iput v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 213
    iget v6, v1, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 215
    if-eq v6, v0, :cond_14

    .line 217
    iput v0, v1, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 219
    iput-boolean v4, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 221
    if-eqz v0, :cond_b

    .line 223
    iput-boolean v4, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 225
    iget-object v0, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 227
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 229
    iget-object v6, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 231
    monitor-enter v6

    .line 232
    :try_start_0
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    .line 234
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 237
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 240
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 242
    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    .line 245
    goto/16 :goto_7

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    throw v0

    .line 250
    :cond_b
    iput-boolean v2, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 252
    iget-object v0, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 254
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 256
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 258
    monitor-enter v2

    .line 259
    :try_start_2
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    .line 261
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 265
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 267
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 269
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 271
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 273
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mBroadcastReceiver:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;

    .line 275
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 280
    monitor-enter v1

    .line 281
    :try_start_3
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 283
    invoke-virtual {v2}, Landroid/util/SparseSetArray;->clear()V

    .line 286
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    .line 288
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 291
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    .line 293
    invoke-virtual {v2}, Landroid/util/SparseSetArray;->clear()V

    .line 296
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 298
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 301
    move-result v2

    .line 302
    sub-int/2addr v2, v4

    .line 303
    :goto_2
    if-ltz v2, :cond_c

    .line 305
    iget-object v4, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 307
    iget-object v5, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 309
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 312
    move-result-object v5

    .line 313
    check-cast v5, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 315
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 318
    add-int/2addr v2, v3

    .line 319
    goto :goto_2

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    goto :goto_3

    .line 322
    :cond_c
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    .line 324
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 327
    monitor-exit v1

    .line 328
    goto/16 :goto_7

    .line 330
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    throw v0

    .line 332
    :catchall_2
    move-exception v0

    .line 333
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 334
    throw v0

    .line 335
    :pswitch_2
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 339
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 341
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 343
    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z

    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_14

    .line 349
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 351
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 353
    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    .line 355
    iput-boolean v4, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 357
    goto/16 :goto_7

    .line 359
    :pswitch_3
    const-wide/32 v2, 0xf731400

    .line 362
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 365
    move-result-wide v0

    .line 366
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    .line 368
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 370
    iget-wide v6, v2, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 372
    cmp-long v3, v6, v0

    .line 374
    if-eqz v3, :cond_14

    .line 376
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    .line 378
    iput-boolean v4, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 380
    goto/16 :goto_7

    .line 382
    :pswitch_4
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    move-result-object v0

    .line 386
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 388
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 390
    new-instance v3, Landroid/util/KeyValueListParser;

    .line 392
    invoke-direct {v3, v11}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 395
    :try_start_5
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 398
    goto :goto_4

    .line 399
    :catch_0
    move-exception v0

    .line 400
    move-object v11, v0

    .line 401
    const-string v0, "JobScheduler.Flex"

    .line 403
    const-string v12, "Bad percent to drop key value string given"

    .line 405
    invoke-static {v0, v12, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    invoke-virtual {v3, v14}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 411
    :goto_4
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 414
    move-result-object v0

    .line 415
    check-cast v0, [I

    .line 417
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 420
    move-result-object v11

    .line 421
    check-cast v11, [I

    .line 423
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 426
    move-result-object v12

    .line 427
    check-cast v12, [I

    .line 429
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 432
    move-result-object v13

    .line 433
    check-cast v13, [I

    .line 435
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 438
    move-result-object v15

    .line 439
    check-cast v15, [I

    .line 441
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 444
    move-result-object v4

    .line 445
    invoke-virtual {v3, v4, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    move-result-object v4

    .line 449
    invoke-static {v4}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 452
    move-result-object v4

    .line 453
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 456
    move-result-object v10

    .line 457
    invoke-virtual {v3, v10, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    move-result-object v10

    .line 461
    invoke-static {v10}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 464
    move-result-object v10

    .line 465
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 468
    move-result-object v9

    .line 469
    invoke-virtual {v3, v9, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    move-result-object v9

    .line 473
    invoke-static {v9}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 476
    move-result-object v9

    .line 477
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 480
    move-result-object v8

    .line 481
    invoke-virtual {v3, v8, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    move-result-object v8

    .line 485
    invoke-static {v8}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 488
    move-result-object v8

    .line 489
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 492
    move-result-object v7

    .line 493
    invoke-virtual {v3, v7, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    move-result-object v3

    .line 497
    invoke-static {v3}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    .line 500
    move-result-object v3

    .line 501
    const/16 v7, 0x1f4

    .line 503
    if-nez v4, :cond_d

    .line 505
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 508
    move-result-object v4

    .line 509
    check-cast v4, [I

    .line 511
    :cond_d
    invoke-virtual {v1, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 514
    const/16 v4, 0x190

    .line 516
    if-nez v10, :cond_e

    .line 518
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 521
    move-result-object v7

    .line 522
    move-object v10, v7

    .line 523
    check-cast v10, [I

    .line 525
    :cond_e
    invoke-virtual {v1, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 528
    const/16 v4, 0x12c

    .line 530
    if-nez v9, :cond_f

    .line 532
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 535
    move-result-object v7

    .line 536
    move-object v9, v7

    .line 537
    check-cast v9, [I

    .line 539
    :cond_f
    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    const/16 v4, 0xc8

    .line 544
    if-nez v8, :cond_10

    .line 546
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 549
    move-result-object v7

    .line 550
    move-object v8, v7

    .line 551
    check-cast v8, [I

    .line 553
    :cond_10
    invoke-virtual {v1, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 556
    if-nez v3, :cond_11

    .line 558
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 561
    move-result-object v2

    .line 562
    move-object v3, v2

    .line 563
    check-cast v3, [I

    .line 565
    :cond_11
    invoke-virtual {v1, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 568
    const/16 v2, 0x1f4

    .line 570
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 573
    move-result-object v2

    .line 574
    check-cast v2, [I

    .line 576
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 579
    move-result v0

    .line 580
    if-eqz v0, :cond_12

    .line 582
    const/16 v2, 0x190

    .line 584
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 587
    move-result-object v0

    .line 588
    check-cast v0, [I

    .line 590
    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_12

    .line 596
    const/16 v2, 0x12c

    .line 598
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 601
    move-result-object v0

    .line 602
    check-cast v0, [I

    .line 604
    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 607
    move-result v0

    .line 608
    if-eqz v0, :cond_12

    .line 610
    const/16 v2, 0xc8

    .line 612
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 615
    move-result-object v0

    .line 616
    check-cast v0, [I

    .line 618
    invoke-static {v13, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 621
    move-result v0

    .line 622
    if-eqz v0, :cond_12

    .line 624
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 627
    move-result-object v0

    .line 628
    check-cast v0, [I

    .line 630
    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 633
    move-result v0

    .line 634
    if-nez v0, :cond_14

    .line 636
    :cond_12
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 638
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 640
    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    .line 642
    const/4 v1, 0x1

    .line 643
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 645
    goto/16 :goto_7

    .line 647
    :pswitch_5
    const-wide/32 v2, 0xdbba0

    .line 650
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 653
    move-result-wide v0

    .line 654
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    .line 656
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 658
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    .line 660
    cmp-long v3, v3, v0

    .line 662
    if-eqz v3, :cond_14

    .line 664
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    .line 666
    const/4 v1, 0x1

    .line 667
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 669
    goto/16 :goto_7

    .line 671
    :pswitch_6
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    move-result-object v0

    .line 675
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 677
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 679
    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z

    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_14

    .line 685
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 687
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 689
    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    .line 691
    const/4 v1, 0x1

    .line 692
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 694
    goto/16 :goto_7

    .line 696
    :pswitch_7
    const-wide/32 v2, 0x36ee80

    .line 699
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 702
    move-result-wide v0

    .line 703
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    .line 705
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 707
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    .line 709
    cmp-long v3, v3, v0

    .line 711
    if-eqz v3, :cond_14

    .line 713
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    .line 715
    const/4 v1, 0x1

    .line 716
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 718
    goto/16 :goto_7

    .line 720
    :pswitch_8
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    move-result-object v0

    .line 724
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 726
    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 728
    new-instance v3, Landroid/util/KeyValueListParser;

    .line 730
    invoke-direct {v3, v11}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 733
    :try_start_6
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    .line 736
    :goto_5
    const/16 v4, 0x1f4

    .line 738
    goto :goto_6

    .line 739
    :catch_1
    move-exception v0

    .line 740
    move-object v4, v0

    .line 741
    const-string v0, "JobScheduler.Flex"

    .line 743
    const-string v7, "Bad string given"

    .line 745
    invoke-static {v0, v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    invoke-virtual {v3, v14}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 751
    goto :goto_5

    .line 752
    :goto_6
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 755
    move-result v0

    .line 756
    const/16 v7, 0x190

    .line 758
    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 761
    move-result v8

    .line 762
    const/16 v9, 0x12c

    .line 764
    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 767
    move-result v10

    .line 768
    const/16 v11, 0xc8

    .line 770
    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 773
    move-result v12

    .line 774
    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 777
    move-result v13

    .line 778
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 781
    move-result-object v14

    .line 782
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 785
    move-result v15

    .line 786
    invoke-virtual {v3, v14, v15}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 789
    move-result v4

    .line 790
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 793
    move-result-object v14

    .line 794
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 797
    move-result v15

    .line 798
    invoke-virtual {v3, v14, v15}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 801
    move-result v7

    .line 802
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 805
    move-result-object v14

    .line 806
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 809
    move-result v15

    .line 810
    invoke-virtual {v3, v14, v15}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 813
    move-result v14

    .line 814
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 817
    move-result-object v15

    .line 818
    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 821
    move-result v9

    .line 822
    invoke-virtual {v3, v15, v9}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 825
    move-result v9

    .line 826
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 829
    move-result-object v15

    .line 830
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 833
    move-result v2

    .line 834
    invoke-virtual {v3, v15, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 837
    move-result v2

    .line 838
    const/16 v3, 0x1f4

    .line 840
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 843
    const/16 v3, 0x190

    .line 845
    invoke-virtual {v1, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 848
    const/16 v3, 0x12c

    .line 850
    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 853
    invoke-virtual {v1, v11, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 856
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 859
    if-ne v0, v4, :cond_13

    .line 861
    if-ne v8, v7, :cond_13

    .line 863
    if-ne v10, v14, :cond_13

    .line 865
    if-ne v12, v9, :cond_13

    .line 867
    if-eq v13, v2, :cond_14

    .line 869
    :cond_13
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 871
    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 873
    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    .line 875
    const/4 v1, 0x1

    .line 876
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 878
    goto :goto_7

    .line 879
    :pswitch_9
    invoke-virtual {v0, v1, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 882
    move-result-wide v0

    .line 883
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    .line 885
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 887
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    .line 889
    cmp-long v3, v3, v0

    .line 891
    if-eqz v3, :cond_14

    .line 893
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    .line 895
    const/4 v1, 0x1

    .line 896
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 898
    goto :goto_7

    .line 899
    :pswitch_a
    const-wide/32 v2, 0xea60

    .line 902
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 905
    move-result-wide v0

    .line 906
    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 908
    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 910
    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    .line 912
    cmp-long v3, v3, v0

    .line 914
    if-eqz v3, :cond_14

    .line 916
    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    .line 918
    iget-object v2, v2, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 920
    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    .line 923
    const/4 v1, 0x1

    .line 924
    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 926
    :cond_14
    :goto_7
    return-void

    .line 927
    :sswitch_data_0
    .sparse-switch
        -0x777ea8fd -> :sswitch_a
        -0x5dcd0a55 -> :sswitch_9
        -0x2f1814d9 -> :sswitch_8
        -0x2035877c -> :sswitch_7
        0x5fa939a -> :sswitch_6
        0x22a4f609 -> :sswitch_5
        0x274d921d -> :sswitch_4
        0x2c861644 -> :sswitch_3
        0x6c3c0f71 -> :sswitch_2
        0x6c903af2 -> :sswitch_1
        0x71a3d7ac -> :sswitch_0
    .end sparse-switch

    .line 973
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setConstraintSatisfied(IJZ)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setConstraintSatisfied:  constraint: "

    .line 4
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 9
    and-int/2addr v2, p1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v3

    .line 16
    :goto_0
    if-ne v2, p4, :cond_1

    .line 18
    monitor-exit v1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    sget-boolean v2, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    .line 24
    if-eqz v2, :cond_2

    .line 26
    const-string v2, "JobScheduler.Flex"

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, " state: "

    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 53
    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 55
    invoke-virtual {v0, v2, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 58
    if-nez p4, :cond_3

    .line 60
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 62
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 65
    :cond_3
    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 67
    not-int p3, p1

    .line 68
    and-int/2addr p2, p3

    .line 69
    if-eqz p4, :cond_4

    .line 71
    move p3, p1

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move p3, v3

    .line 74
    :goto_1
    or-int/2addr p2, p3

    .line 75
    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 77
    const/high16 p2, 0x10000000

    .line 79
    and-int/2addr p1, p2

    .line 80
    if-eqz p1, :cond_5

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 84
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 86
    if-eqz p1, :cond_6

    .line 88
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 90
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    :cond_6
    monitor-exit v1

    .line 98
    return-void

    .line 99
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p0
.end method

.method public final setLocalPolicyForTesting(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v1, p2, :cond_1

    .line 9
    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 11
    if-eq v1, p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_3

    .line 18
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 19
    :goto_1
    iput-boolean p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    .line 21
    if-eqz p2, :cond_2

    .line 23
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 28
    iget p1, p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 30
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 32
    :goto_2
    if-eqz v1, :cond_3

    .line 34
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 36
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 43
    :cond_3
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final startTrackingLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 7
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 9
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    .line 14
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public final unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 3
    const/16 v1, 0x28

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 10
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 12
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    .line 20
    if-nez v0, :cond_1

    .line 22
    const-string p0, "JobScheduler.Flex"

    .line 24
    const-string p1, "Unprepared a job that didn\'t result in a score change"

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 32
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getPriority()I

    .line 35
    move-result p1

    .line 36
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    .line 38
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 40
    div-int/lit8 v2, p1, 0x64

    .line 42
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 49
    move-result p0

    .line 50
    neg-int p0, p0

    .line 51
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    .line 63
    return-void
.end method
