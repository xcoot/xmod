.class public final synthetic Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    check-cast p1, Landroid/os/IBinder;

    .line 4
    .line 5
    check-cast p2, Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string p0, "WindowManager"

    .line 26
    .line 27
    const-string p1, "Unknown focus tokens, dropping reportFocusChanged"

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_7

    .line 37
    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_8

    .line 40
    .line 41
    :cond_0
    :try_start_1
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedInputTarget:Lcom/android/server/wm/InputTarget;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 44
    .line 45
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/AccessibilityController;->onFocusChanged(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InputTarget;)V

    .line 46
    .line 47
    .line 48
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    aget-boolean v3, v3, v4

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 64
    .line 65
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    const/4 v9, 0x0

    .line 70
    const-wide v6, -0x2f92cca40c6fcbd9L    # -2.7049608058039184E79

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move-object v2, v0

    .line 92
    :goto_0
    const/4 v3, 0x0

    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 96
    .line 97
    if-ne v4, p2, :cond_6

    .line 98
    .line 99
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    .line 100
    .line 101
    iget-object v4, p2, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 102
    .line 103
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 104
    .line 105
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 106
    .line 107
    .line 108
    monitor-enter v4

    .line 109
    :try_start_2
    iget-object v5, p2, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 120
    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 124
    .line 125
    if-eq v5, v6, :cond_3

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 130
    .line 131
    .line 132
    iget-object v4, p2, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 133
    .line 134
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    invoke-virtual {v4, v5}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    .line 141
    .line 142
    .line 143
    iget-object p2, p2, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    goto :goto_5

    .line 155
    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 157
    .line 158
    .line 159
    :goto_2
    const/4 p2, 0x1

    .line 160
    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 164
    .line 165
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 166
    .line 167
    .line 168
    monitor-enter v2

    .line 169
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_5

    .line 176
    .line 177
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 178
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :catchall_2
    move-exception p0

    .line 183
    goto :goto_4

    .line 184
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    new-array v4, v4, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 191
    .line 192
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    check-cast p0, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 199
    .line 200
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 201
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 202
    .line 203
    .line 204
    array-length v2, p0

    .line 205
    move v4, v3

    .line 206
    :goto_3
    if-ge v4, v2, :cond_6

    .line 207
    .line 208
    aget-object v5, p0, v4

    .line 209
    .line 210
    check-cast v5, Lcom/android/server/wm/ViewServer$ViewServerWorker;

    .line 211
    .line 212
    monitor-enter v5

    .line 213
    :try_start_6
    iput-boolean p2, v5, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 216
    .line 217
    .line 218
    monitor-exit v5

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :catchall_3
    move-exception p0

    .line 223
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 224
    throw p0

    .line 225
    :goto_4
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 226
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 227
    .line 228
    .line 229
    throw p0

    .line 230
    :goto_5
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 231
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 232
    .line 233
    .line 234
    throw p0

    .line 235
    :cond_6
    :goto_6
    if-eqz v1, :cond_7

    .line 236
    .line 237
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :cond_7
    if-eqz v0, :cond_8

    .line 242
    .line 243
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 244
    .line 245
    if-ne p0, p1, :cond_8

    .line 246
    .line 247
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    .line 248
    .line 249
    .line 250
    :cond_8
    :goto_7
    return-void

    .line 251
    :goto_8
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 252
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 253
    .line 254
    .line 255
    throw p0
.end method
