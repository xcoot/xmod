.class public final Lcom/android/server/wm/InputConsumerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mClientPid:I

.field public final mClientUser:Landroid/os/UserHandle;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mInputSurface:Landroid/view/SurfaceControl;

.field public final mName:Ljava/lang/String;

.field public mNeedOneHandOpSpec:Z

.field public final mOldPosition:Landroid/graphics/Point;

.field public final mOldWindowCrop:Landroid/graphics/Rect;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpClipRect:Landroid/graphics/Rect;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mToken:Landroid/os/IBinder;

.field public final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Point;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldWindowCrop:Landroid/graphics/Rect;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    .line 37
    .line 38
    iput p5, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientPid:I

    .line 39
    .line 40
    iput-object p6, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    .line 41
    .line 42
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iput-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 49
    .line 50
    if-eqz p4, :cond_0

    .line 51
    .line 52
    invoke-virtual {p2, p4}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    new-instance p4, Landroid/view/InputApplicationHandle;

    .line 56
    .line 57
    new-instance p5, Landroid/os/Binder;

    .line 58
    .line 59
    invoke-direct {p5}, Landroid/os/Binder;-><init>()V

    .line 60
    .line 61
    .line 62
    sget p6, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 63
    .line 64
    int-to-long v0, p6

    .line 65
    invoke-direct {p4, p5, p3, v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    new-instance p5, Landroid/view/InputWindowHandle;

    .line 69
    .line 70
    invoke-direct {p5, p4, p7}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 71
    .line 72
    .line 73
    iput-object p5, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 74
    .line 75
    iput-object p3, p5, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iput-object p2, p5, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 82
    .line 83
    const/16 p2, 0x7e6

    .line 84
    .line 85
    iput p2, p5, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 86
    .line 87
    iput-wide v0, p5, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 88
    .line 89
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 90
    .line 91
    iput p2, p5, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 92
    .line 93
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    .line 94
    .line 95
    iput p2, p5, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 96
    .line 97
    const/high16 p2, 0x3f800000    # 1.0f

    .line 98
    .line 99
    iput p2, p5, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 100
    .line 101
    const/4 p2, 0x4

    .line 102
    iput p2, p5, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 103
    .line 104
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 105
    .line 106
    invoke-virtual {p2, p7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    new-instance p4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string p6, "Input Consumer "

    .line 123
    .line 124
    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    const-string p3, "InputConsumerImpl"

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    iput-object p2, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 149
    .line 150
    const/4 p3, 0x1

    .line 151
    invoke-virtual {p5, p8, p2, p3}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 155
    .line 156
    invoke-virtual {p1, p7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 161
    .line 162
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 11
    .line 12
    iget v2, v2, Landroid/view/InputWindowHandle;->displayId:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Landroid/os/IBinder;)Z

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 38
    .line 39
    .line 40
    :goto_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mNeedOneHandOpSpec:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 23
    .line 24
    mul-float/2addr v1, v0

    .line 25
    float-to-int v1, v1

    .line 26
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    mul-float/2addr v2, v0

    .line 30
    float-to-int v0, v2

    .line 31
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    .line 49
    .line 50
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->equals(II)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldWindowCrop:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mNeedOneHandOpSpec:Z

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-boolean v0, v0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 98
    .line 99
    iget v7, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    const/4 v6, 0x0

    .line 103
    move-object v2, p1

    .line 104
    move v4, v7

    .line 105
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 109
    .line 110
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 111
    .line 112
    int-to-float v2, v2

    .line 113
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 114
    .line 115
    add-float/2addr v2, v3

    .line 116
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    int-to-float v3, v3

    .line 119
    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 120
    .line 121
    add-float/2addr v3, v1

    .line 122
    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 127
    .line 128
    const/4 v8, 0x0

    .line 129
    const/high16 v9, 0x3f800000    # 1.0f

    .line 130
    .line 131
    const/high16 v6, 0x3f800000    # 1.0f

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    move-object v4, p1

    .line 135
    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 139
    .line 140
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 141
    .line 142
    int-to-float v1, v1

    .line 143
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 144
    .line 145
    int-to-float v2, v2

    .line 146
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 151
    .line 152
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 153
    .line 154
    int-to-float v1, v1

    .line 155
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 156
    .line 157
    int-to-float v2, v2

    .line 158
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 159
    .line 160
    .line 161
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    .line 164
    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    .line 169
    .line 170
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 171
    .line 172
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 173
    .line 174
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Point;->set(II)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mOldWindowCrop:Landroid/graphics/Rect;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/wm/InputConsumerImpl;->mTmpClipRect:Landroid/graphics/Rect;

    .line 180
    .line 181
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
