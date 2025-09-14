.class public final Lcom/android/server/wm/Transition$ReadyCondition;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlternate:Ljava/lang/String;

.field public final mDebugTarget:Ljava/lang/Object;

.field public mMet:Z

.field public final mName:Ljava/lang/String;

.field public mTracker:Lcom/android/server/wm/Transition$ReadyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final meet()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/wm/Transition$ReadyTracker;->mTransition:Lcom/android/server/wm/Transition;

    .line 11
    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 15
    .line 16
    iget-boolean v2, v2, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_1
    iget v2, v1, Lcom/android/server/wm/Transition;->mState:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-lt v2, v3, :cond_2

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "#%d: Condition met too late, already in state="

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v1, v1, Lcom/android/server/wm/Transition;->mState:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ": "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "Transition"

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "Can\'t meet the same condition more than once: "

    .line 79
    .line 80
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, " #"

    .line 87
    .line 88
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget p0, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 92
    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v3, "Can\'t meet a condition that isn\'t being waited on: "

    .line 109
    .line 110
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p0, " in #"

    .line 117
    .line 118
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget p0, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 122
    .line 123
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_4
    const/4 v2, 0x1

    .line 135
    iput-boolean v2, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    .line 136
    .line 137
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 138
    .line 139
    aget-boolean v2, v3, v2

    .line 140
    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iget v3, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 148
    .line 149
    int-to-long v3, v3

    .line 150
    iget-object v5, v0, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    int-to-long v5, v5

    .line 157
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 158
    .line 159
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    const/16 v10, 0x14

    .line 172
    .line 173
    const/4 v11, 0x0

    .line 174
    const-wide v8, 0x69e6fa340bd9305eL    # 1.4070423635077445E202

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    iget-object v0, v0, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 188
    .line 189
    .line 190
    :cond_6
    :goto_0
    return-void

    .line 191
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    const-string v0, "Can\'t meet a condition before it is waited on"

    .line 194
    .line 195
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ":"

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, " ("

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, ")"

    .line 52
    .line 53
    invoke-static {v1, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string p0, ""

    .line 59
    .line 60
    :goto_0
    const-string/jumbo v1, "}"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
