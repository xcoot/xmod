.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;
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
    iput p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ge v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/Transition;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :pswitch_0
    check-cast p0, Lcom/android/server/wm/TransitionController$Logger;

    .line 57
    .line 58
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    aget-boolean v0, v0, v1

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Finish Transition (#"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mSyncId:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "): created at "

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateWallTimeMs:J

    .line 83
    .line 84
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, " collect-started="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mCollectTimeNs:J

    .line 97
    .line 98
    iget-wide v3, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 99
    .line 100
    sub-long/2addr v1, v3

    .line 101
    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    .line 109
    .line 110
    const-wide/16 v3, 0x0

    .line 111
    .line 112
    cmp-long v1, v1, v3

    .line 113
    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    const-string v1, " request-sent="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    .line 122
    .line 123
    iget-wide v3, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 124
    .line 125
    sub-long/2addr v1, v3

    .line 126
    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_3
    const-string v1, " started="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mStartTimeNs:J

    .line 139
    .line 140
    iget-wide v3, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 141
    .line 142
    sub-long/2addr v1, v3

    .line 143
    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, " ready="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mReadyTimeNs:J

    .line 156
    .line 157
    iget-wide v3, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 158
    .line 159
    sub-long/2addr v1, v3

    .line 160
    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, " sent="

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 173
    .line 174
    iget-wide v3, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 175
    .line 176
    sub-long/2addr v1, v3

    .line 177
    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, " finished="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-wide v1, p0, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    .line 190
    .line 191
    iget-wide v3, p0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 192
    .line 193
    sub-long/2addr v1, v3

    .line 194
    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController$Logger;->toMsString(J)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 210
    .line 211
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    const-wide v1, -0x461b5375363fcb45L    # -8.15445231298494E-30

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    const/4 v3, 0x0

    .line 221
    const-string v4, "%s"

    .line 222
    .line 223
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    :goto_1
    return-void

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
