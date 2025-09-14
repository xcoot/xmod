.class public final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mAlpha:I

.field public final mAnimationController:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

.field public final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public final mBounds:Landroid/graphics/Region;

.field public final mDirtyRect:Landroid/graphics/Rect;

.field public volatile mInvalidated:Z

.field public mLastSurfaceShown:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mPreviousAlpha:I

.field public mShown:Z

.field public final mSurface:Landroid/view/Surface;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Magnification Overlay"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/Region;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    .line 14
    .line 15
    new-instance v1, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    new-instance v1, Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    .line 28
    .line 29
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, -0x3

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "ViewportWindow"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 63
    .line 64
    iget-object v2, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 65
    .line 66
    iget-object v3, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mScreenSize:Landroid/graphics/Point;

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 71
    .line 72
    .line 73
    new-instance v8, Landroid/graphics/BLASTBufferQueue;

    .line 74
    .line 75
    iget-object v2, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mScreenSize:Landroid/graphics/Point;

    .line 78
    .line 79
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 80
    .line 81
    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    const-string v3, "Magnification Overlay"

    .line 85
    .line 86
    move-object v2, v8

    .line 87
    move-object v4, v1

    .line 88
    invoke-direct/range {v2 .. v7}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    .line 89
    .line 90
    .line 91
    iput-object v8, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 92
    .line 93
    iget-object v2, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 94
    .line 95
    iget-object v2, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 104
    .line 105
    iget-object v3, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 106
    .line 107
    iget-object v3, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 108
    .line 109
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    const/16 v3, 0x7eb

    .line 115
    .line 116
    invoke-static {v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    mul-int/lit16 v3, v3, 0x2710

    .line 121
    .line 122
    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const/4 v4, 0x0

    .line 127
    invoke-virtual {v3, v1, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 128
    .line 129
    .line 130
    iget-object v3, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 131
    .line 132
    iget-object v3, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 133
    .line 134
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 135
    .line 136
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 140
    .line 141
    .line 142
    iput-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 143
    .line 144
    invoke-virtual {v8}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    .line 149
    .line 150
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

    .line 151
    .line 152
    iget-object v1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;Landroid/content/Context;Landroid/os/Looper;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAnimationController:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

    .line 166
    .line 167
    new-instance v0, Landroid/util/TypedValue;

    .line 168
    .line 169
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const v2, 0x1010390

    .line 177
    .line 178
    .line 179
    const/4 v3, 0x1

    .line 180
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 181
    .line 182
    .line 183
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 184
    .line 185
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 186
    .line 187
    .line 188
    const v0, 0x1060343

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    .line 196
    .line 197
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    .line 203
    .line 204
    iget p1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    .line 205
    .line 206
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    .line 213
    .line 214
    iput-boolean v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    .line 215
    .line 216
    return-void
.end method


# virtual methods
.method public final invalidate(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 12
    .line 13
    .line 14
    :goto_0
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 14
    .line 15
    iget-wide v1, v1, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_2
    const/4 v1, 0x0

    .line 68
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    .line 69
    .line 70
    iget v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    if-gtz v2, :cond_4

    .line 74
    .line 75
    iget v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPreviousAlpha:I

    .line 76
    .line 77
    if-lez v4, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v4, v1

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    :goto_1
    move v4, v3

    .line 83
    :goto_2
    const/4 v5, 0x0

    .line 84
    if-eqz v4, :cond_6

    .line 85
    .line 86
    new-instance v6, Landroid/graphics/Region;

    .line 87
    .line 88
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    .line 89
    .line 90
    invoke-direct {v6, v7}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 91
    .line 92
    .line 93
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_5

    .line 100
    .line 101
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    .line 102
    .line 103
    iget-object v8, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 104
    .line 105
    invoke-virtual {v7, v8}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 106
    .line 107
    .line 108
    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 109
    .line 110
    iget-object v8, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 111
    .line 112
    iget v8, v8, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    .line 113
    .line 114
    neg-int v8, v8

    .line 115
    invoke-virtual {v7, v8, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 116
    .line 117
    .line 118
    new-instance v7, Landroid/graphics/Rect;

    .line 119
    .line 120
    iget-object v8, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 121
    .line 122
    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    move-object v6, v5

    .line 127
    move-object v7, v6

    .line 128
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 130
    .line 131
    .line 132
    if-eqz v4, :cond_8

    .line 133
    .line 134
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    .line 135
    .line 136
    invoke-virtual {v0, v7}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 137
    .line 138
    .line 139
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    .line 140
    :catch_0
    if-nez v5, :cond_7

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 144
    .line 145
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    .line 158
    .line 159
    invoke-virtual {v5, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    .line 163
    .line 164
    invoke-virtual {v0, v5}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 165
    .line 166
    .line 167
    iput v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPreviousAlpha:I

    .line 168
    .line 169
    :cond_8
    if-lez v2, :cond_9

    .line 170
    .line 171
    move v0, v3

    .line 172
    goto :goto_4

    .line 173
    :cond_9
    move v0, v1

    .line 174
    :goto_4
    if-eqz v0, :cond_a

    .line 175
    .line 176
    iget-boolean v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mLastSurfaceShown:Z

    .line 177
    .line 178
    if-nez v2, :cond_a

    .line 179
    .line 180
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 189
    .line 190
    .line 191
    iput-boolean v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mLastSurfaceShown:Z

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    if-nez v0, :cond_b

    .line 195
    .line 196
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mLastSurfaceShown:Z

    .line 197
    .line 198
    if-eqz v0, :cond_b

    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 201
    .line 202
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 209
    .line 210
    .line 211
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mLastSurfaceShown:Z

    .line 212
    .line 213
    :cond_b
    :goto_5
    return-void

    .line 214
    :goto_6
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 216
    .line 217
    .line 218
    throw p0
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    .line 14
    .line 15
    if-ne v1, p1, :cond_0

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method
