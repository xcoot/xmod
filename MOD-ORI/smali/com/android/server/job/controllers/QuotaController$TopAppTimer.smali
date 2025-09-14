.class public final Lcom/android/server/job/controllers/QuotaController$TopAppTimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivities:Landroid/util/SparseArray;

.field public final mPkg:Landroid/content/pm/UserPackage;

.field public mStartTimeElapsed:J

.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-static {p2, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final processEventLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v11

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v2, v3, :cond_4

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    .line 23
    const/16 v3, 0x17

    .line 24
    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    const/16 v3, 0x18

    .line 28
    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 34
    .line 35
    iget v1, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 42
    .line 43
    if-eqz v1, :cond_6

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_6

    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 54
    .line 55
    iget-wide v2, v1, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 56
    .line 57
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    .line 58
    .line 59
    sub-long v4, v11, v4

    .line 60
    .line 61
    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 62
    .line 63
    div-long v8, v4, v6

    .line 64
    .line 65
    long-to-int v8, v8

    .line 66
    rem-long/2addr v4, v6

    .line 67
    const-wide/16 v6, 0x3e8

    .line 68
    .line 69
    cmp-long v4, v4, v6

    .line 70
    .line 71
    if-ltz v4, :cond_1

    .line 72
    .line 73
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    :cond_1
    int-to-long v4, v8

    .line 76
    mul-long v9, v2, v4

    .line 77
    .line 78
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v3, "Crediting "

    .line 85
    .line 86
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v3, " "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string/jumbo v3, "ms for "

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    .line 109
    .line 110
    sub-long v3, v11, v3

    .line 111
    .line 112
    iget-wide v13, v1, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 113
    .line 114
    div-long v6, v3, v13

    .line 115
    .line 116
    long-to-int v5, v6

    .line 117
    rem-long/2addr v3, v13

    .line 118
    const-wide/16 v6, 0x3e8

    .line 119
    .line 120
    cmp-long v3, v3, v6

    .line 121
    .line 122
    if-ltz v3, :cond_2

    .line 123
    .line 124
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    :cond_2
    const-string v3, " time chunks"

    .line 127
    .line 128
    const-string v4, "JobScheduler.Quota"

    .line 129
    .line 130
    invoke-static {v2, v5, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    .line 134
    .line 135
    iget v3, v2, Landroid/content/pm/UserPackage;->userId:I

    .line 136
    .line 137
    iget-object v2, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1, v3, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    .line 144
    .line 145
    iget v4, v2, Landroid/content/pm/UserPackage;->userId:I

    .line 146
    .line 147
    iget-object v5, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 150
    .line 151
    move-wide v6, v11

    .line 152
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    .line 159
    .line 160
    iget v2, v0, Landroid/content/pm/UserPackage;->userId:I

    .line 161
    .line 162
    iget-object v0, v0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v1, v2, v0, v11, v12}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_4
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 175
    .line 176
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_5

    .line 181
    .line 182
    iput-wide v11, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    .line 183
    .line 184
    :cond_5
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 185
    .line 186
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 187
    .line 188
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_0
    return-void
.end method
