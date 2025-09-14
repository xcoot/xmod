.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/app/PictureInPictureParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;ZLandroid/app/PictureInPictureParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$2:Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$4:Landroid/app/PictureInPictureParams;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$2:Lcom/android/server/wm/Transition;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$3:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;->f$4:Landroid/app/PictureInPictureParams;

    .line 10
    .line 11
    const-string/jumbo v2, "transition abort, destroyed="

    .line 12
    .line 13
    .line 14
    const-string v3, "Skip enterPictureInPictureMode, destroyed "

    .line 15
    .line 16
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 19
    .line 20
    .line 21
    monitor-enter v8

    .line 22
    :try_start_0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-eqz v4, :cond_5

    .line 27
    .line 28
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    iget v2, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 42
    .line 43
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    filled-new-array {v2, v3, v4, v6}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const v3, 0x9470

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 72
    .line 73
    invoke-virtual {v2, p0}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 81
    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 97
    .line 98
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    invoke-virtual {v2, v3, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object p0, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 117
    .line 118
    .line 119
    :cond_2
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 120
    .line 121
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 122
    .line 123
    const-string v4, "enterPictureInPictureMode"

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    move-object v2, v7

    .line 128
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/Transition;Landroid/graphics/Rect;)V

    .line 129
    .line 130
    .line 131
    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 132
    .line 133
    invoke-virtual {v7, p0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_3

    .line 138
    .line 139
    iget-boolean p0, v7, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    .line 140
    .line 141
    if-eqz p0, :cond_3

    .line 142
    .line 143
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 144
    .line 145
    const-string v6, "auto-pip"

    .line 146
    .line 147
    const/4 v3, 0x0

    .line 148
    const/4 v4, 0x0

    .line 149
    const/4 v5, 0x1

    .line 150
    move-object v2, v7

    .line 151
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_3
    const/4 p0, 0x0

    .line 155
    iput-boolean p0, v7, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 156
    .line 157
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SA_LOGGING:Z

    .line 158
    .line 159
    if-eqz p0, :cond_4

    .line 160
    .line 161
    const-string p0, "2301"

    .line 162
    .line 163
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_5
    :goto_0
    :try_start_1
    const-string p0, "ActivityTaskManager"

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    if-eqz v5, :cond_7

    .line 191
    .line 192
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 193
    .line 194
    if-eqz p0, :cond_6

    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-nez p0, :cond_6

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_6
    const-string p0, "ActivityTaskManager[PipTaskOrganizer]"

    .line 204
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Lcom/android/server/wm/Transition;->abort()V

    .line 221
    .line 222
    .line 223
    :cond_7
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 225
    .line 226
    .line 227
    :goto_2
    return-void

    .line 228
    :goto_3
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 230
    .line 231
    .line 232
    throw p0
.end method
