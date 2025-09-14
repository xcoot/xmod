.class public final Lcom/android/server/wm/ActivityRecordInputSink;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

.field public final mIsCompatEnabled:Z

.field public final mName:Ljava/lang/String;

.field public mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    const-wide/32 v0, 0xb978b5f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " ActivityRecordInputSink "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    iput p0, p2, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    .line 62
    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public final applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 12
    .line 13
    new-instance v5, Landroid/view/InputWindowHandle;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-direct {v5, v4, v6}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 20
    .line 21
    .line 22
    iput-boolean v1, v5, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 23
    .line 24
    iput-object v2, v5, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 25
    .line 26
    const/16 v6, 0x7e6

    .line 27
    .line 28
    iput v6, v5, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 29
    .line 30
    sget v6, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 31
    .line 32
    iput v6, v5, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 33
    .line 34
    sget v6, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    .line 35
    .line 36
    iput v6, v5, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 37
    .line 38
    const/4 v6, 0x5

    .line 39
    iput v6, v5, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 40
    .line 41
    invoke-direct {v0, v5}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 45
    .line 46
    :cond_0
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v0, v4

    .line 56
    :goto_0
    const/4 v5, 0x0

    .line 57
    const/16 v6, 0x8

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget v7, v0, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eq v7, v8, :cond_8

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    .line 81
    .line 82
    if-eqz v0, :cond_8

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_8

    .line 89
    .line 90
    iget-boolean v0, v3, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSinkEnabled:Z

    .line 91
    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 102
    .line 103
    iget-boolean v0, v0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_6

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 143
    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isTaskViewTask()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_7

    .line 151
    .line 152
    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 153
    .line 154
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskViewTaskOrganizerTaskId:I

    .line 155
    .line 156
    invoke-virtual {v7, v0}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 170
    .line 171
    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 176
    .line 177
    invoke-virtual {v0, v6, v6}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 178
    .line 179
    .line 180
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    iget-object v7, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 187
    .line 188
    iget v8, v7, Landroid/view/InputWindowHandle;->displayId:I

    .line 189
    .line 190
    if-ne v8, v6, :cond_9

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    iput v6, v7, Landroid/view/InputWindowHandle;->displayId:I

    .line 194
    .line 195
    iput-boolean v1, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 196
    .line 197
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 200
    .line 201
    if-nez v1, :cond_a

    .line 202
    .line 203
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const-string v2, "ActivityRecordInputSink.createSurface"

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    const/high16 v2, -0x80000000

    .line 226
    .line 227
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 228
    .line 229
    .line 230
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 231
    .line 232
    :cond_a
    iget-boolean v1, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 233
    .line 234
    if-eqz v1, :cond_b

    .line 235
    .line 236
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 237
    .line 238
    iget-object v1, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 239
    .line 240
    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 241
    .line 242
    .line 243
    iput-boolean v5, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 244
    .line 245
    :cond_b
    return-void
.end method
