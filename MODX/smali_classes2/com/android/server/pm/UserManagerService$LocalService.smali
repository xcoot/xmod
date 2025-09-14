.class public final Lcom/android/server/pm/UserManagerService$LocalService;
.super Lcom/android/server/pm/UserManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addMaintenanceModeLifecycleListener(Lcom/android/server/locksettings/LockSettingsService$1;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "addLifecycleListener: "

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "UserVisibilityMediator"

    .line 13
    .line 14
    const-string v1, "adding listener %s"

    .line 15
    .line 16
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final assignUserToDisplayOnStart(IIII)I
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    move-object/from16 v3, p0

    .line 22
    .line 23
    move v6, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object/from16 v3, p0

    .line 26
    .line 27
    move v6, v4

    .line 28
    :goto_0
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/16 v7, -0x2710

    .line 36
    .line 37
    const/4 v8, -0x1

    .line 38
    if-eq v0, v7, :cond_1

    .line 39
    .line 40
    const/4 v9, -0x3

    .line 41
    if-eq v0, v9, :cond_1

    .line 42
    .line 43
    const/4 v9, -0x2

    .line 44
    if-eq v0, v9, :cond_1

    .line 45
    .line 46
    if-eq v0, v8, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v4, v5

    .line 50
    :goto_1
    xor-int/2addr v4, v5

    .line 51
    const-string/jumbo v9, "user id cannot be generic: %d"

    .line 52
    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-static {v4, v9, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x3

    .line 66
    const/4 v9, 0x2

    .line 67
    if-eq v1, v5, :cond_3

    .line 68
    .line 69
    if-eq v1, v9, :cond_3

    .line 70
    .line 71
    if-ne v1, v4, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string v2, "Invalid user start mode: "

    .line 77
    .line 78
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 87
    .line 88
    move/from16 v6, p2

    .line 89
    .line 90
    move v7, v8

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    move/from16 v6, p2

    .line 93
    .line 94
    if-ne v6, v7, :cond_5

    .line 95
    .line 96
    move v7, v0

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    move v7, v6

    .line 99
    :goto_3
    sget-boolean v10, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 100
    .line 101
    if-eqz v10, :cond_6

    .line 102
    .line 103
    const-string v11, "UserVisibilityMediator"

    .line 104
    .line 105
    const-string v12, "assignUserToDisplayOnStart(%d, %d, %s, %d): actualProfileGroupId=%d"

    .line 106
    .line 107
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v14

    .line 119
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    filled-new-array {v13, v6, v14, v15, v9}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v11, v12, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    iget-object v6, v3, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 135
    .line 136
    monitor-enter v6

    .line 137
    :try_start_0
    invoke-virtual {v3, v0, v7, v1, v2}, Lcom/android/server/pm/UserVisibilityMediator;->getUserVisibilityOnStartLocked(IIII)I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-eqz v10, :cond_7

    .line 142
    .line 143
    const-string v11, "UserVisibilityMediator"

    .line 144
    .line 145
    const-string/jumbo v12, "result of getUserVisibilityOnStartLocked(%s)"

    .line 146
    .line 147
    .line 148
    const-class v13, Lcom/android/server/pm/UserManagerInternal;

    .line 149
    .line 150
    const-string v14, "USER_ASSIGNMENT_RESULT_"

    .line 151
    .line 152
    invoke-static {v13, v14, v9}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    invoke-static {v11, v12, v13}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto/16 :goto_a

    .line 166
    .line 167
    :cond_7
    :goto_4
    if-eq v9, v8, :cond_15

    .line 168
    .line 169
    if-ne v9, v4, :cond_8

    .line 170
    .line 171
    goto/16 :goto_8

    .line 172
    .line 173
    :cond_8
    invoke-virtual {v3, v0, v7, v1, v2}, Lcom/android/server/pm/UserVisibilityMediator;->canAssignUserToDisplayLocked(IIII)I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    if-eqz v10, :cond_9

    .line 178
    .line 179
    const-string v12, "UserVisibilityMediator"

    .line 180
    .line 181
    const-string/jumbo v13, "mapping result: %s"

    .line 182
    .line 183
    .line 184
    const-class v14, Lcom/android/server/pm/UserVisibilityMediator;

    .line 185
    .line 186
    const-string v15, "SECONDARY_DISPLAY_MAPPING_"

    .line 187
    .line 188
    invoke-static {v14, v15, v11}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    invoke-static {v12, v13, v14}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_9
    if-ne v11, v8, :cond_a

    .line 200
    .line 201
    monitor-exit v6

    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :cond_a
    invoke-virtual {v3}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    if-eq v1, v5, :cond_c

    .line 209
    .line 210
    const/4 v12, 0x2

    .line 211
    if-eq v1, v12, :cond_b

    .line 212
    .line 213
    if-eq v1, v4, :cond_d

    .line 214
    .line 215
    const-string v4, "UserVisibilityMediator"

    .line 216
    .line 217
    const-string v7, "invalid userStartMode passed to assignUserToDisplayOnStart: %d"

    .line 218
    .line 219
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-static {v4, v7, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_b
    iget-object v1, v3, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    .line 232
    .line 233
    if-eqz v1, :cond_f

    .line 234
    .line 235
    invoke-static {v0, v7}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_f

    .line 240
    .line 241
    const-string v1, "UserVisibilityMediator"

    .line 242
    .line 243
    const-string v4, "adding user %d to list of invisible profiles"

    .line 244
    .line 245
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-static {v1, v4, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v3, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    .line 257
    .line 258
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_c
    iput v0, v3, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 267
    .line 268
    :cond_d
    if-eqz v10, :cond_e

    .line 269
    .line 270
    const-string v1, "UserVisibilityMediator"

    .line 271
    .line 272
    const-string v4, "adding visible user / profile group id mapping (%d -> %d)"

    .line 273
    .line 274
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    filled-new-array {v12, v13}, [Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    invoke-static {v1, v4, v12}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_e
    iget-object v1, v3, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 290
    .line 291
    invoke-virtual {v1, v0, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 292
    .line 293
    .line 294
    :cond_f
    :goto_5
    if-eq v11, v5, :cond_11

    .line 295
    .line 296
    const/4 v1, 0x2

    .line 297
    if-eq v11, v1, :cond_10

    .line 298
    .line 299
    const-string v0, "UserVisibilityMediator"

    .line 300
    .line 301
    const-string v1, "invalid resut from canAssignUserToDisplayLocked: %d"

    .line 302
    .line 303
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_10
    if-eqz v10, :cond_13

    .line 316
    .line 317
    const-string v0, "UserVisibilityMediator"

    .line 318
    .line 319
    const-string v1, "don\'t need to update mUsersOnSecondaryDisplays"

    .line 320
    .line 321
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_11
    if-eqz v10, :cond_12

    .line 326
    .line 327
    const-string v1, "UserVisibilityMediator"

    .line 328
    .line 329
    const-string v4, "adding user / display mapping (%d -> %d)"

    .line 330
    .line 331
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    filled-new-array {v5, v7}, [Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-static {v1, v4, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    :cond_12
    iget-object v1, v3, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 347
    .line 348
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    .line 350
    .line 351
    :cond_13
    :goto_6
    invoke-virtual {v3}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-virtual {v3, v8, v0}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V

    .line 357
    .line 358
    .line 359
    if-eqz v10, :cond_14

    .line 360
    .line 361
    const-string v0, "UserVisibilityMediator"

    .line 362
    .line 363
    const-string/jumbo v1, "returning %s"

    .line 364
    .line 365
    .line 366
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    .line 367
    .line 368
    const-string v3, "USER_ASSIGNMENT_RESULT_"

    .line 369
    .line 370
    invoke-static {v2, v3, v9}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    :cond_14
    :goto_7
    move v8, v9

    .line 382
    goto :goto_9

    .line 383
    :cond_15
    :goto_8
    :try_start_1
    monitor-exit v6

    .line 384
    goto :goto_7

    .line 385
    :goto_9
    return v8

    .line 386
    :goto_a
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    throw v0
.end method

.method public final clearAttributes(II)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    move v3, v0

    .line 19
    :goto_0
    const/4 v4, 0x0

    .line 20
    if-ge v3, v2, :cond_3

    .line 21
    .line 22
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 23
    .line 24
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 31
    .line 32
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 33
    .line 34
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 35
    .line 36
    if-ne v6, p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    and-int/2addr v0, p2

    .line 43
    const/4 v2, 0x1

    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    new-instance v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 47
    .line 48
    invoke-direct {v4}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    not-int p2, p2

    .line 56
    and-int/2addr p2, v0

    .line 57
    invoke-virtual {v5, p2}, Landroid/content/pm/UserInfo;->setAttributes(I)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, v4, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    .line 67
    .line 68
    iput-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 69
    .line 70
    :cond_1
    move v0, v2

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    monitor-exit v1

    .line 85
    return v0

    .line 86
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method public final createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .locals 8

    .line 1
    const/16 v4, -0x2710

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v3, p3

    .line 9
    move-object v6, p4

    .line 10
    move-object v7, p5

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final exists(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final getAttributes(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p0, -0x1

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getBootUser(Z)I
    .locals 5

    .line 1
    const-string v0, "UserManagerService"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    new-instance p1, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "wait-boot-user"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    cmp-long v1, v1, v3

    .line 27
    .line 28
    const-wide/32 v2, 0x493e0

    .line 29
    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v1, "Sleeping for boot user to be set. Max sleep for Time: %d"

    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v0, v1, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    .line 50
    .line 51
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const-string v1, "Boot user not set. Timeout: %d"

    .line 60
    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    const-string v3, "InterruptedException during wait for boot user."

    .line 84
    .line 85
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getBootUserUnchecked()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    return p0
.end method

.method public final getCommunalProfileId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getLauncherUserInfo(I)Landroid/content/pm/LauncherUserInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v0, Landroid/content/pm/LauncherUserInfo$Builder;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    .line 24
    .line 25
    iget p1, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, Landroid/content/pm/LauncherUserInfo$Builder;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/pm/LauncherUserInfo$Builder;->build()Landroid/content/pm/LauncherUserInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final getMainDisplayAssignedToUser(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->getMainDisplayAssignedToUser(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getMainUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getProfileIds(IZ)[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, p2, v2, p1}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(Ljava/lang/String;ZZI)Landroid/util/IntArray;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final getProfileParentId(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getUserAssignedToDisplay(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getUserIds()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    :goto_0
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final getUserInfos()[Landroid/content/pm/UserInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-array v2, v1, [Landroid/content/pm/UserInfo;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 20
    .line 21
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 28
    .line 29
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 30
    .line 31
    aput-object v4, v2, v3

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    monitor-exit v0

    .line 39
    return-object v2

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final getUserProperties(I)Landroid/content/pm/UserProperties;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string v0, "A null UserProperties was returned for user "

    .line 10
    .line 11
    const-string v1, "UserManagerService"

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public final getUserRestriction(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getUserTypesForStatsd([I)[I
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p1

    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v0, :cond_2

    .line 11
    .line 12
    aget v4, p1, v3

    .line 13
    .line 14
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 23
    .line 24
    aput v2, v1, v3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 28
    .line 29
    iget-object v4, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v4}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    aput v4, v1, v3

    .line 36
    .line 37
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object v1
.end method

.method public final getUsers(Z)Ljava/util/List;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isDeviceManaged()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final isProfileAccessible(IILjava/lang/String;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_8

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_6

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 42
    .line 43
    const/16 p1, -0x2710

    .line 44
    .line 45
    if-eq p0, p1, :cond_4

    .line 46
    .line 47
    iget p1, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 48
    .line 49
    if-eq p0, p1, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    monitor-exit v1

    .line 53
    return v0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_4
    :goto_0
    if-nez p4, :cond_5

    .line 58
    .line 59
    monitor-exit v1

    .line 60
    return v3

    .line 61
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p3, " for unrelated profile "

    .line 72
    .line 73
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_6
    :goto_1
    if-eqz p4, :cond_7

    .line 88
    .line 89
    const-string p0, "UserManagerService"

    .line 90
    .line 91
    new-instance p4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p3, " for disabled profile "

    .line 100
    .line 101
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, " from "

    .line 108
    .line 109
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_7
    monitor-exit v1

    .line 123
    return v3

    .line 124
    :cond_8
    :goto_2
    if-nez p4, :cond_9

    .line 125
    .line 126
    const-string p0, "UserManagerService"

    .line 127
    .line 128
    new-instance p4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p3, " for another profile "

    .line 137
    .line 138
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p2, " from "

    .line 145
    .line 146
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    monitor-exit v1

    .line 160
    return v3

    .line 161
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    .line 162
    .line 163
    new-instance p4, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string p3, " for another profile "

    .line 172
    .line 173
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p2, " from "

    .line 180
    .line 181
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p0

    .line 195
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    throw p0
.end method

.method public final isUserInitialized(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 8
    .line 9
    and-int/lit8 p0, p0, 0x10

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isUserManaged(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final isUserRunning(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p1, -0x1

    .line 16
    if-eq p0, p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    if-eq p0, p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x5

    .line 22
    if-eq p0, p1, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final isUserUnlocked(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 p1, 0x3

    .line 23
    if-ne p0, p1, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0

    .line 29
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method public final isUserUnlockingOrUnlocked(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p0, v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const/4 p1, 0x2

    .line 23
    if-eq p0, p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    if-ne p0, p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 32
    :goto_1
    return p0

    .line 33
    :cond_3
    :goto_2
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final isUserVisible(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result p0

    return p0
.end method

.method public final isUserVisible(II)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    return p0
.end method

.method public final onEphemeralUserStop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget p1, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 21
    .line 22
    or-int/lit8 p1, p1, 0x40

    .line 23
    .line 24
    iput p1, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final onSystemUserVisibilityChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final removeUserEvenWhenDisallowed(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final removeUserState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final setAttributes(II)Z
    .locals 6

    .line 1
    const-string v0, "UserManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "setAttributes, user ID: "

    .line 4
    .line 5
    .line 6
    const-string v2, ", attribute: "

    .line 7
    .line 8
    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_1

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 29
    .line 30
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 39
    .line 40
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 41
    .line 42
    if-ne v5, p1, :cond_0

    .line 43
    .line 44
    new-instance v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    or-int/2addr p2, v3

    .line 54
    invoke-virtual {v4, p2}, Landroid/content/pm/UserInfo;->setAttributes(I)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, v1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    .line 64
    .line 65
    iput-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, 0x0

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const-string p0, "UserManagerService"

    .line 85
    .line 86
    const-string/jumbo p2, "setAttributes: user not found: "

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p2, p0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    return v2

    .line 93
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw p0
.end method

.method public final setDefaultCrossProfileIntentFilters(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setDeviceManaged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final setDevicePolicyUserRestrictions(Landroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/pm/RestrictionsSet;->getUserIds()Landroid/util/IntArray;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    invoke-virtual {v2, v3, p1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/android/server/pm/RestrictionsSet;->getUserIds()Landroid/util/IntArray;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v2, 0x0

    .line 37
    move v4, v2

    .line 38
    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-ge v4, v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1, v4}, Landroid/util/IntArray;->get(I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 49
    .line 50
    invoke-virtual {p2, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v6, v5, v7}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_3

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/android/server/pm/UserManagerService$5;

    .line 73
    .line 74
    invoke-direct {p1, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ge v2, p1, :cond_2

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-ne p1, v3, :cond_1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_1
    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/4 p2, 0x0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    .line 104
    .line 105
    .line 106
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p0
.end method

.method public final setForceEphemeralUsers(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "setUserIcon: unknown user #"

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 9
    .line 10
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 14
    .line 15
    invoke-virtual {v4, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 24
    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 29
    .line 30
    invoke-static {v0, v5, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteBitmapLP(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 34
    .line 35
    invoke-virtual {p2, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p2, Landroid/content/Intent;

    .line 45
    .line 46
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    .line 47
    .line 48
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "android.intent.extra.user_handle"

    .line 52
    .line 53
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const/high16 p1, 0x40000000    # 2.0f

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 64
    .line 65
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    :try_start_3
    const-string p0, "UserManagerService"

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 99
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method public final setUserManaged(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final setUserRestriction(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestrictionInner(ILjava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUserState(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final shouldIgnorePrepareStorageErrors(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final unassignUserFromDisplayOnStop(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "UserVisibilityMediator"

    .line 13
    .line 14
    const-string/jumbo v1, "unassignUserFromDisplayOnStop(%d)"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->unassignUserFromAllDisplaysOnStopLocked(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method
