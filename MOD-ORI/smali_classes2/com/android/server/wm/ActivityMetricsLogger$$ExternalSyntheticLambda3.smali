.class public final synthetic Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Ljava/lang/Object;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$2:Z

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$2:Z

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 17
    .line 18
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyFullyDrawn(ZLcom/android/server/wm/ActivityRecord;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 30
    .line 31
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$2:Z

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-boolean v9, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 39
    .line 40
    new-instance v0, Landroid/metrics/LogMaker;

    .line 41
    .line 42
    const/16 v4, 0x442

    .line 43
    .line 44
    invoke-direct {v0, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 50
    .line 51
    .line 52
    const/16 v4, 0x367

    .line 53
    .line 54
    iget-object v5, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 57
    .line 58
    .line 59
    iget v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    .line 60
    .line 61
    int-to-long v10, v4

    .line 62
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/16 v6, 0x443

    .line 67
    .line 68
    invoke-virtual {v0, v6, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 69
    .line 70
    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    const/16 v4, 0xd

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/16 v4, 0xc

    .line 77
    .line 78
    :goto_0
    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 79
    .line 80
    .line 81
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const/16 v6, 0x144

    .line 86
    .line 87
    invoke-virtual {v0, v6, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 88
    .line 89
    .line 90
    iget-object v4, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 91
    .line 92
    invoke-virtual {v4, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 96
    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    .line 106
    .line 107
    iput-object v0, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 108
    .line 109
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 114
    .line 115
    if-nez v4, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    iget-object v6, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 119
    .line 120
    invoke-virtual {v0, v6, v4, v5}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    :goto_1
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_2
    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v7, 0x1

    .line 137
    if-eqz v4, :cond_5

    .line 138
    .line 139
    invoke-static {v4}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_5

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 154
    .line 155
    iget v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 156
    .line 157
    invoke-virtual {v1, v6, v8, v4}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    if-eqz v1, :cond_4

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_4

    .line 168
    .line 169
    move v6, v7

    .line 170
    :cond_4
    move/from16 v17, v6

    .line 171
    .line 172
    move/from16 v16, v7

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    move/from16 v16, v6

    .line 176
    .line 177
    move/from16 v17, v16

    .line 178
    .line 179
    :goto_3
    iget-object v1, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 180
    .line 181
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 182
    .line 183
    if-eqz v3, :cond_6

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    const/4 v3, 0x2

    .line 187
    move v7, v3

    .line 188
    :goto_4
    invoke-virtual {v0}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    invoke-virtual {v0}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    iget v14, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    .line 197
    .line 198
    iget v15, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 201
    .line 202
    .line 203
    move-result v18

    .line 204
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 205
    .line 206
    iget-wide v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    .line 207
    .line 208
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 209
    .line 210
    .line 211
    move-result-wide v19

    .line 212
    iget-object v6, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 213
    .line 214
    iget-object v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 215
    .line 216
    const/16 v4, 0x32

    .line 217
    .line 218
    move v5, v1

    .line 219
    invoke-static/range {v4 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJIIIIZZIJ)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
