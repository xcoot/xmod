.class public final Lcom/android/server/wm/OneHandOpPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBootCompleted:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mHasOneHandOpSpec:Z

.field public mIsOneHandOpEnabled:Z

.field public mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

.field public mReasonToStart:I

.field public mRestartRunnable:Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

.field public mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static startReasonToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "RESTART_ONE_HAND_OP_SERVICE"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, "HOME_KEY_DOUBLE"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const-string p0, "SETTING_OBSERVER"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const-string p0, "SYSTEM_BOOTED"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    const-string p0, "NONE"

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public final changeDisplayScaleLocked(Landroid/view/MagnificationSpec;ZLandroid/view/IInputFilter;)V
    .locals 8

    .line 1
    const-string v0, "changeDisplayScale, mHasOneHandOpSpec="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    const-string v2, "OneHandOpPolicy"

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", scale="

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", offsetX="

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", offsetY="

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ", registerInput="

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", filter="

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    const-string p0, "OneHandOpPolicy"

    .line 85
    .line 86
    const-string p1, "changeDisplayScale, display is null"

    .line 87
    .line 88
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_0
    :try_start_1
    iget v2, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    cmpg-float v3, v3, v2

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v5, 0x1

    .line 106
    if-gez v3, :cond_6

    .line 107
    .line 108
    const/high16 v3, 0x3f800000    # 1.0f

    .line 109
    .line 110
    cmpl-float v3, v2, v3

    .line 111
    .line 112
    if-eqz v3, :cond_6

    .line 113
    .line 114
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 115
    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    iget-boolean v6, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 119
    .line 120
    if-eqz v6, :cond_4

    .line 121
    .line 122
    iget v6, v3, Landroid/view/MagnificationSpec;->scale:F

    .line 123
    .line 124
    cmpl-float v2, v6, v2

    .line 125
    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    move v2, v5

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    move v2, v4

    .line 131
    :goto_0
    iget v6, v3, Landroid/view/MagnificationSpec;->offsetX:F

    .line 132
    .line 133
    iget v7, p1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 134
    .line 135
    cmpl-float v6, v6, v7

    .line 136
    .line 137
    if-nez v6, :cond_2

    .line 138
    .line 139
    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    .line 140
    .line 141
    iget v6, p1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 142
    .line 143
    cmpl-float v3, v3, v6

    .line 144
    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    :cond_2
    move v4, v5

    .line 148
    :cond_3
    if-nez v2, :cond_5

    .line 149
    .line 150
    if-nez v4, :cond_5

    .line 151
    .line 152
    const-string p0, "OneHandOpPolicy"

    .line 153
    .line 154
    const-string p1, "changeDisplayScale, the requested scale & offset are same"

    .line 155
    .line 156
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_4
    :try_start_2
    const-string p0, "OneHandOpPolicy"

    .line 165
    .line 166
    const-string p1, "changeDisplayScale, other requested spec exists"

    .line 167
    .line 168
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_5
    :try_start_3
    iput-boolean v5, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 177
    .line 178
    iget-object v2, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 179
    .line 180
    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 181
    .line 182
    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 183
    .line 184
    .line 185
    if-eqz p2, :cond_7

    .line 186
    .line 187
    iget-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 190
    .line 191
    invoke-virtual {p1, p3}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_6
    iget-boolean p2, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 196
    .line 197
    if-eqz p2, :cond_8

    .line 198
    .line 199
    iget-object p2, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 200
    .line 201
    iget p3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 202
    .line 203
    invoke-virtual {p2, p3, p1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 204
    .line 205
    .line 206
    iput-boolean v4, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 209
    .line 210
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 211
    .line 212
    const/4 p2, 0x0

    .line 213
    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 219
    .line 220
    .line 221
    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 222
    .line 223
    invoke-virtual {p0, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 224
    .line 225
    .line 226
    :cond_8
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 233
    .line 234
    .line 235
    throw p0
.end method

.method public final startService(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "startService() reason="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/wm/OneHandOpPolicy;->startReasonToString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", caller="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "OneHandOpPolicy"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iput p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mReasonToStart:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/OneHandOpPolicy;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method
