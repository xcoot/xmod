.class public final Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->handleMessageInner(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    .line 29
    .line 30
    const/16 v1, 0xd5

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 44
    .line 45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 46
    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 64
    .line 65
    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 66
    .line 67
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    const/4 p1, 0x0

    .line 74
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 85
    .line 86
    const-string/jumbo v1, "restartActivityProcessTimeout"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0, p1, v1}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    return-void

    .line 93
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public final handleMessageInner(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0xd4

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v2, :cond_5

    .line 10
    .line 11
    const-string v2, "ActivityTaskManager"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    packed-switch v0, :pswitch_data_1

    .line 18
    .line 19
    .line 20
    return v4

    .line 21
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "Activity top resumed state loss timeout for "

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleTopResumedStateReleased(Z)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 62
    .line 63
    const/16 v1, 0xd8

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 69
    .line 70
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;

    .line 78
    .line 79
    const/4 v1, 0x2

    .line 80
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    sub-int/2addr p1, v3

    .line 95
    :goto_0
    if-ltz p1, :cond_6

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 p1, p1, -0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    sub-int/2addr p1, v3

    .line 120
    :goto_1
    if-ltz p1, :cond_6

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 129
    .line 130
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 131
    .line 132
    if-eqz v2, :cond_3

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 152
    .line 153
    if-eq v2, v5, :cond_3

    .line 154
    .line 155
    if-nez v2, :cond_2

    .line 156
    .line 157
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 158
    .line 159
    if-eqz v5, :cond_2

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_2
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 166
    .line 167
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p1, Lcom/android/server/wm/Task;

    .line 176
    .line 177
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    .line 178
    .line 179
    if-eqz v0, :cond_6

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v1, "Destroy timeout of remove-task, attempt to kill "

    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->killTaskProcessesIfPossible(Lcom/android/server/wm/Task;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :pswitch_5
    const-string/jumbo p1, "transit"

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_6

    .line 224
    .line 225
    const-string p1, "Launch timeout has expired, giving up wake lock!"

    .line 226
    .line 227
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :pswitch_7
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 237
    .line 238
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 239
    .line 240
    if-nez v0, :cond_4

    .line 241
    .line 242
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 243
    .line 244
    if-eqz p1, :cond_6

    .line 245
    .line 246
    :cond_4
    const-string p1, "Sleep timeout!  Sleeping now."

    .line 247
    .line 248
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 264
    .line 265
    invoke-virtual {p0, p1, v4, v4, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 272
    .line 273
    invoke-virtual {p0, p1, v3, v3, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p1, Landroid/os/IBinder;

    .line 280
    .line 281
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    if-eqz p1, :cond_6

    .line 286
    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 297
    .line 298
    invoke-virtual {v2, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 299
    .line 300
    .line 301
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 302
    .line 303
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v3, v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    if-eqz p0, :cond_6

    .line 316
    .line 317
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 318
    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 323
    .line 324
    .line 325
    move-result-wide v0

    .line 326
    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 327
    .line 328
    :cond_6
    :goto_3
    return v3

    .line 329
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :pswitch_data_1
    .packed-switch 0xd6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
