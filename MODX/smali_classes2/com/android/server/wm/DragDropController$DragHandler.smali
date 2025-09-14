.class public final Lcom/android/server/wm/DragDropController$DragHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic this$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_6

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_4

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v0, v3, :cond_3

    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    if-eq v0, p1, :cond_2

    .line 17
    .line 18
    const/16 p1, 0x64

    .line 19
    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 29
    .line 30
    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 33
    .line 34
    iget-boolean v3, v0, Lcom/android/server/wm/DragDropController;->mUpdateTaskVisibilityAfterDragClosed:Z

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iput-boolean v1, v0, Lcom/android/server/wm/DragDropController;->mUpdateTaskVisibilityAfterDragClosed:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 55
    .line 56
    invoke-virtual {p0, v3, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 76
    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 78
    .line 79
    .line 80
    monitor-enter v0

    .line 81
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragDropController;->onUnhandledDropCallback(Z)V

    .line 84
    .line 85
    .line 86
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :catchall_1
    move-exception p0

    .line 93
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 101
    .line 102
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 103
    .line 104
    .line 105
    monitor-enter v0

    .line 106
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 115
    .line 116
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Landroid/view/SurfaceControl;

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 125
    .line 126
    .line 127
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 128
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    :catchall_2
    move-exception p0

    .line 134
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 135
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 140
    .line 141
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 142
    .line 143
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 144
    .line 145
    .line 146
    monitor-enter v0

    .line 147
    :try_start_6
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 150
    .line 151
    if-nez p0, :cond_5

    .line 152
    .line 153
    const-string p0, "WindowManager"

    .line 154
    .line 155
    const-string p1, "mDragState unexpectedly became null while playing animation"

    .line 156
    .line 157
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 161
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :catchall_3
    move-exception p0

    .line 166
    goto :goto_2

    .line 167
    :cond_5
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    .line 168
    .line 169
    .line 170
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 171
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :goto_2
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 176
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :cond_6
    const-string v0, "WindowManager"

    .line 181
    .line 182
    const-string v1, "Drag ending; tearing down input channel"

    .line 183
    .line 184
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast p1, Lcom/android/server/wm/DragState$InputInterceptor;

    .line 190
    .line 191
    if-nez p1, :cond_7

    .line 192
    .line 193
    return-void

    .line 194
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 195
    .line 196
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 197
    .line 198
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 199
    .line 200
    .line 201
    monitor-enter v0

    .line 202
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/wm/DragState$InputInterceptor;->tearDown()V

    .line 203
    .line 204
    .line 205
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 206
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :catchall_4
    move-exception p0

    .line 211
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 212
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p1, Landroid/os/IBinder;

    .line 219
    .line 220
    const-string v0, "WindowManager"

    .line 221
    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v3, "Timeout ending drag to win "

    .line 225
    .line 226
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 240
    .line 241
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 242
    .line 243
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 244
    .line 245
    .line 246
    monitor-enter p1

    .line 247
    :try_start_b
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 248
    .line 249
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 250
    .line 251
    if-eqz p0, :cond_9

    .line 252
    .line 253
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :catchall_5
    move-exception p0

    .line 258
    goto :goto_5

    .line 259
    :cond_9
    :goto_3
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 260
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 261
    .line 262
    .line 263
    :goto_4
    return-void

    .line 264
    :goto_5
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 265
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 266
    .line 267
    .line 268
    throw p0
.end method
