.class public final Lcom/android/server/wm/RootWindowContainer$FindTaskResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public cls:Landroid/content/ComponentName;

.field public documentData:Landroid/net/Uri;

.field public isDocument:Z

.field public mActivityType:I

.field public mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

.field public mIdealRecord:Lcom/android/server/wm/ActivityRecord;

.field public mIncludeLaunchedFromBubble:Z

.field public mInfo:Landroid/content/pm/ActivityInfo;

.field public mIntent:Landroid/content/Intent;

.field public mTaskAffinity:Ljava/lang/String;

.field public userId:I


# virtual methods
.method public final process(Lcom/android/server/wm/WindowContainer;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/content/ComponentName;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 18
    .line 19
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 29
    .line 30
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 33
    .line 34
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v2, v1

    .line 48
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    and-int/2addr v0, v2

    .line 53
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v0, 0x0

    .line 65
    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    .line 66
    .line 67
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 68
    .line 69
    aget-boolean v0, v0, v1

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const-wide v3, -0x7c5f00c1c661c650L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/wm/Task;

    .line 6
    .line 7
    iget v2, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v2, v3}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    aget-boolean v0, v3, v4

    .line 23
    .line 24
    if-eqz v0, :cond_18

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    const-wide v6, 0x7b82293e717d3c74L    # 8.64188039937443E286

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    aget-boolean v0, v3, v4

    .line 53
    .line 54
    if-eqz v0, :cond_18

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 61
    .line 62
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const-wide v6, 0x5ef2120f8cfa3e00L    # 2.310623747848482E149

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_1
    iget v2, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 79
    .line 80
    iget v5, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    .line 81
    .line 82
    if-eq v2, v5, :cond_2

    .line 83
    .line 84
    aget-boolean v0, v3, v4

    .line 85
    .line 86
    if-eqz v0, :cond_18

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 93
    .line 94
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    const-wide v6, 0x3e03601dede639f8L    # 5.6390000637584E-10

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_2
    iget-boolean v2, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIncludeLaunchedFromBubble:Z

    .line 111
    .line 112
    invoke-virtual {v1, v4, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_17

    .line 117
    .line 118
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 119
    .line 120
    if-nez v5, :cond_17

    .line 121
    .line 122
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 123
    .line 124
    iget v6, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    .line 125
    .line 126
    if-ne v5, v6, :cond_17

    .line 127
    .line 128
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 129
    .line 130
    const/4 v6, 0x3

    .line 131
    if-ne v5, v6, :cond_3

    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    iget v6, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    .line 140
    .line 141
    invoke-static {v5, v6}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-nez v5, :cond_4

    .line 146
    .line 147
    aget-boolean v0, v3, v4

    .line 148
    .line 149
    if-eqz v0, :cond_18

    .line 150
    .line 151
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 156
    .line 157
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    const/4 v8, 0x0

    .line 162
    const/4 v9, 0x0

    .line 163
    const-wide v6, 0x7d561bc23f5f3423L    # 5.6479873571629E295

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_5

    .line 172
    .line 173
    :cond_4
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    .line 174
    .line 175
    if-eqz v5, :cond_5

    .line 176
    .line 177
    aget-boolean v0, v3, v4

    .line 178
    .line 179
    if-eqz v0, :cond_18

    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 186
    .line 187
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v9, 0x0

    .line 193
    const-wide v6, -0x4d0667e64249cb8dL    # -3.888494666203357E-63

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_5

    .line 202
    .line 203
    :cond_5
    iget-object v5, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 204
    .line 205
    iget-object v6, v1, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 206
    .line 207
    const/4 v7, 0x1

    .line 208
    if-eqz v5, :cond_6

    .line 209
    .line 210
    invoke-virtual {v5}, Landroid/content/Intent;->isDocument()Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-eqz v8, :cond_6

    .line 215
    .line 216
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    :goto_0
    move v8, v7

    .line 221
    goto :goto_1

    .line 222
    :cond_6
    if-eqz v6, :cond_7

    .line 223
    .line 224
    invoke-virtual {v6}, Landroid/content/Intent;->isDocument()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_7

    .line 229
    .line 230
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    goto :goto_0

    .line 235
    :cond_7
    const/4 v5, 0x0

    .line 236
    move v8, v4

    .line 237
    :goto_1
    iget-boolean v9, v1, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    .line 238
    .line 239
    const/4 v10, -0x1

    .line 240
    if-eqz v9, :cond_8

    .line 241
    .line 242
    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 243
    .line 244
    invoke-virtual {v9}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-eq v9, v10, :cond_8

    .line 249
    .line 250
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 251
    .line 252
    if-ne v1, v9, :cond_18

    .line 253
    .line 254
    iput-object v2, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 255
    .line 256
    :goto_2
    move v4, v7

    .line 257
    goto/16 :goto_5

    .line 258
    .line 259
    :cond_8
    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 260
    .line 261
    invoke-virtual {v9}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eq v9, v10, :cond_9

    .line 266
    .line 267
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 268
    .line 269
    if-ne v1, v9, :cond_18

    .line 270
    .line 271
    iput-object v2, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_9
    aget-boolean v9, v3, v4

    .line 275
    .line 276
    if-eqz v9, :cond_b

    .line 277
    .line 278
    iget-object v9, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 279
    .line 280
    if-eqz v9, :cond_a

    .line 281
    .line 282
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    goto :goto_3

    .line 287
    :cond_a
    const-string v9, ""

    .line 288
    .line 289
    :goto_3
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    iget-object v10, v1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    iget-object v11, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 300
    .line 301
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 302
    .line 303
    .line 304
    move-result-object v11

    .line 305
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    iget-object v12, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    .line 314
    .line 315
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 320
    .line 321
    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v18

    .line 325
    const/16 v16, 0x0

    .line 326
    .line 327
    const/16 v17, 0x0

    .line 328
    .line 329
    const-wide v14, 0x539563044aa73bf4L    # 4.4611224478173805E94

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_b
    iget-object v9, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 338
    .line 339
    if-eqz v9, :cond_e

    .line 340
    .line 341
    iget-object v10, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 342
    .line 343
    invoke-virtual {v9, v10}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    if-nez v9, :cond_e

    .line 348
    .line 349
    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    .line 350
    .line 351
    invoke-static {v9, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    if-eqz v9, :cond_e

    .line 356
    .line 357
    aget-boolean v1, v3, v4

    .line 358
    .line 359
    if-eqz v1, :cond_c

    .line 360
    .line 361
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 362
    .line 363
    const/4 v12, 0x0

    .line 364
    const/4 v13, 0x0

    .line 365
    const-wide v9, -0x2f5f9e30b199c49eL    # -2.4280499872568684E80

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    const/4 v11, 0x0

    .line 371
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_c
    aget-boolean v1, v3, v4

    .line 375
    .line 376
    if-eqz v1, :cond_d

    .line 377
    .line 378
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 379
    .line 380
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 385
    .line 386
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 391
    .line 392
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v13

    .line 396
    const/4 v11, 0x0

    .line 397
    const/4 v12, 0x0

    .line 398
    const-wide v9, -0x24c46cafb718c710L    # -3.0583038928807637E131

    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    :cond_d
    iput-object v2, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 407
    .line 408
    goto/16 :goto_2

    .line 409
    .line 410
    :cond_e
    if-eqz v6, :cond_11

    .line 411
    .line 412
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    if-eqz v9, :cond_11

    .line 417
    .line 418
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 423
    .line 424
    invoke-virtual {v6, v9}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    .line 425
    .line 426
    .line 427
    move-result v6

    .line 428
    if-nez v6, :cond_11

    .line 429
    .line 430
    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    .line 431
    .line 432
    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_11

    .line 437
    .line 438
    aget-boolean v1, v3, v4

    .line 439
    .line 440
    if-eqz v1, :cond_f

    .line 441
    .line 442
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 443
    .line 444
    const/4 v12, 0x0

    .line 445
    const/4 v13, 0x0

    .line 446
    const-wide v9, -0x2f5f9e30b199c49eL    # -2.4280499872568684E80

    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    const/4 v11, 0x0

    .line 452
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :cond_f
    aget-boolean v1, v3, v4

    .line 456
    .line 457
    if-eqz v1, :cond_10

    .line 458
    .line 459
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 460
    .line 461
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 466
    .line 467
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 472
    .line 473
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v13

    .line 477
    const/4 v11, 0x0

    .line 478
    const/4 v12, 0x0

    .line 479
    const-wide v9, -0x24c46cafb718c710L    # -3.0583038928807637E131

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    :cond_10
    iput-object v2, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 488
    .line 489
    goto/16 :goto_2

    .line 490
    .line 491
    :cond_11
    iget-boolean v5, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    .line 492
    .line 493
    if-nez v5, :cond_16

    .line 494
    .line 495
    if-nez v8, :cond_16

    .line 496
    .line 497
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 498
    .line 499
    if-nez v5, :cond_16

    .line 500
    .line 501
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 502
    .line 503
    if-nez v5, :cond_16

    .line 504
    .line 505
    iget-object v5, v1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 506
    .line 507
    if-eqz v5, :cond_16

    .line 508
    .line 509
    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    if-eqz v5, :cond_18

    .line 516
    .line 517
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 518
    .line 519
    iget-object v6, v1, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 520
    .line 521
    if-eqz v6, :cond_12

    .line 522
    .line 523
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v6

    .line 529
    if-nez v6, :cond_13

    .line 530
    .line 531
    :cond_12
    iget-object v1, v1, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 532
    .line 533
    if-nez v1, :cond_18

    .line 534
    .line 535
    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 536
    .line 537
    if-nez v1, :cond_18

    .line 538
    .line 539
    :cond_13
    iget-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->mAliasChild:Z

    .line 540
    .line 541
    if-eqz v1, :cond_14

    .line 542
    .line 543
    goto :goto_5

    .line 544
    :cond_14
    aget-boolean v1, v3, v4

    .line 545
    .line 546
    if-eqz v1, :cond_15

    .line 547
    .line 548
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 549
    .line 550
    const/4 v9, 0x0

    .line 551
    const/4 v10, 0x0

    .line 552
    const-wide v6, 0x61c95db84a3d3dd6L

    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    const/4 v8, 0x0

    .line 558
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    :cond_15
    iput-object v2, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 562
    .line 563
    goto :goto_5

    .line 564
    :cond_16
    aget-boolean v0, v3, v4

    .line 565
    .line 566
    if-eqz v0, :cond_18

    .line 567
    .line 568
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 573
    .line 574
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v10

    .line 578
    const/4 v8, 0x0

    .line 579
    const/4 v9, 0x0

    .line 580
    const-wide v6, 0x59f3be53e7733865L    # 2.0882459547642167E125

    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    goto :goto_5

    .line 589
    :cond_17
    :goto_4
    aget-boolean v0, v3, v4

    .line 590
    .line 591
    if-eqz v0, :cond_18

    .line 592
    .line 593
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 602
    .line 603
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v10

    .line 607
    const/4 v8, 0x0

    .line 608
    const/4 v9, 0x0

    .line 609
    const-wide v6, -0x421f58f512e8c7a4L    # -1.2116296034653933E-10

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    :cond_18
    :goto_5
    return v4
.end method
