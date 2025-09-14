.class public final synthetic Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updatePowerAllowlistCache()V

    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateCarrierPrivilegedCallbackRegistration()V

    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p0, Lcom/android/server/job/controllers/FlexibilityController;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v0, Landroid/util/ArraySet;

    .line 27
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    move-result-wide v2

    .line 42
    const/4 v4, 0x0

    .line 43
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 45
    iget-object v5, v5, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v5

    .line 51
    if-ge v4, v5, :cond_3

    .line 53
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 55
    iget-object v6, v5, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 60
    move-result v6

    .line 61
    if-le v4, v6, :cond_0

    .line 63
    const-string v5, "JobScheduler.Flex"

    .line 65
    const-string v6, "Asked for a larger number of constraints than exists."

    .line 67
    invoke-static {v5, v6}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v5, 0x0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    iget-object v5, v5, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Landroid/util/ArraySet;

    .line 80
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 83
    move-result v6

    .line 84
    add-int/lit8 v6, v6, -0x1

    .line 86
    :goto_2
    if-ltz v6, :cond_2

    .line 88
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 94
    iget-object v8, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 96
    invoke-virtual {v8, v7, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->updateFlexibleConstraints(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 99
    iget-object v8, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 101
    invoke-virtual {v8, v7, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 104
    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 107
    move-result v8

    .line 108
    const/high16 v9, 0x200000

    .line 110
    invoke-virtual {v7, v9, v2, v3, v8}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_1

    .line 116
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_3

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_4

    .line 122
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 132
    move-result v1

    .line 133
    if-lez v1, :cond_4

    .line 135
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 140
    :cond_4
    return-void

    .line 141
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
