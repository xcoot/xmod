.class public final synthetic Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskPositioner;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskPositioner;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x2

    .line 16
    and-int/2addr v0, v2

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :cond_1
    :goto_0
    move v1, v3

    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v5, 0x3

    .line 44
    if-eq p1, v3, :cond_5

    .line 45
    .line 46
    if-eq p1, v2, :cond_4

    .line 47
    .line 48
    if-eq p1, v5, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 57
    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 59
    .line 60
    .line 61
    monitor-enter p1

    .line 62
    :try_start_0
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 73
    .line 74
    .line 75
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_6

    .line 88
    .line 89
    const-string/jumbo p1, "wm.TaskPositioner.resizeTask"

    .line 90
    .line 91
    .line 92
    const-wide/16 v6, 0x20

    .line 93
    .line 94
    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 102
    .line 103
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 104
    .line 105
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 108
    .line 109
    .line 110
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 121
    .line 122
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 123
    .line 124
    if-eqz p1, :cond_1

    .line 125
    .line 126
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 131
    .line 132
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 133
    .line 134
    .line 135
    monitor-enter v0

    .line 136
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 139
    .line 140
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->setDragResizing(Z)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 148
    .line 149
    .line 150
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 152
    .line 153
    .line 154
    if-eqz p1, :cond_8

    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_8

    .line 165
    .line 166
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 169
    .line 170
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 171
    .line 172
    .line 173
    monitor-enter p1

    .line 174
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 175
    .line 176
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 177
    .line 178
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 179
    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 183
    .line 184
    if-eqz v0, :cond_7

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :catchall_1
    move-exception p0

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 197
    .line 198
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 201
    .line 202
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 203
    .line 204
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 205
    .line 206
    invoke-virtual {p1, v0, v1, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :goto_3
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 211
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 212
    .line 213
    .line 214
    throw p0

    .line 215
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 216
    .line 217
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning$1()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :catchall_2
    move-exception p0

    .line 225
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 226
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 227
    .line 228
    .line 229
    throw p0

    .line 230
    :cond_9
    :goto_5
    return v1
.end method
