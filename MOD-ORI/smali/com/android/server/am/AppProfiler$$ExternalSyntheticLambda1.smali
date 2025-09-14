.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppProfiler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$3:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppProfiler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$3:J

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-eq p1, v1, :cond_9

    .line 15
    .line 16
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 23
    .line 24
    if-eqz v2, :cond_7

    .line 25
    .line 26
    new-instance v1, Lcom/android/server/am/ProcessMemInfo;

    .line 27
    .line 28
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 29
    .line 30
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 31
    .line 32
    iget v7, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 33
    .line 34
    iget v11, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 35
    .line 36
    iget-object v9, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 39
    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v5, 0x0

    .line 48
    :goto_0
    move-object v10, v5

    .line 49
    goto :goto_4

    .line 50
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const/16 v10, 0x80

    .line 53
    .line 54
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .line 56
    .line 57
    const/16 v10, 0x20

    .line 58
    .line 59
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v10, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 63
    .line 64
    instance-of v12, v10, Landroid/content/ComponentName;

    .line 65
    .line 66
    const-string/jumbo v13, "{null}"

    .line 67
    .line 68
    .line 69
    if-eqz v12, :cond_3

    .line 70
    .line 71
    check-cast v10, Landroid/content/ComponentName;

    .line 72
    .line 73
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    if-eqz v10, :cond_4

    .line 82
    .line 83
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :goto_2
    const-string v10, "<="

    .line 95
    .line 96
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v10, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 100
    .line 101
    instance-of v12, v10, Lcom/android/server/am/ProcessRecord;

    .line 102
    .line 103
    if-eqz v12, :cond_5

    .line 104
    .line 105
    const-string v10, "Proc{"

    .line 106
    .line 107
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v10, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 113
    .line 114
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string/jumbo v10, "}"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    if-eqz v10, :cond_6

    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    goto :goto_0

    .line 146
    :goto_4
    move-object v5, v1

    .line 147
    invoke-direct/range {v5 .. v11}, Lcom/android/server/am/ProcessMemInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_7
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 154
    .line 155
    iget-wide v5, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 156
    .line 157
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 158
    .line 159
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 160
    .line 161
    iget-wide v7, v2, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    .line 162
    .line 163
    add-long/2addr v5, v7

    .line 164
    cmp-long v2, v5, v3

    .line 165
    .line 166
    if-gtz v2, :cond_9

    .line 167
    .line 168
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 169
    .line 170
    monitor-enter v2

    .line 171
    :try_start_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 172
    .line 173
    const/16 v5, 0x190

    .line 174
    .line 175
    if-gt p0, v5, :cond_8

    .line 176
    .line 177
    const-wide/16 v5, 0x0

    .line 178
    .line 179
    iput-wide v5, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_8
    iget-wide v5, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 183
    .line 184
    iput-wide v5, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 185
    .line 186
    :goto_5
    const/4 p0, 0x1

    .line 187
    iput-boolean p0, v1, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 188
    .line 189
    iput-wide v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 190
    .line 191
    iget-object p0, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 197
    .line 198
    .line 199
    monitor-exit v2

    .line 200
    goto :goto_6

    .line 201
    :catchall_0
    move-exception p0

    .line 202
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    throw p0

    .line 204
    :cond_9
    :goto_6
    return-void
.end method
