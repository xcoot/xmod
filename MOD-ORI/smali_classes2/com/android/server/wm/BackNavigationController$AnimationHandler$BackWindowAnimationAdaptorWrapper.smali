.class public final Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

.field public mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field public mRequestedStartingSurfaceId:I

.field public mStartingSurface:Landroid/view/SurfaceControl;


# direct methods
.method public varargs constructor <init>(I[Lcom/android/server/wm/WindowContainer;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    iput v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    new-array v2, v2, [Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 13
    .line 14
    iput-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x1

    .line 18
    sub-int/2addr v2, v3

    .line 19
    :goto_0
    if-ltz v2, :cond_0

    .line 20
    .line 21
    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 22
    .line 23
    aget-object v5, v1, v2

    .line 24
    .line 25
    move/from16 v6, p1

    .line 26
    .line 27
    invoke-static {v6, v5, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->createAdaptor(ILcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    aput-object v5, v4, v2

    .line 32
    .line 33
    add-int/lit8 v2, v2, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    array-length v1, v1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-le v1, v3, :cond_5

    .line 39
    .line 40
    new-instance v14, Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 46
    .line 47
    array-length v4, v1

    .line 48
    sub-int/2addr v4, v3

    .line 49
    :goto_1
    if-ltz v4, :cond_1

    .line 50
    .line 51
    aget-object v5, v1, v4

    .line 52
    .line 53
    iget-object v5, v5, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 54
    .line 55
    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {v14, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v4, v4, -0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    aget-object v4, v1, v2

    .line 64
    .line 65
    iget-object v4, v4, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    :goto_2
    aget-object v6, v1, v2

    .line 85
    .line 86
    iget-object v7, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 87
    .line 88
    new-instance v6, Landroid/view/SurfaceControl$Builder;

    .line 89
    .line 90
    invoke-direct {v6}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v8, "cross-animation-leash"

    .line 94
    .line 95
    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 108
    .line 109
    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v5, "BackWindowAnimationAdaptorWrapper.getOrCreateAnimationTarget"

    .line 114
    .line 115
    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    .line 124
    .line 125
    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v5, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    invoke-virtual {v5, v2, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    invoke-virtual {v5, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 147
    .line 148
    .line 149
    array-length v4, v1

    .line 150
    sub-int/2addr v4, v3

    .line 151
    :goto_3
    if-ltz v4, :cond_4

    .line 152
    .line 153
    aget-object v3, v1, v4

    .line 154
    .line 155
    iget-object v6, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 156
    .line 157
    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 158
    .line 159
    invoke-virtual {v5, v6, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 160
    .line 161
    .line 162
    iget-object v6, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 163
    .line 164
    iget-object v8, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 165
    .line 166
    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    .line 167
    .line 168
    iget v9, v6, Landroid/graphics/Rect;->left:I

    .line 169
    .line 170
    int-to-float v9, v9

    .line 171
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 172
    .line 173
    int-to-float v6, v6

    .line 174
    invoke-virtual {v5, v8, v9, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 175
    .line 176
    .line 177
    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    if-eqz v6, :cond_3

    .line 184
    .line 185
    iget-object v8, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v8, v3, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 196
    .line 197
    .line 198
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_4
    new-instance v1, Landroid/view/RemoteAnimationTarget;

    .line 202
    .line 203
    move-object v4, v1

    .line 204
    iget v5, v7, Landroid/view/RemoteAnimationTarget;->taskId:I

    .line 205
    .line 206
    iget v6, v7, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 207
    .line 208
    iget-boolean v8, v7, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    .line 209
    .line 210
    iget-object v9, v7, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    .line 211
    .line 212
    iget-object v10, v7, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    .line 213
    .line 214
    iget v11, v7, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    .line 215
    .line 216
    new-instance v3, Landroid/graphics/Point;

    .line 217
    .line 218
    move-object v12, v3

    .line 219
    iget v13, v14, Landroid/graphics/Rect;->left:I

    .line 220
    .line 221
    iget v15, v14, Landroid/graphics/Rect;->top:I

    .line 222
    .line 223
    invoke-direct {v3, v13, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 224
    .line 225
    .line 226
    iget-object v15, v7, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 227
    .line 228
    iget-object v3, v7, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 229
    .line 230
    move-object/from16 v19, v3

    .line 231
    .line 232
    iget-boolean v3, v7, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    .line 233
    .line 234
    move/from16 v20, v3

    .line 235
    .line 236
    const/16 v18, 0x0

    .line 237
    .line 238
    const/16 v16, 0x1

    .line 239
    .line 240
    const/16 v17, 0x0

    .line 241
    .line 242
    move-object v7, v2

    .line 243
    move-object v13, v14

    .line 244
    invoke-direct/range {v4 .. v20}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 249
    .line 250
    aget-object v1, v1, v2

    .line 251
    .line 252
    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 253
    .line 254
    :goto_4
    iput-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 255
    .line 256
    return-void
.end method


# virtual methods
.method public final cleanUpWindowlessSurface(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aget-object v2, v2, v3

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    xor-int/2addr p1, v3

    .line 22
    iget-object v2, v2, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/window/ITaskOrganizer;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v4, Landroid/window/StartingWindowRemovalInfo;

    .line 36
    .line 37
    invoke-direct {v4}, Landroid/window/StartingWindowRemovalInfo;-><init>()V

    .line 38
    .line 39
    .line 40
    iput v0, v4, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    .line 41
    .line 42
    iput-boolean v3, v4, Landroid/window/StartingWindowRemovalInfo;->windowlessSurface:Z

    .line 43
    .line 44
    iput-boolean p1, v4, Landroid/window/StartingWindowRemovalInfo;->removeImmediately:Z

    .line 45
    .line 46
    const/4 p1, 0x3

    .line 47
    iput p1, v4, Landroid/window/StartingWindowRemovalInfo;->deferRemoveMode:I

    .line 48
    .line 49
    :try_start_0
    invoke-interface {v2, v4}, Landroid/window/ITaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    const-string v0, "TaskOrganizerController"

    .line 55
    .line 56
    const-string v2, "Exception sending removeWindowlessStartingSurface "

    .line 57
    .line 58
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    iput v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    .line 80
    .line 81
    :cond_3
    return-void
.end method
