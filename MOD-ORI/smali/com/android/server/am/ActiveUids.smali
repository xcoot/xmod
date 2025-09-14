.class public final Lcom/android/server/am/ActiveUids;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveUids:Landroid/util/SparseArray;

.field public final mPostChangesToAtm:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final dump(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/am/UidRecord;

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    iget v3, v2, Lcom/android/server/am/UidRecord;->mUid:I

    .line 22
    .line 23
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eq v3, p1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 33
    .line 34
    .line 35
    const-string v1, "  "

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_1
    const-string v3, "    UID "

    .line 45
    .line 46
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v3, v2, Lcom/android/server/am/UidRecord;->mUid:I

    .line 50
    .line 51
    invoke-static {p2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 52
    .line 53
    .line 54
    const-string v3, ": "

    .line 55
    .line 56
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string v3, "      curProcState="

    .line 63
    .line 64
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v3, v2, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 68
    .line 69
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 70
    .line 71
    .line 72
    const-string v3, " curCapability="

    .line 73
    .line 74
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget v3, v2, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 78
    .line 79
    invoke-static {p2, v3}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 83
    .line 84
    .line 85
    new-instance v3, Lcom/android/server/am/ActiveUids$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v3, p2}, Lcom/android/server/am/ActiveUids$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    return v1
.end method

.method public final dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    move v10, v9

    .line 7
    :goto_0
    iget-object v1, v0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v10, v1, :cond_3

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v11, v1

    .line 22
    check-cast v11, Lcom/android/server/am/UidRecord;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget v1, v11, Lcom/android/server/am/UidRecord;->mUid:I

    .line 27
    .line 28
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    move/from16 v12, p3

    .line 33
    .line 34
    if-eq v1, v12, :cond_1

    .line 35
    .line 36
    move-wide/from16 v13, p4

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    move/from16 v12, p3

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-wide/from16 v13, p4

    .line 46
    .line 47
    invoke-virtual {v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    const-wide v1, 0x10500000001L

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    iget v3, v11, Lcom/android/server/am/UidRecord;->mUid:I

    .line 57
    .line 58
    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 59
    .line 60
    .line 61
    iget v1, v11, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 62
    .line 63
    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const-wide v2, 0x10e00000002L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 73
    .line 74
    .line 75
    const-wide v1, 0x10800000003L

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    iget-boolean v3, v11, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    .line 81
    .line 82
    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 83
    .line 84
    .line 85
    const-wide v1, 0x10800000004L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    iget-boolean v3, v11, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 91
    .line 92
    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 93
    .line 94
    .line 95
    const-wide v1, 0x10800000005L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    iget-boolean v3, v11, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 101
    .line 102
    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 103
    .line 104
    .line 105
    iget-wide v4, v11, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 106
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 108
    .line 109
    .line 110
    move-result-wide v15

    .line 111
    const-wide v2, 0x10b00000006L

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    move-wide/from16 v17, v6

    .line 119
    .line 120
    move-wide v6, v15

    .line 121
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 122
    .line 123
    .line 124
    const-wide v1, 0x10800000007L

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    iget-boolean v3, v11, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 130
    .line 131
    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 132
    .line 133
    .line 134
    iget v1, v11, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 135
    .line 136
    if-eqz v1, :cond_2

    .line 137
    .line 138
    int-to-long v4, v1

    .line 139
    sget-object v6, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    .line 140
    .line 141
    sget-object v7, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    .line 142
    .line 143
    const-wide v2, 0x20e00000008L

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    move-object/from16 v1, p1

    .line 149
    .line 150
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    .line 151
    .line 152
    .line 153
    :cond_2
    const-wide v1, 0x10500000009L

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    invoke-virtual {v8, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 159
    .line 160
    .line 161
    const-wide v1, 0x10b0000000aL

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 167
    .line 168
    .line 169
    move-result-wide v1

    .line 170
    const-wide v3, 0x10300000001L

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    iget-wide v5, v11, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 176
    .line 177
    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 178
    .line 179
    .line 180
    const-wide v3, 0x10300000002L

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    iget-wide v5, v11, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 186
    .line 187
    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 191
    .line 192
    .line 193
    move-wide/from16 v1, v17

    .line 194
    .line 195
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 196
    .line 197
    .line 198
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_3
    return-void
.end method

.method public final get(I)Lcom/android/server/am/UidRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/UidRecord;

    .line 8
    .line 9
    return-object p0
.end method

.method public final put(ILcom/android/server/am/UidRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 13
    .line 14
    iget p2, p2, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 21
    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1

    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method public final remove(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 13
    .line 14
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1

    .line 31
    :cond_0
    :goto_0
    return-void
.end method

.method public final valueAt(I)Lcom/android/server/am/UidRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/UidRecord;

    .line 8
    .line 9
    return-object p0
.end method
