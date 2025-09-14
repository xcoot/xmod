.class public final Lcom/android/server/job/restrictions/ThermalStatusRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mForceRestricted:Z

.field public mIncreased:Z

.field public mSIOPTracker:Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;

.field public volatile mThermalStatus:I


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "Thermal status: "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getThermalStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 2
    .line 3
    return p0
.end method

.method public final isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/job/Flags;->thermalRestrictionsToFgsJobs()Z

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x23

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-lt p2, v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p2, v0, :cond_2

    .line 14
    .line 15
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "android"

    .line 18
    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/16 v2, 0x320

    .line 32
    .line 33
    if-eq p2, v2, :cond_1

    .line 34
    .line 35
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const/16 v2, 0x321

    .line 42
    .line 43
    if-ne p2, v2, :cond_2

    .line 44
    .line 45
    :cond_1
    return v1

    .line 46
    :cond_2
    iget p2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    const/4 v3, 0x1

    .line 50
    if-ge p2, v2, :cond_e

    .line 51
    .line 52
    iget-boolean p2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iget v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 62
    .line 63
    if-lt v2, v0, :cond_b

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    return v1

    .line 72
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-gtz p2, :cond_5

    .line 83
    .line 84
    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_6

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_6

    .line 99
    .line 100
    :cond_5
    move v1, v3

    .line 101
    :cond_6
    return v1

    .line 102
    :cond_7
    invoke-static {}, Lcom/android/server/job/Flags;->thermalRestrictionsToFgsJobs()Z

    .line 103
    .line 104
    .line 105
    const/16 v0, 0x190

    .line 106
    .line 107
    if-ne p2, v0, :cond_a

    .line 108
    .line 109
    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_8

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_9

    .line 124
    .line 125
    :cond_8
    move v1, v3

    .line 126
    :cond_9
    return v1

    .line 127
    :cond_a
    return v3

    .line 128
    :cond_b
    iget v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 129
    .line 130
    if-lt v0, v3, :cond_d

    .line 131
    .line 132
    invoke-static {}, Lcom/android/server/job/Flags;->thermalRestrictionsToFgsJobs()Z

    .line 133
    .line 134
    .line 135
    const/16 v0, 0x64

    .line 136
    .line 137
    if-eq p2, v0, :cond_c

    .line 138
    .line 139
    const/16 v0, 0xc8

    .line 140
    .line 141
    if-ne p2, v0, :cond_d

    .line 142
    .line 143
    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_c

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_d

    .line 158
    .line 159
    :cond_c
    move v1, v3

    .line 160
    :cond_d
    return v1

    .line 161
    :cond_e
    :goto_0
    return v3
.end method

.method public final onSystemServicesReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroid/os/PowerManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/PowerManager;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
