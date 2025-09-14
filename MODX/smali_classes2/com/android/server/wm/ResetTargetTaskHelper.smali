.class public final Lcom/android/server/wm/ResetTargetTaskHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/Predicate;


# instance fields
.field public mActivityReparentPosition:I

.field public mAllActivities:Ljava/util/ArrayList;

.field public mCanMoveOptions:Z

.field public mForceReset:Z

.field public mIsTargetTask:Z

.field public mPendingReparentActivities:Ljava/util/ArrayList;

.field public mResultActivities:Ljava/util/ArrayList;

.field public mRoot:Lcom/android/server/wm/ActivityRecord;

.field public mTargetRootTask:Lcom/android/server/wm/Task;

.field public mTargetTask:Lcom/android/server/wm/Task;

.field public mTargetTaskFound:Z

.field public mTask:Lcom/android/server/wm/Task;

.field public mTopOptions:Landroid/app/ActivityOptions;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    .line 34
    .line 35
    if-ne p1, v2, :cond_1

    .line 36
    .line 37
    move v0, v1

    .line 38
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mIsTargetTask:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final finishActivities(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 30
    .line 31
    iput-object v3, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 37
    .line 38
    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 39
    .line 40
    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 41
    .line 42
    move v0, v1

    .line 43
    :cond_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 44
    .line 45
    const/4 v4, 0x3

    .line 46
    aget-boolean v3, v3, v4

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 55
    .line 56
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    const-wide v5, -0x40149f418781c9c0L    # -0.855559573495789

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method

.method public final process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iput-boolean v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    .line 8
    .line 9
    iput-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iput-object v3, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    iput v3, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 43
    .line 44
    iget-object v5, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v6, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    iget-object v6, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_6

    .line 69
    .line 70
    iget-object v6, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    move-object v13, v6

    .line 77
    check-cast v13, Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    invoke-static {v14, v15}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_1

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget-object v7, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 91
    .line 92
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    :goto_1
    if-eqz v7, :cond_2

    .line 97
    .line 98
    iget-object v8, v13, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v9, v7, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_2

    .line 107
    .line 108
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 109
    .line 110
    aget-boolean v8, v8, v3

    .line 111
    .line 112
    if-eqz v8, :cond_3

    .line 113
    .line 114
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 123
    .line 124
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v21

    .line 128
    const/16 v19, 0x0

    .line 129
    .line 130
    const/16 v20, 0x0

    .line 131
    .line 132
    const-wide v17, 0x180503976d603b36L    # 5.757343247738582E-193

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_2
    move-object v7, v4

    .line 142
    :cond_3
    :goto_2
    if-nez v7, :cond_5

    .line 143
    .line 144
    if-eqz v6, :cond_4

    .line 145
    .line 146
    const/4 v10, 0x0

    .line 147
    const/4 v11, 0x0

    .line 148
    const/4 v9, 0x0

    .line 149
    const/4 v12, 0x0

    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    move-object v6, v1

    .line 153
    move v7, v14

    .line 154
    move v8, v15

    .line 155
    move-object v3, v13

    .line 156
    move/from16 v13, v16

    .line 157
    .line 158
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    :goto_3
    move-object v7, v6

    .line 163
    goto :goto_4

    .line 164
    :cond_4
    move-object v3, v13

    .line 165
    iget-object v6, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 166
    .line 167
    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 168
    .line 169
    const/16 v21, 0x0

    .line 170
    .line 171
    const/16 v22, 0x0

    .line 172
    .line 173
    const/16 v18, 0x0

    .line 174
    .line 175
    const/16 v19, 0x0

    .line 176
    .line 177
    const/16 v20, 0x0

    .line 178
    .line 179
    const/16 v23, 0x0

    .line 180
    .line 181
    const/16 v24, 0x0

    .line 182
    .line 183
    move-object/from16 v16, v6

    .line 184
    .line 185
    move-object/from16 v17, v7

    .line 186
    .line 187
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    goto :goto_3

    .line 192
    :goto_4
    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 193
    .line 194
    iput-object v6, v7, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_5
    move-object v3, v13

    .line 198
    :goto_5
    const-string/jumbo v6, "resetTargetTaskIfNeeded"

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v7, v2, v6}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v3, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 205
    .line 206
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 207
    .line 208
    invoke-virtual {v3, v7}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 209
    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_6
    :goto_6
    iput-object v4, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    .line 215
    .line 216
    iput-object v4, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 217
    .line 218
    const/4 v1, 0x1

    .line 219
    iput-boolean v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 220
    .line 221
    iput-object v4, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 222
    .line 223
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 231
    .line 232
    .line 233
    iget-object v0, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 234
    .line 235
    return-object v0
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_8

    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 22
    .line 23
    and-int/lit8 v4, v2, 0x2

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    move v4, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v4, v5

    .line 31
    :goto_0
    and-int/lit8 v2, v2, 0x40

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    move v2, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v2, v5

    .line 38
    :goto_1
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const/high16 v7, 0x80000

    .line 45
    .line 46
    and-int/2addr v6, v7

    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    move v6, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move v6, v5

    .line 52
    :goto_2
    iget-boolean v7, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mIsTargetTask:Z

    .line 53
    .line 54
    if-eqz v7, :cond_a

    .line 55
    .line 56
    if-nez v4, :cond_6

    .line 57
    .line 58
    if-nez v6, :cond_6

    .line 59
    .line 60
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    if-eqz v3, :cond_5

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_3
    move v3, v5

    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_5
    if-eqz v2, :cond_6

    .line 73
    .line 74
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    iget-object v3, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    .line 79
    .line 80
    iget-object v3, v3, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_6

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    iget-boolean v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    .line 95
    .line 96
    if-nez v2, :cond_8

    .line 97
    .line 98
    if-nez v4, :cond_8

    .line 99
    .line 100
    if-eqz v6, :cond_7

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_7
    iget-object v0, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_8
    :goto_4
    if-eqz v6, :cond_9

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    .line 112
    .line 113
    const-string v2, "clearWhenTaskReset"

    .line 114
    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_9
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 125
    .line 126
    const-string/jumbo v2, "reset-task"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 130
    .line 131
    .line 132
    :goto_5
    iget-object v0, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_a
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 139
    .line 140
    if-eqz v6, :cond_b

    .line 141
    .line 142
    iget-object v0, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_b
    iget-boolean v6, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    .line 149
    .line 150
    if-eqz v6, :cond_4

    .line 151
    .line 152
    if-eqz v2, :cond_4

    .line 153
    .line 154
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    .line 155
    .line 156
    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v2, :cond_4

    .line 159
    .line 160
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_4

    .line 167
    .line 168
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    iget-boolean v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    .line 174
    .line 175
    if-nez v2, :cond_11

    .line 176
    .line 177
    if-eqz v4, :cond_c

    .line 178
    .line 179
    goto/16 :goto_7

    .line 180
    .line 181
    :cond_c
    iget v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 182
    .line 183
    const/4 v4, -0x1

    .line 184
    if-ne v2, v4, :cond_d

    .line 185
    .line 186
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    iput v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 193
    .line 194
    :cond_d
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    .line 195
    .line 196
    iget v4, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 197
    .line 198
    :goto_6
    iget-object v6, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-nez v6, :cond_10

    .line 205
    .line 206
    iget-object v6, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 213
    .line 214
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 215
    .line 216
    const/4 v8, 0x2

    .line 217
    aget-boolean v7, v7, v8

    .line 218
    .line 219
    if-eqz v7, :cond_e

    .line 220
    .line 221
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    iget-object v8, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    .line 226
    .line 227
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    const/4 v10, 0x4

    .line 236
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 245
    .line 246
    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v16

    .line 250
    const/4 v14, 0x0

    .line 251
    const/4 v15, 0x0

    .line 252
    const-wide v12, 0x2ea7b7ceb4ed3e96L    # 6.104487990603187E-84

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :cond_e
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 261
    .line 262
    aget-boolean v7, v7, v3

    .line 263
    .line 264
    if-eqz v7, :cond_f

    .line 265
    .line 266
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 275
    .line 276
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v14

    .line 280
    const/4 v12, 0x0

    .line 281
    const/4 v13, 0x0

    .line 282
    const-wide v10, 0x36f0960f1392336dL    # 4.648434222911383E-44

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_f
    const-string/jumbo v7, "resetTargetTaskIfNeeded"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v2, v4, v7}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_10
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 298
    .line 299
    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 300
    .line 301
    if-ne v2, v3, :cond_4

    .line 302
    .line 303
    iget-object v0, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_4

    .line 310
    .line 311
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 312
    .line 313
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 318
    .line 319
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_4

    .line 328
    .line 329
    const-string/jumbo v1, "replace"

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 333
    .line 334
    .line 335
    goto/16 :goto_3

    .line 336
    .line 337
    :cond_11
    :goto_7
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 338
    .line 339
    const-string/jumbo v2, "move-affinity"

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_3

    .line 346
    .line 347
    :goto_8
    return v3
.end method
