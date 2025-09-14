.class public final Lcom/android/server/wm/ActivityRecord$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final run$com$android$server$wm$ActivityRecord$4()V
    .locals 4

    .line 1
    const-string v0, "Activity stop timeout for "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    const-string v2, "ActivityTaskManager"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/ActivityRecord;->activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method private final run$com$android$server$wm$ActivityRecord$5()V
    .locals 4

    .line 1
    const-string v0, "enter pip timeout for  "

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    const-string v2, "ActivityTaskManager"

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 37
    .line 38
    const-string/jumbo v0, "timeout"

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setHiddenWhileEnteringPinnedMode(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$1;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const-string v1, "Activity transferring splash screen timeout for "

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 16
    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    const-string v3, "ActivityTaskManager"

    .line 20
    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " state "

    .line 32
    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 37
    .line 38
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 39
    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    if-eq v1, v3, :cond_0

    .line 56
    .line 57
    if-ne v1, v0, :cond_1

    .line 58
    .line 59
    :cond_0
    const/4 v0, 0x3

    .line 60
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 63
    .line 64
    .line 65
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord$1;->run$com$android$server$wm$ActivityRecord$5()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord$1;->run$com$android$server$wm$ActivityRecord$4()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_2
    const-string v0, "Activity destroy timeout for "

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 91
    .line 92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 93
    .line 94
    .line 95
    monitor-enter v1

    .line 96
    :try_start_2
    const-string v2, "ActivityTaskManager"

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 116
    .line 117
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 118
    .line 119
    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 120
    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 126
    .line 127
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 128
    .line 129
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 130
    .line 131
    const-string v3, "ActivityDestroyTimeout"

    .line 132
    .line 133
    const-wide/16 v4, 0x4e20

    .line 134
    .line 135
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 142
    .line 143
    const-string v0, "destroyTimeout"

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyed(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 159
    .line 160
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 163
    .line 164
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 165
    .line 166
    .line 167
    monitor-enter v1

    .line 168
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTicking()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_3

    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 177
    .line 178
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 179
    .line 180
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 181
    .line 182
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 183
    .line 184
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :catchall_2
    move-exception p0

    .line 192
    goto :goto_3

    .line 193
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 194
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 199
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 200
    .line 201
    .line 202
    throw p0

    .line 203
    :pswitch_4
    const-string v1, "ActivityTaskManager"

    .line 204
    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v3, "Activity pause timeout for "

    .line 208
    .line 209
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 225
    .line 226
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 227
    .line 228
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 229
    .line 230
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 231
    .line 232
    .line 233
    monitor-enter v1

    .line 234
    :try_start_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 235
    .line 236
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_4

    .line 241
    .line 242
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 243
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :catchall_3
    move-exception p0

    .line 248
    goto :goto_5

    .line 249
    :cond_4
    :try_start_7
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 250
    .line 251
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 252
    .line 253
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 254
    .line 255
    iget-wide v4, v2, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    .line 256
    .line 257
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    .line 264
    .line 265
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 266
    .line 267
    .line 268
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 269
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 270
    .line 271
    .line 272
    :goto_4
    return-void

    .line 273
    :goto_5
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 274
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
