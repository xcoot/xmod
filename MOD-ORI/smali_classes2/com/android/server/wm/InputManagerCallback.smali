.class public final Lcom/android/server/wm/InputManagerCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field public mInputDevicesReady:Z

.field public final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field public mInputDispatchEnabled:Z

.field public mInputDispatchFrozen:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    return-void
.end method

.method public static timeoutMessage(Ljava/util/OptionalInt;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Input dispatching timed out."

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "Input dispatching timed out ("

    .line 7
    .line 8
    const-string v1, ")."

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/util/OptionalInt;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Landroid/view/SurfaceControl;->getStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_2
    iget-object v0, p0, Landroid/gui/StalledTransactionInfo;->layerName:Ljava/lang/String;

    .line 33
    .line 34
    iget-wide v1, p0, Landroid/gui/StalledTransactionInfo;->bufferId:J

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-wide v2, p0, Landroid/gui/StalledTransactionInfo;->frameNumber:J

    .line 41
    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    filled-new-array {p1, v0, v1, p0}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "%s Buffer processing for the associated surface is stuck due to an unsignaled fence (window=%s, bufferId=0x%016X, frameNumber=%s). This potentially indicates a GPU hang."

    .line 51
    .line 52
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method


# virtual methods
.method public final createSurfaceForGestureMonitor(ILjava/lang/String;)Landroid/view/SurfaceControl;
    .locals 5

    .line 1
    const-string v0, "Failed to create a gesture monitor on display: "

    .line 2
    .line 3
    const-string v1, "Failed to create a gesture monitor on display: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 16
    .line 17
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const-string p0, "WindowManager"

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " - DisplayContent not found."

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    return-object v4

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :try_start_1
    iget-object v1, v3, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    const-string p0, "WindowManager"

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " - Input overlay layer is not initialized."

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    return-object v4

    .line 84
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    .line 86
    iget-object p1, v3, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string p1, "createSurfaceForGestureMonitor"

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string p1, "InputManagerCallback.createSurfaceForGestureMonitor"

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 122
    .line 123
    .line 124
    return-object p0

    .line 125
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 127
    .line 128
    .line 129
    throw p0
.end method

.method public final dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 10
    .line 11
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 12
    .line 13
    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 14
    .line 15
    const-string v4, "WindowManager"

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 20
    .line 21
    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    const-string v5, "<unknown>"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v5, v5, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v7, "Unhandled key: inputToken="

    .line 35
    .line 36
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v7, ", title="

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v5, ", action="

    .line 51
    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, ", flags="

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v5, ", keyCode="

    .line 75
    .line 76
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, ", scanCode="

    .line 87
    .line 88
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v5, ", metaState="

    .line 99
    .line 100
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v5, ", repeatCount="

    .line 111
    .line 112
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v5, ", policyFlags="

    .line 123
    .line 124
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-static {v6, v2, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    move-object/from16 v5, p2

    .line 131
    .line 132
    invoke-virtual {v1, v0, v5}, Lcom/android/server/policy/PhoneWindowManager;->interceptUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_2

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    and-int/lit16 v6, v6, 0x400

    .line 146
    .line 147
    if-nez v6, :cond_8

    .line 148
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-nez v10, :cond_3

    .line 166
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-nez v10, :cond_3

    .line 172
    .line 173
    const/4 v10, 0x1

    .line 174
    goto :goto_1

    .line 175
    :cond_3
    const/4 v10, 0x0

    .line 176
    :goto_1
    if-eqz v10, :cond_4

    .line 177
    .line 178
    invoke-virtual {v6, v8, v9}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    goto :goto_2

    .line 183
    :cond_4
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 184
    .line 185
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    check-cast v6, Landroid/view/KeyCharacterMap$FallbackAction;

    .line 190
    .line 191
    :goto_2
    if-eqz v6, :cond_8

    .line 192
    .line 193
    if-eqz v3, :cond_5

    .line 194
    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v12, "Fallback: keyCode="

    .line 198
    .line 199
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget v12, v6, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 203
    .line 204
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v12, " metaState="

    .line 208
    .line 209
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget v12, v6, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 213
    .line 214
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    or-int/lit16 v9, v9, 0x400

    .line 233
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    .line 235
    .line 236
    .line 237
    move-result-wide v12

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 239
    .line 240
    .line 241
    move-result-wide v14

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 243
    .line 244
    .line 245
    move-result v16

    .line 246
    iget v7, v6, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 247
    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 249
    .line 250
    .line 251
    move-result v18

    .line 252
    iget v11, v6, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 253
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 255
    .line 256
    .line 257
    move-result v20

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    .line 259
    .line 260
    .line 261
    move-result v21

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    .line 263
    .line 264
    .line 265
    move-result v23

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 267
    .line 268
    .line 269
    move-result v24

    .line 270
    const/16 v25, 0x0

    .line 271
    .line 272
    move/from16 v17, v7

    .line 273
    .line 274
    move/from16 v19, v11

    .line 275
    .line 276
    move/from16 v22, v9

    .line 277
    .line 278
    invoke-static/range {v12 .. v25}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-virtual {v1, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    const/4 v11, 0x1

    .line 287
    and-int/2addr v9, v11

    .line 288
    if-eqz v9, :cond_6

    .line 289
    .line 290
    invoke-virtual {v1, v0, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    .line 291
    .line 292
    .line 293
    move-result-wide v11

    .line 294
    const-wide/16 v13, 0x0

    .line 295
    .line 296
    cmp-long v2, v11, v13

    .line 297
    .line 298
    if-nez v2, :cond_6

    .line 299
    .line 300
    invoke-virtual {v1, v0, v7}, Lcom/android/server/policy/PhoneWindowManager;->interceptUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_6

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_6
    invoke-virtual {v7}, Landroid/view/KeyEvent;->recycle()V

    .line 308
    .line 309
    .line 310
    const/4 v7, 0x0

    .line 311
    :goto_3
    if-eqz v10, :cond_7

    .line 312
    .line 313
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 314
    .line 315
    invoke-virtual {v0, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    const/4 v2, 0x1

    .line 324
    if-ne v0, v2, :cond_9

    .line 325
    .line 326
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 327
    .line 328
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .line 332
    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_8
    const/4 v7, 0x0

    .line 336
    :cond_9
    :goto_4
    if-eqz v3, :cond_b

    .line 337
    .line 338
    if-nez v7, :cond_a

    .line 339
    .line 340
    const-string v0, "No fallback."

    .line 341
    .line 342
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v1, "Performing fallback: "

    .line 349
    .line 350
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    :cond_b
    :goto_5
    return-object v7
.end method

.method public final getPointerDisplayId()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    .line 19
    .line 20
    return v3

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    sub-int/2addr v1, v2

    .line 33
    :goto_0
    if-ltz v1, :cond_5

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 36
    .line 37
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 40
    .line 41
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 46
    .line 47
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 48
    .line 49
    iget v5, v5, Landroid/view/DisplayInfo;->state:I

    .line 50
    .line 51
    if-ne v5, v2, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/view/Display;->getType()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-ne v5, v2, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/4 v6, 0x5

    .line 68
    if-ne v5, v6, :cond_3

    .line 69
    .line 70
    iget p0, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 71
    .line 72
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 74
    .line 75
    .line 76
    return p0

    .line 77
    :cond_3
    if-nez v3, :cond_4

    .line 78
    .line 79
    :try_start_2
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 80
    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    move v3, v4

    .line 84
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 89
    .line 90
    .line 91
    return v3

    .line 92
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public final getPointerLayer()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 p0, 0x7e2

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    mul-int/lit16 p0, p0, 0x2710

    .line 15
    .line 16
    add-int/lit16 p0, p0, 0x3e8

    .line 17
    .line 18
    return p0
.end method

.method public final interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public final interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final interceptMotionBeforeQueueingNonInteractive(IIIJI)I
    .locals 14

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    iget-object v1, v1, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 7
    .line 8
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    and-int/lit8 v3, p6, 0x1

    .line 12
    .line 13
    const-string v4, "MOTION"

    .line 14
    .line 15
    const/4 v5, 0x7

    .line 16
    const/4 v6, 0x0

    .line 17
    const-wide/32 v7, 0xf4240

    .line 18
    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 23
    .line 24
    div-long v10, p4, v7

    .line 25
    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    move v12, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v12, v6

    .line 31
    :goto_0
    iget-boolean v13, v9, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromMotion:Z

    .line 32
    .line 33
    invoke-virtual {v9, v13}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    if-nez v13, :cond_2

    .line 38
    .line 39
    :cond_1
    move v9, p1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object v1, v9, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v1, v10, v11, v0, v12}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromMotion(JIZ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_3
    invoke-virtual {v9, v10, v11, v5, v4}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_4

    .line 56
    :goto_1
    invoke-virtual {v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(I)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-eqz v9, :cond_4

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_4
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    const-string/jumbo v10, "theater_mode_on"

    .line 70
    .line 71
    .line 72
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-ne v9, v2, :cond_8

    .line 77
    .line 78
    if-eqz v3, :cond_8

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 81
    .line 82
    div-long v7, p4, v7

    .line 83
    .line 84
    if-nez p3, :cond_5

    .line 85
    .line 86
    move v3, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    move v3, v6

    .line 89
    :goto_2
    iget-boolean v9, v1, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromMotion:Z

    .line 90
    .line 91
    invoke-virtual {v1, v9}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-nez v9, :cond_6

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    iget-object v6, v1, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    .line 99
    .line 100
    if-eqz v6, :cond_7

    .line 101
    .line 102
    invoke-interface {v6, v7, v8, v0, v3}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromMotion(JIZ)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_7
    invoke-virtual {v1, v7, v8, v5, v4}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_8
    :goto_3
    move v2, v6

    .line 114
    :goto_4
    return v2
.end method

.method public final interceptQuickAccess(IFF)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    const-string v4, "PhoneWindowManagerExt"

    .line 15
    .line 16
    const/16 v5, 0x20

    .line 17
    .line 18
    if-eq p1, v3, :cond_1

    .line 19
    .line 20
    const/16 v3, 0xe1

    .line 21
    .line 22
    const-string v6, "location"

    .line 23
    .line 24
    const-string v7, "info"

    .line 25
    .line 26
    if-eq p1, v3, :cond_0

    .line 27
    .line 28
    const/16 v3, 0xe2

    .line 29
    .line 30
    if-eq p1, v3, :cond_0

    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    packed-switch p1, :pswitch_data_1

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_0
    const-string v3, "interceptQuickAccess, CHANGE_AOD_MODE"

    .line 40
    .line 41
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    new-instance v3, Landroid/content/Intent;

    .line 45
    .line 46
    const-string v4, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    .line 47
    .line 48
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    new-array v1, v1, [F

    .line 55
    .line 56
    aput p2, v1, v2

    .line 57
    .line 58
    aput p3, v1, v0

    .line 59
    .line 60
    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 69
    .line 70
    const-string v0, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    .line 71
    .line 72
    invoke-virtual {p2, v3, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    .line 76
    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    const/16 p2, 0x8

    .line 80
    .line 81
    if-ne p1, p2, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    .line 88
    .line 89
    const-string v4, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    .line 90
    .line 91
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    new-array p1, v1, [F

    .line 98
    .line 99
    aput p2, p1, v2

    .line 100
    .line 101
    aput p3, p1, v0

    .line 102
    .line 103
    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 112
    .line 113
    const-string p2, "com.samsung.android.permission.BROADCAST_QUICKACCESS"

    .line 114
    .line 115
    invoke-virtual {p0, v3, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const-string p1, "interceptQuickAccess, quickpay"

    .line 120
    .line 121
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    new-instance p1, Landroid/content/Intent;

    .line 125
    .line 126
    const-string p2, "com.samsung.android.spay.quickpay"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    sget-object p2, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 135
    .line 136
    const-string p2, "displayId"

    .line 137
    .line 138
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 144
    .line 145
    const-string p3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final notifyLidSwitchChanged(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 15
    .line 16
    iput p1, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->updateRotation(ZZ)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    const/16 p1, 0x9

    .line 48
    .line 49
    const-string v2, "LID"

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "lid_behavior"

    .line 62
    .line 63
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v1, :cond_3

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 70
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    return-void
.end method

.method public final notifyStickyModifierStateChanged(I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastModifierState:I

    .line 8
    .line 9
    xor-int/2addr v0, p1

    .line 10
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastModifierState:I

    .line 11
    .line 12
    and-int/lit8 v1, v0, 0x2

    .line 13
    .line 14
    const/high16 v2, 0x10000

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    and-int/lit8 v1, p1, 0x2

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    and-int v1, p1, v2

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 38
    .line 39
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAltTabConsumedByDeX:Z

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAltTabConsumedByDeX:Z

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->releaseAltTabKeyConsumer()V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    and-int/2addr v1, p1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 64
    .line 65
    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    :goto_0
    and-int/2addr v0, v2

    .line 77
    if-eqz v0, :cond_a

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    and-int v0, p1, v2

    .line 89
    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    and-int/lit8 p1, p1, 0x2

    .line 93
    .line 94
    if-eqz p1, :cond_7

    .line 95
    .line 96
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 97
    .line 98
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_7
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 102
    .line 103
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 107
    .line 108
    if-eqz p1, :cond_9

    .line 109
    .line 110
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_9
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 114
    .line 115
    if-eqz p1, :cond_a

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsViaA11y()V

    .line 118
    .line 119
    .line 120
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 121
    .line 122
    :cond_a
    :goto_1
    return-void
.end method
