.class public final Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mChangedJobs:Landroid/util/ArraySet;

.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public mLastReportedStatsdBatteryNotLow:Ljava/lang/Boolean;

.field public mLastReportedStatsdStablePower:Ljava/lang/Boolean;

.field public final mTopStartedJobs:Landroid/util/ArraySet;

.field public final mTrackedTasks:Landroid/util/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "JobScheduler.Battery"

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
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
    sput-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance p1, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance p1, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdBatteryNotLow:Ljava/lang/Boolean;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdStablePower:Ljava/lang/Boolean;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stable power: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2
    :goto_0
    const-string v4, "Not low: "

    .line 3
    invoke-static {v0, v2, p1, v4}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 7
    invoke-virtual {p2, v0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    const-string v1, "#"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 10
    const-string v1, " from "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 12
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 11

    const-wide v0, 0x20b00000004L

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000002L

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 15
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const-wide v7, 0x10800000001L

    .line 16
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000002L

    .line 17
    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v4

    .line 18
    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 19
    :goto_1
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v6, v4, :cond_2

    .line 20
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 21
    invoke-virtual {p2, v4}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    const-wide v7, 0x20b00000005L

    .line 22
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10b00000001L

    .line 23
    invoke-virtual {v4, p1, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v9, 0x10500000002L

    .line 24
    iget v4, v4, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 25
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getTopStartedJobs()Landroid/util/ArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTrackedJobs()Landroid/util/ArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final maybeReportNewChargingStateLocked()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isPowerConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    move v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    sget-boolean v5, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    const-string/jumbo v5, "maybeReportNewChargingStateLocked: "

    .line 32
    .line 33
    .line 34
    const-string v6, "/"

    .line 35
    .line 36
    invoke-static {v5, v1, v6, v2, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "JobScheduler.Battery"

    .line 41
    .line 42
    invoke-static {v6, v5, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdStablePower:Ljava/lang/Boolean;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eq v5, v2, :cond_3

    .line 54
    .line 55
    :cond_2
    invoke-static {v3, v2}, Lcom/android/server/job/controllers/StateController;->logDeviceWideConstraintStateToStatsd(IZ)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iput-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdStablePower:Ljava/lang/Boolean;

    .line 63
    .line 64
    :cond_3
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdBatteryNotLow:Ljava/lang/Boolean;

    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eq v5, v4, :cond_5

    .line 74
    .line 75
    :cond_4
    invoke-static {v6, v4}, Lcom/android/server/job/controllers/StateController;->logDeviceWideConstraintStateToStatsd(IZ)V

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iput-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdBatteryNotLow:Ljava/lang/Boolean;

    .line 83
    .line 84
    :cond_5
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v7

    .line 93
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    iget-object v9, p0, Lcom/android/server/job/controllers/BatteryController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 98
    .line 99
    invoke-virtual {v9, v3, v7, v8, v5}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IJZ)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v6, v7, v8, v4}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IJZ)V

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    sub-int/2addr v5, v3

    .line 112
    :goto_1
    if-ltz v5, :cond_a

    .line 113
    .line 114
    iget-object v9, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 115
    .line 116
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 121
    .line 122
    invoke-virtual {v9, v3}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-eqz v10, :cond_8

    .line 127
    .line 128
    iget v10, v9, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 129
    .line 130
    invoke-virtual {v0, v10}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    const/16 v11, 0x28

    .line 135
    .line 136
    if-eq v10, v11, :cond_6

    .line 137
    .line 138
    iget-object v10, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 139
    .line 140
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-eqz v10, :cond_7

    .line 145
    .line 146
    :cond_6
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    const/16 v11, 0x12c

    .line 151
    .line 152
    if-lt v10, v11, :cond_7

    .line 153
    .line 154
    invoke-virtual {v9, v3, v7, v8, v1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_8

    .line 159
    .line 160
    iget-object v10, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    .line 161
    .line 162
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_7
    invoke-virtual {v9, v3, v7, v8, v2}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_8

    .line 171
    .line 172
    iget-object v10, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    .line 173
    .line 174
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :cond_8
    :goto_2
    invoke-virtual {v9, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-eqz v10, :cond_9

    .line 182
    .line 183
    invoke-virtual {v9, v6, v7, v8, v4}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-eqz v10, :cond_9

    .line 188
    .line 189
    iget-object v10, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    .line 190
    .line 191
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :cond_9
    add-int/lit8 v5, v5, -0x1

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_a
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 198
    .line 199
    if-nez v2, :cond_c

    .line 200
    .line 201
    if-eqz v4, :cond_b

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_b
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-lez v1, :cond_d

    .line 211
    .line 212
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_c
    :goto_3
    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 220
    .line 221
    .line 222
    :cond_d
    :goto_4
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    .line 1
    const/4 p2, 0x3

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v4, 0x28

    .line 41
    .line 42
    if-eq v2, v4, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    move p0, p2

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 p0, 0x0

    .line 68
    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isPowerConnected()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    const/4 p2, 0x2

    .line 84
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onBatteryStateChangedLocked()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/job/controllers/BatteryController$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/BatteryController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onUidBiasChangedLocked(III)V
    .locals 0

    .line 1
    const/16 p1, 0x28

    .line 2
    .line 3
    if-eq p2, p1, :cond_0

    .line 4
    .line 5
    if-ne p3, p1, :cond_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    .line 8
    .line 9
    .line 10
    :cond_1
    return-void
.end method

.method public final prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, "JobScheduler.Battery"

    .line 10
    .line 11
    sget-boolean v1, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Prepping for "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 37
    .line 38
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0x28

    .line 45
    .line 46
    if-ne v2, v3, :cond_3

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, " is top started job"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/BatteryController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/BatteryController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
