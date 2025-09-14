.class public abstract Lcom/android/server/job/controllers/StateController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public final mStateChangedListener:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 21
    .line 22
    return-void
.end method

.method public static logDeviceWideConstraintStateToStatsd(IZ)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p0, v1, :cond_1

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    sparse-switch p0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const/4 p0, 0x5

    .line 15
    goto :goto_0

    .line 16
    :sswitch_1
    const/4 p0, 0x7

    .line 17
    goto :goto_0

    .line 18
    :sswitch_2
    const/16 p0, 0x8

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_3
    const/16 p0, 0x9

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_4
    const/16 p0, 0xa

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_5
    const/16 p0, 0xe

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_6
    const/16 p0, 0xb

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :sswitch_7
    const/16 p0, 0xf

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :sswitch_8
    const/4 p0, 0x3

    .line 37
    goto :goto_0

    .line 38
    :sswitch_9
    const/4 p0, 0x6

    .line 39
    goto :goto_0

    .line 40
    :sswitch_a
    const/4 p0, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p0, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p0, v1

    .line 45
    :goto_0
    if-eqz p1, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v1

    .line 49
    :goto_1
    const/16 p1, 0x202

    .line 50
    .line 51
    invoke-static {p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_a
        0x4 -> :sswitch_9
        0x8 -> :sswitch_8
        0x200000 -> :sswitch_7
        0x400000 -> :sswitch_6
        0x800000 -> :sswitch_5
        0x1000000 -> :sswitch_4
        0x2000000 -> :sswitch_3
        0x4000000 -> :sswitch_2
        0x10000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static packageToString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "<"

    .line 2
    .line 3
    const-string v1, ">"

    .line 4
    .line 5
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 2
    return-void
.end method

.method public abstract dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public abstract maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public onAppRemovedLocked(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSystemServicesReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public onUidBiasChangedLocked(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserAddedLocked(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public reevaluateStateLocked(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public startTrackingLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v3, "wouldBeReadyWithConstraintLocked: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, " constraint="

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, " readyWithConstraint="

    .line 34
    .line 35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, "JobScheduler.SC"

    .line 39
    .line 40
    invoke-static {p2, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 p2, 0x0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    return p2

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 60
    .line 61
    iget v4, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const-string v4, "areComponentsInPlaceLocked: "

    .line 68
    .line 69
    const-string v5, "JobScheduler"

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v7, " exists="

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v7, " userStarted="

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v7, " backingUp="

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_2
    if-eqz v0, :cond_5

    .line 117
    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " restricted due to "

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget p1, v0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    .line 149
    .line 150
    invoke-static {p0, p1, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    :cond_5
    :goto_0
    return p2
.end method
