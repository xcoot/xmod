.class public final Lcom/android/server/wm/LaunchParamsController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mModifiers:Ljava/util/List;

.field public final mPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public final mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public final mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    move-object/from16 v13, p8

    .line 8
    .line 9
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 10
    .line 11
    .line 12
    const/4 v14, 0x1

    .line 13
    if-nez v11, :cond_0

    .line 14
    .line 15
    if-eqz v12, :cond_9

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 18
    .line 19
    if-lez p7, :cond_8

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz p5, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v3, v2

    .line 30
    :goto_0
    if-nez v3, :cond_2

    .line 31
    .line 32
    if-eqz p9, :cond_2

    .line 33
    .line 34
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :cond_2
    if-nez v3, :cond_3

    .line 39
    .line 40
    if-eqz v11, :cond_3

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :cond_3
    const/4 v4, 0x5

    .line 53
    if-eqz v11, :cond_4

    .line 54
    .line 55
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PERSIST_BOUNDS:Z

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    if-eqz p9, :cond_5

    .line 66
    .line 67
    :cond_4
    if-ne v3, v4, :cond_9

    .line 68
    .line 69
    :cond_5
    invoke-virtual {v1, v11, v12, v13}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 70
    .line 71
    .line 72
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 73
    .line 74
    if-eqz v3, :cond_9

    .line 75
    .line 76
    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 77
    .line 78
    if-eqz v3, :cond_9

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_9

    .line 85
    .line 86
    if-eqz p5, :cond_6

    .line 87
    .line 88
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    goto :goto_1

    .line 93
    :cond_6
    move v3, v2

    .line 94
    :goto_1
    if-ne v3, v4, :cond_7

    .line 95
    .line 96
    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexPersistBoundsParam:Lcom/android/server/wm/DexPersistBoundsParams;

    .line 97
    .line 98
    iget v6, v5, Lcom/android/server/wm/DexPersistBoundsParams;->mDexWindowingMode:I

    .line 99
    .line 100
    if-ne v6, v14, :cond_7

    .line 101
    .line 102
    iput v4, v5, Lcom/android/server/wm/DexPersistBoundsParams;->mDexWindowingMode:I

    .line 103
    .line 104
    if-eqz v11, :cond_9

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_9

    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v11, v2}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    if-eqz v11, :cond_9

    .line 121
    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    if-eq v3, v4, :cond_9

    .line 129
    .line 130
    iget v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 131
    .line 132
    if-ne v1, v4, :cond_9

    .line 133
    .line 134
    iput v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_8
    invoke-virtual {v1, v11, v12, v13}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 138
    .line 139
    .line 140
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    .line 141
    .line 142
    check-cast v1, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    sub-int/2addr v1, v14

    .line 149
    move v15, v1

    .line 150
    :goto_3
    if-ltz v15, :cond_c

    .line 151
    .line 152
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 153
    .line 154
    invoke-virtual {v1, v13}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 155
    .line 156
    .line 157
    iget-object v10, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 158
    .line 159
    invoke-virtual {v10}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    .line 163
    .line 164
    check-cast v1, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;

    .line 171
    .line 172
    check-cast v1, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;

    .line 173
    .line 174
    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 175
    .line 176
    iget-object v8, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 177
    .line 178
    move-object/from16 v2, p1

    .line 179
    .line 180
    move-object/from16 v3, p2

    .line 181
    .line 182
    move-object/from16 v4, p3

    .line 183
    .line 184
    move-object/from16 v5, p4

    .line 185
    .line 186
    move-object/from16 v6, p5

    .line 187
    .line 188
    move-object/from16 v7, p6

    .line 189
    .line 190
    move-object/from16 v16, v8

    .line 191
    .line 192
    move/from16 v8, p7

    .line 193
    .line 194
    move-object/from16 v17, v10

    .line 195
    .line 196
    move-object/from16 v10, v16

    .line 197
    .line 198
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eq v1, v14, :cond_b

    .line 203
    .line 204
    const/4 v2, 0x2

    .line 205
    if-eq v1, v2, :cond_a

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_a
    move-object/from16 v1, v17

    .line 209
    .line 210
    invoke-virtual {v13, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 211
    .line 212
    .line 213
    :goto_4
    add-int/lit8 v15, v15, -0x1

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_b
    move-object/from16 v1, v17

    .line 217
    .line 218
    invoke-virtual {v13, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_c
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 223
    .line 224
    if-eqz v12, :cond_d

    .line 225
    .line 226
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 227
    .line 228
    if-eqz v1, :cond_d

    .line 229
    .line 230
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 231
    .line 232
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iput-object v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_d
    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 242
    .line 243
    const/4 v2, -0x1

    .line 244
    if-eq v1, v2, :cond_e

    .line 245
    .line 246
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iput-object v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 257
    .line 258
    :cond_e
    :goto_5
    return-void
.end method

.method public final layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v11, p1

    .line 3
    iget-object v12, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v1, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 6
    .line 7
    move/from16 v2, p6

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    move-object v10, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x3

    .line 27
    move-object v1, p0

    .line 28
    move-object v2, p1

    .line 29
    move-object v3, p2

    .line 30
    move-object/from16 v4, p3

    .line 31
    .line 32
    move-object/from16 v5, p4

    .line 33
    .line 34
    move-object/from16 v6, p5

    .line 35
    .line 36
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    iget v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    move v1, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move v1, v2

    .line 62
    :goto_2
    if-eqz v1, :cond_2

    .line 63
    .line 64
    return v2

    .line 65
    :cond_2
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 66
    .line 67
    .line 68
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PERSIST_BOUNDS:Z

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    iget v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNewDexPersistBoundsParam:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 91
    .line 92
    iget v1, v1, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 93
    .line 94
    if-ne v1, v3, :cond_3

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_4

    .line 104
    :cond_3
    :goto_3
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 105
    .line 106
    .line 107
    return v2

    .line 108
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 124
    .line 125
    .line 126
    return v3

    .line 127
    :cond_5
    :try_start_2
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 133
    .line 134
    .line 135
    return v2

    .line 136
    :goto_4
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 137
    .line 138
    .line 139
    throw v0
.end method
