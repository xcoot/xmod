.class public final Lcom/android/server/wm/SurfaceAnimationRunner;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnimationHandler:Landroid/animation/AnimationHandler;

.field public mAnimationStartDeferred:Z

.field public final mAnimationThreadHandler:Landroid/os/Handler;

.field public final mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

.field public mApplyScheduled:Z

.field public final mApplyTransactionRunnable:Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;

.field public final mCancelLock:Ljava/lang/Object;

.field mChoreographer:Landroid/view/Choreographer;

.field public final mEdgeExtensionExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mEdgeExtensionLock:Ljava/lang/Object;

.field public final mEdgeExtensions:Landroid/util/ArrayMap;

.field public final mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mLock:Ljava/lang/Object;

.field final mPendingAnimations:Landroid/util/ArrayMap;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mPreProcessingAnimations:Landroid/util/ArrayMap;

.field final mRunningAnimations:Landroid/util/ArrayMap;

.field public final mSurfaceAnimationHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;Landroid/os/PowerManagerInternal;)V
    .locals 4

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
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationThreadHandler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mSurfaceAnimationHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;I)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 51
    .line 52
    new-instance v1, Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 58
    .line 59
    new-instance v1, Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 65
    .line 66
    new-instance v1, Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 72
    .line 73
    new-instance v1, Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 79
    .line 80
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;I)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 92
    .line 93
    new-instance p3, Landroid/animation/AnimationHandler;

    .line 94
    .line 95
    invoke-direct {p3}, Landroid/animation/AnimationHandler;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 99
    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 106
    .line 107
    invoke-direct {p1, v0}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-virtual {p3, p1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 111
    .line 112
    .line 113
    if-eqz p2, :cond_1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    new-instance p2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;

    .line 117
    .line 118
    invoke-direct {p2, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    .line 122
    .line 123
    iput-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 124
    .line 125
    return-void
.end method


# virtual methods
.method public final continueStartingAnimations()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "createExtensionSurface"

    .line 3
    .line 4
    const-wide/16 v2, 0x20

    .line 5
    .line 6
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-nez p2, :cond_0

    .line 59
    .line 60
    const-string p0, "SurfaceAnimationRunner"

    .line 61
    .line 62
    const-string p1, "Failed to create edge extension - edge buffer is null"

    .line 63
    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_0
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    .line 70
    .line 71
    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v4, "DefaultTransitionHandler#startAnimation"

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v4, Landroid/graphics/BitmapShader;

    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 115
    .line 116
    invoke-direct {v4, p2, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 117
    .line 118
    .line 119
    new-instance p2, Landroid/graphics/Paint;

    .line 120
    .line 121
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 122
    .line 123
    .line 124
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_EDGE_EXTENSION_ANIM_DEBUG:Z

    .line 125
    .line 126
    if-eqz v5, :cond_5

    .line 127
    .line 128
    const/4 v4, -0x1

    .line 129
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    sparse-switch v5, :sswitch_data_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :sswitch_0
    const-string v5, "Top Edge Extension"

    .line 138
    .line 139
    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p6

    .line 143
    if-nez p6, :cond_1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    const/4 v4, 0x3

    .line 147
    goto :goto_0

    .line 148
    :sswitch_1
    const-string v5, "Bottom Edge Extension"

    .line 149
    .line 150
    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p6

    .line 154
    if-nez p6, :cond_2

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_2
    const/4 v4, 0x2

    .line 158
    goto :goto_0

    .line 159
    :sswitch_2
    const-string v5, "Left Edge Extension"

    .line 160
    .line 161
    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p6

    .line 165
    if-nez p6, :cond_3

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    move v4, v0

    .line 169
    goto :goto_0

    .line 170
    :sswitch_3
    const-string v5, "Right Edge Extension"

    .line 171
    .line 172
    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p6

    .line 176
    if-nez p6, :cond_4

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_4
    const/4 v4, 0x0

    .line 180
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 181
    .line 182
    .line 183
    const p6, -0xff01

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :pswitch_0
    const p6, -0xff0100

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :pswitch_1
    const p6, -0xff0001

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :pswitch_2
    const/high16 p6, -0x10000

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :pswitch_3
    const p6, -0xffff01

    .line 199
    .line 200
    .line 201
    :goto_1
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 206
    .line 207
    .line 208
    :goto_2
    new-instance p6, Landroid/view/Surface;

    .line 209
    .line 210
    invoke-direct {p6, v1}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p6}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p6, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p6}, Landroid/view/Surface;->release()V

    .line 224
    .line 225
    .line 226
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    .line 227
    .line 228
    monitor-enter p2

    .line 229
    :try_start_0
    iget-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 230
    .line 231
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    if-nez p3, :cond_6

    .line 236
    .line 237
    invoke-virtual {p7, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 238
    .line 239
    .line 240
    monitor-exit p2

    .line 241
    goto :goto_3

    .line 242
    :catchall_0
    move-exception p0

    .line 243
    goto :goto_4

    .line 244
    :cond_6
    invoke-virtual {p7, v1, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 245
    .line 246
    .line 247
    const/high16 p3, -0x80000000

    .line 248
    .line 249
    invoke-virtual {p7, v1, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 250
    .line 251
    .line 252
    int-to-float p3, p4

    .line 253
    int-to-float p4, p5

    .line 254
    invoke-virtual {p7, v1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p7, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 258
    .line 259
    .line 260
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 261
    .line 262
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    check-cast p0, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :goto_4
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    throw p0

    .line 278
    nop

    .line 279
    :sswitch_data_0
    .sparse-switch
        -0x6745efc0 -> :sswitch_3
        -0xfe12d4b -> :sswitch_2
        -0xf1eabef -> :sswitch_1
        0x238b1fe7 -> :sswitch_0
    .end sparse-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const/4 v2, 0x1

    .line 55
    :try_start_1
    iput-boolean v2, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    .line 56
    .line 57
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :try_start_2
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mSurfaceAnimationHandler:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;

    .line 61
    .line 62
    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :try_start_4
    throw p0

    .line 72
    :cond_2
    :goto_0
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    throw p0
.end method

.method public final startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 5
    .line 6
    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    iget-object p4, p4, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 20
    .line 21
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasExtension()Z

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    if-eqz p4, :cond_0

    .line 26
    .line 27
    const/4 p4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p4, 0x0

    .line 30
    :goto_0
    if-eqz p4, :cond_1

    .line 31
    .line 32
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v4, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 52
    .line 53
    new-instance v3, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;

    .line 54
    .line 55
    invoke-direct {v3, p0, p2, p1, v1}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Landroid/view/SurfaceControl;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v2, v3}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    :try_start_4
    throw p0

    .line 67
    :cond_1
    :goto_1
    if-nez p4, :cond_2

    .line 68
    .line 69
    iget-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {p4, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-boolean p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 75
    .line 76
    if-nez p4, :cond_2

    .line 77
    .line 78
    iget-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {p4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result p4

    .line 84
    if-eqz p4, :cond_2

    .line 85
    .line 86
    iget-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 87
    .line 88
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    const-wide/16 v1, 0x0

    .line 97
    .line 98
    invoke-interface {p1, p3, p2, v1, v2}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    .line 99
    .line 100
    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    throw p0
.end method

.method public final startPendingAnimationsLocked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;->makeAnimator()Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 31
    .line 32
    invoke-interface {v3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;

    .line 40
    .line 41
    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lcom/android/server/wm/SurfaceAnimationRunner$1;

    .line 48
    .line 49
    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner$1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 58
    .line 59
    iget-object v4, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    .line 60
    .line 61
    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 65
    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 68
    .line 69
    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->canSkipFirstFrame()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    const-wide/32 v5, 0xf4240

    .line 82
    .line 83
    .line 84
    div-long/2addr v3, v5

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    .line 95
    .line 96
    .line 97
    add-int/lit8 v0, v0, -0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 103
    .line 104
    .line 105
    return-void
.end method
