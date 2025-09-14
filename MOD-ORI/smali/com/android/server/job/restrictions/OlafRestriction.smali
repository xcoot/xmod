.class public final Lcom/android/server/job/restrictions/OlafRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isSystemAppCache:Landroid/util/ArrayMap;

.field public mForceDisabled:Z

.field public mForceRestricted:Z

.field public mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field public mOlafOn:Z

.field public mOlafTracker:Lcom/android/server/job/restrictions/OlafRestriction$1;

.field public mOlafUid:I

.field public mPowerExemptionManager:Landroid/os/PowerExemptionManager;


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "Olaf status: "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "("

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ")"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v0, " | F"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    const-string p0, " | D"

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    const-string p0, ""

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public getOlafStatus()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 9

    .line 1
    iget-boolean p2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 8
    .line 9
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 10
    .line 11
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-ne v2, v3, :cond_2

    .line 15
    .line 16
    const-string v2, "android"

    .line 17
    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    .line 32
    .line 33
    const/4 v7, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    return v7

    .line 37
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 38
    .line 39
    if-eqz v2, :cond_f

    .line 40
    .line 41
    iget v2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    .line 42
    .line 43
    if-ne v2, v1, :cond_4

    .line 44
    .line 45
    return v0

    .line 46
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    return v0

    .line 53
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iget-object v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->isSystemAppCache:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Boolean;

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    goto :goto_1

    .line 72
    :cond_6
    iget-object v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 73
    .line 74
    const-wide/32 v4, 0x500000

    .line 75
    .line 76
    .line 77
    const/16 v2, 0x3e8

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    move-object v6, p2

    .line 81
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_7

    .line 86
    .line 87
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 88
    .line 89
    and-int/2addr v1, v7

    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    move v1, v7

    .line 93
    goto :goto_0

    .line 94
    :cond_7
    move v1, v0

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->isSystemAppCache:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :goto_1
    if-eqz v1, :cond_8

    .line 105
    .line 106
    return v0

    .line 107
    :cond_8
    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 108
    .line 109
    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 110
    .line 111
    iget-object v2, v1, Lcom/android/server/am/FreecessController;->mOlafJobExemptionList:Ljava/util/Set;

    .line 112
    .line 113
    if-nez v2, :cond_9

    .line 114
    .line 115
    sget-object v2, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 116
    .line 117
    iget-object v3, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafJobRestrictionExemptionList:Ljava/util/Set;

    .line 118
    .line 119
    monitor-enter v3

    .line 120
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    .line 121
    .line 122
    iget-object v2, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mOlafJobRestrictionExemptionList:Ljava/util/Set;

    .line 123
    .line 124
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iput-object v4, v1, Lcom/android/server/am/FreecessController;->mOlafJobExemptionList:Ljava/util/Set;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0

    .line 134
    :cond_9
    :goto_2
    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mOlafJobExemptionList:Ljava/util/Set;

    .line 135
    .line 136
    if-eqz v1, :cond_a

    .line 137
    .line 138
    check-cast v1, Ljava/util/HashSet;

    .line 139
    .line 140
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    goto :goto_3

    .line 145
    :cond_a
    move v1, v0

    .line 146
    :goto_3
    if-eqz v1, :cond_b

    .line 147
    .line 148
    return v0

    .line 149
    :cond_b
    iget-object v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 150
    .line 151
    invoke-virtual {v1, p2, v7}, Landroid/os/PowerExemptionManager;->isAllowListed(Ljava/lang/String;Z)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_c

    .line 156
    .line 157
    return v0

    .line 158
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    const/16 v0, 0x190

    .line 163
    .line 164
    if-ge p2, v0, :cond_e

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-eqz p2, :cond_d

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_d
    return v7

    .line 174
    :cond_e
    :goto_4
    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    xor-int/2addr p0, v7

    .line 181
    return p0

    .line 182
    :cond_f
    return v0
.end method
