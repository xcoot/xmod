.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;ZJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$1:Z

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$3:J

    .line 11
    .line 12
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$4:J

    .line 13
    .line 14
    iput-wide p9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$5:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$1:Z

    .line 6
    .line 7
    iget-wide v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$2:J

    .line 8
    .line 9
    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$3:J

    .line 10
    .line 11
    iget-wide v7, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$4:J

    .line 12
    .line 13
    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;->f$5:J

    .line 14
    .line 15
    move-object/from16 v9, p1

    .line 16
    .line 17
    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 29
    .line 30
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 31
    .line 32
    iget v11, v10, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 33
    .line 34
    iget-boolean v14, v10, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    .line 35
    .line 36
    move-wide v15, v12

    .line 37
    if-eqz v14, :cond_4

    .line 38
    .line 39
    const/4 v10, 0x5

    .line 40
    if-lt v11, v10, :cond_5

    .line 41
    .line 42
    const/16 v10, 0xa

    .line 43
    .line 44
    if-gt v11, v10, :cond_5

    .line 45
    .line 46
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 47
    .line 48
    iget-object v10, v10, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v10

    .line 51
    :try_start_0
    iget-wide v14, v0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 52
    .line 53
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 54
    .line 55
    invoke-virtual {v11}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-eqz v11, :cond_1

    .line 60
    .line 61
    iget-wide v12, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 62
    .line 63
    move-wide/from16 v17, v7

    .line 64
    .line 65
    move-wide v11, v12

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-wide v11, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 68
    .line 69
    move-wide/from16 v17, v7

    .line 70
    .line 71
    :goto_0
    iget-wide v7, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    .line 72
    .line 73
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    const-wide/16 v19, 0x0

    .line 77
    .line 78
    cmp-long v0, v14, v19

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    const-wide/16 v19, 0x3

    .line 83
    .line 84
    mul-long v19, v19, v14

    .line 85
    .line 86
    const-wide/16 v21, 0x2

    .line 87
    .line 88
    div-long v19, v19, v21

    .line 89
    .line 90
    cmp-long v0, v11, v19

    .line 91
    .line 92
    if-lez v0, :cond_5

    .line 93
    .line 94
    add-long/2addr v3, v14

    .line 95
    cmp-long v0, v11, v3

    .line 96
    .line 97
    if-lez v0, :cond_5

    .line 98
    .line 99
    const/16 v0, 0x80

    .line 100
    .line 101
    const-string v2, "Kill"

    .line 102
    .line 103
    invoke-static {v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    const-string v2, " in idle maint: pss="

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    const-string v2, " in idle maint: rss="

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_3

    .line 141
    .line 142
    const-string v2, ", swapPss="

    .line 143
    .line 144
    const-string v3, ", initialPss="

    .line 145
    .line 146
    invoke-static {v0, v2, v7, v8, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    const-string v2, ", initialRss="

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    :goto_2
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v2, ", period="

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 164
    .line 165
    .line 166
    const-string v2, ", lowRamPeriod="

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move-wide/from16 v2, v17

    .line 172
    .line 173
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 174
    .line 175
    .line 176
    const-string v2, "ActivityManager"

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v2, v0}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 186
    .line 187
    new-instance v8, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda23;

    .line 188
    .line 189
    move-object v0, v8

    .line 190
    move-object v2, v9

    .line 191
    move-wide v3, v11

    .line 192
    move-wide v5, v14

    .line 193
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;JJ)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    throw v0

    .line 203
    :cond_4
    const/16 v2, 0xe

    .line 204
    .line 205
    if-ge v11, v2, :cond_5

    .line 206
    .line 207
    if-ltz v11, :cond_5

    .line 208
    .line 209
    const/4 v2, 0x1

    .line 210
    iput-boolean v2, v10, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    .line 211
    .line 212
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 213
    .line 214
    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 215
    .line 216
    monitor-enter v2

    .line 217
    const-wide/16 v3, 0x0

    .line 218
    .line 219
    :try_start_2
    iput-wide v3, v0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    .line 220
    .line 221
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 222
    .line 223
    iget v10, v10, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 224
    .line 225
    iget-object v11, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 226
    .line 227
    const/4 v14, 0x1

    .line 228
    move-object v9, v0

    .line 229
    move-wide v12, v15

    .line 230
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 231
    .line 232
    .line 233
    monitor-exit v2

    .line 234
    goto :goto_3

    .line 235
    :catchall_1
    move-exception v0

    .line 236
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 237
    throw v0

    .line 238
    :cond_5
    :goto_3
    return-void
.end method
