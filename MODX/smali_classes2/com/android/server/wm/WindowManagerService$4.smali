.class public final Lcom/android/server/wm/WindowManagerService$4;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppTransitionCancelledLocked(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mInTransitionInfoList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 25
    .line 26
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 27
    .line 28
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget-object v5, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget v5, v5, Landroid/content/res/Configuration;->dexMode:I

    .line 49
    .line 50
    const/4 v6, 0x3

    .line 51
    const/4 v7, 0x1

    .line 52
    if-ne v5, v6, :cond_1

    .line 53
    .line 54
    move v5, v7

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v5, v1

    .line 57
    :goto_0
    const/4 v6, 0x5

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LIMIT_RUNNING_APPS:Z

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    const/16 v4, 0xf

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v4, v6

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget v4, v2, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    .line 72
    .line 73
    if-lez v4, :cond_2

    .line 74
    .line 75
    :goto_1
    new-array v5, v7, [I

    .line 76
    .line 77
    new-instance v8, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    const/4 v9, 0x2

    .line 80
    invoke-direct {v8, v9, v5}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 84
    .line 85
    .line 86
    aget v5, v5, v1

    .line 87
    .line 88
    sub-int/2addr v5, v7

    .line 89
    move v8, v1

    .line 90
    :goto_2
    iget-object v9, v2, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    .line 92
    if-le v5, v3, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    if-eqz v10, :cond_4

    .line 103
    .line 104
    iget-boolean v11, v10, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 105
    .line 106
    if-nez v11, :cond_4

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    invoke-virtual {v10, v11}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_4

    .line 114
    .line 115
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-ne v11, v6, :cond_4

    .line 120
    .line 121
    add-int/lit8 v8, v8, 0x1

    .line 122
    .line 123
    if-le v8, v4, :cond_4

    .line 124
    .line 125
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 126
    .line 127
    const/4 v11, -0x1

    .line 128
    invoke-virtual {v9, v11, v11, v10, v7}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(IILcom/android/server/wm/Task;Z)Z

    .line 129
    .line 130
    .line 131
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    if-le v8, v4, :cond_6

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 141
    .line 142
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 143
    .line 144
    iget-object v5, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    const v6, 0x103012b

    .line 147
    .line 148
    .line 149
    invoke-direct {v3, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v3, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    const v5, 0x10405b3

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 178
    .line 179
    new-instance v4, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;

    .line 180
    .line 181
    invoke-direct {v4, v0, v3}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    .line 186
    .line 187
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 192
    .line 193
    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mInTransitionInfoList:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    .line 197
    .line 198
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    .line 199
    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 205
    .line 206
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 207
    .line 208
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_7

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 217
    .line 218
    .line 219
    :cond_7
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 220
    .line 221
    if-eqz v0, :cond_9

    .line 222
    .line 223
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 224
    .line 225
    if-eqz v0, :cond_8

    .line 226
    .line 227
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_8

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 235
    .line 236
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 237
    .line 238
    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 241
    .line 242
    const/16 v2, 0xd4

    .line 243
    .line 244
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    .line 250
    .line 251
    iput-boolean v1, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 255
    .line 256
    .line 257
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 258
    .line 259
    if-eqz v0, :cond_b

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 262
    .line 263
    if-eqz p0, :cond_a

    .line 264
    .line 265
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    if-eqz p0, :cond_a

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_a
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    if-eqz p0, :cond_b

    .line 279
    .line 280
    :try_start_0
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 281
    .line 282
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 283
    .line 284
    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 285
    .line 286
    invoke-interface {p0, p1}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .line 288
    .line 289
    :catch_0
    :cond_b
    :goto_4
    return-void
.end method
