.class public final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

.field public mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayRemoved:Z

.field public mDisplayWidth:I

.field public mFreezeExceptionPkg:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputConsumers:Ljava/util/ArrayList;

.field public mInputFocus:Landroid/os/IBinder;

.field public mInputFocusRequestTimeMillis:J

.field public final mInputTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

.field public final mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

.field public mUpdateInputWindowsImmediately:Z

.field public mUpdateInputWindowsNeeded:Z

.field public mUpdateInputWindowsPending:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Region;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;-><init>(Lcom/android/server/wm/InputMonitor;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 42
    .line 43
    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 44
    .line 45
    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 46
    .line 47
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 48
    .line 49
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance p1, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    .line 67
    .line 68
    return-void
.end method

.method public static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 2
    .line 3
    iget-wide v1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-wide v3, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 14
    .line 15
    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 26
    .line 27
    iget v3, v1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 28
    .line 29
    const/high16 v4, 0x3f800000    # 1.0f

    .line 30
    .line 31
    cmpl-float v3, v3, v4

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iput v4, v1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 37
    .line 38
    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 39
    .line 40
    :goto_1
    iget v3, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    if-ne v3, v4, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iput v4, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 47
    .line 48
    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 49
    .line 50
    :goto_2
    const/16 v1, 0x10

    .line 51
    .line 52
    invoke-static {v4, v1, v2}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    sget v3, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    .line 57
    .line 58
    sget v4, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    .line 59
    .line 60
    or-int/2addr v3, v4

    .line 61
    or-int/lit8 v3, v3, 0x40

    .line 62
    .line 63
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 67
    .line 68
    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 78
    .line 79
    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 82
    .line 83
    .line 84
    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 85
    .line 86
    :goto_3
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 87
    .line 88
    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 100
    .line 101
    .line 102
    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 103
    .line 104
    :goto_4
    return-void
.end method

.method public static setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .locals 1

    .line 1
    iget-boolean v0, p2, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p2, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    iput-boolean p0, p2, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 2
    .line 3
    new-instance v1, Landroid/view/InputWindowHandle;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget p2, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    const/16 v2, 0x7df

    .line 19
    .line 20
    if-ne p2, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput v2, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 24
    .line 25
    iput-boolean p3, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v1, p1, p0, p3}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v7, p5

    .line 6
    .line 7
    const/4 v11, 0x1

    .line 8
    const/4 v12, 0x0

    .line 9
    invoke-virtual {v0, v10}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v13, v0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 14
    .line 15
    const-string v14, ", display: "

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    .line 20
    .line 21
    invoke-virtual {v2, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Landroid/os/IBinder;)Z

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "Replacing existing input consumer found with name: "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, ", user: "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "WindowManager"

    .line 61
    .line 62
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    new-instance v15, Lcom/android/server/wm/InputConsumerImpl;

    .line 66
    .line 67
    iget-object v9, v0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 68
    .line 69
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 70
    .line 71
    iget v8, v0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 72
    .line 73
    move-object v1, v15

    .line 74
    move-object/from16 v3, p1

    .line 75
    .line 76
    move-object/from16 v4, p2

    .line 77
    .line 78
    move-object/from16 v5, p3

    .line 79
    .line 80
    move/from16 v6, p4

    .line 81
    .line 82
    move-object/from16 v7, p5

    .line 83
    .line 84
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;ILandroid/view/SurfaceControl$Transaction;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const/4 v1, -0x1

    .line 91
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    sparse-switch v2, :sswitch_data_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :sswitch_0
    const-string/jumbo v2, "wallpaper_input_consumer"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const/4 v1, 0x2

    .line 110
    goto :goto_0

    .line 111
    :sswitch_1
    const-string/jumbo v2, "pip_input_consumer"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_2

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    move v1, v11

    .line 122
    goto :goto_0

    .line 123
    :sswitch_2
    const-string/jumbo v2, "recents_animation_input_consumer"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_3

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    move v1, v12

    .line 134
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 135
    .line 136
    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    const-string v1, "Illegal input consumer : "

    .line 140
    .line 141
    invoke-static {v13, v1, v10, v14}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :pswitch_0
    iget-object v1, v15, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 150
    .line 151
    iget v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 152
    .line 153
    or-int/lit8 v2, v2, 0x20

    .line 154
    .line 155
    iput v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :pswitch_1
    iget-object v1, v15, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 159
    .line 160
    iget v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 161
    .line 162
    and-int/lit8 v2, v2, -0x5

    .line 163
    .line 164
    iput v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 165
    .line 166
    :goto_1
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    iget-object v1, v15, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 172
    .line 173
    if-nez v1, :cond_4

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    :try_start_0
    invoke-interface {v1, v15, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    :catch_0
    :goto_2
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 180
    .line 181
    iget v2, v0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    .line 182
    .line 183
    iget v3, v0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    .line 184
    .line 185
    iget-object v4, v15, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 186
    .line 187
    invoke-virtual {v4, v12, v12, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    .line 189
    .line 190
    iget-object v2, v15, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 191
    .line 192
    invoke-virtual {v15, v1, v2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v11}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :sswitch_data_0
    .sparse-switch
        -0x5af18033 -> :sswitch_2
        0x3d13fc73 -> :sswitch_1
        0x5463dca8 -> :sswitch_0
    .end sparse-switch

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final destroyInputConsumer(Landroid/os/IBinder;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/InputConsumerImpl;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v3, v2, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 22
    .line 23
    if-ne v3, p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 26
    .line 27
    iget-object v1, v2, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v2, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 43
    .line 44
    .line 45
    iget-object v1, v2, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 48
    .line 49
    .line 50
    iget-object p1, v2, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-interface {p1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 56
    .line 57
    .line 58
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 65
    .line 66
    .line 67
    return p1

    .line 68
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "  InputConsumers:"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    .line 32
    .line 33
    const-string v3, "    name="

    .line 34
    .line 35
    const-string v4, " pid="

    .line 36
    .line 37
    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v3, v1, Lcom/android/server/wm/InputConsumerImpl;->mClientPid:I

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, " user="

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public final getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final layoutInputConsumers(IIZ)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    .line 13
    .line 14
    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    .line 15
    .line 16
    const-wide/16 v0, 0x20

    .line 17
    .line 18
    :try_start_0
    const-string v2, "layoutInputConsumer"

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    :goto_0
    if-ltz v2, :cond_2

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/android/server/wm/InputConsumerImpl;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 45
    .line 46
    iget-object v6, v4, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    .line 47
    .line 48
    const/4 v7, -0x1

    .line 49
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Point;->set(II)V

    .line 50
    .line 51
    .line 52
    iget-object v6, v4, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {v6, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v4, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/server/wm/InputConsumerImpl;

    .line 72
    .line 73
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 74
    .line 75
    iget-object v6, v4, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 76
    .line 77
    invoke-virtual {v6, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v4, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public populateInputWindowHandle(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .locals 10

    .line 1
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, v1

    .line 13
    :goto_0
    iget-object v3, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 14
    .line 15
    iget-object v4, v3, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    if-ne v4, v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object v0, v3, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 22
    .line 23
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 24
    .line 25
    :goto_1
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-wide v3, v0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 38
    .line 39
    int-to-long v3, v0

    .line 40
    :goto_2
    iget-object v0, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 41
    .line 42
    iget-wide v6, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 43
    .line 44
    cmp-long v6, v6, v3

    .line 45
    .line 46
    if-nez v6, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    iput-wide v3, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 50
    .line 51
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 52
    .line 53
    :goto_3
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 54
    .line 55
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    .line 57
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v3, 0x3

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    :cond_4
    :goto_4
    move v0, v5

    .line 65
    goto :goto_5

    .line 66
    :cond_5
    const/4 v0, -0x1

    .line 67
    invoke-virtual {p2, v3, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_6
    move v0, v2

    .line 81
    :goto_5
    iget-object v4, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 82
    .line 83
    iget v6, v4, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 84
    .line 85
    if-ne v6, v0, :cond_7

    .line 86
    .line 87
    goto :goto_6

    .line 88
    :cond_7
    iput v0, v4, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 89
    .line 90
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 91
    .line 92
    :goto_6
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 93
    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    move v0, v5

    .line 101
    goto :goto_7

    .line 102
    :cond_8
    move v0, v2

    .line 103
    :goto_7
    iget v6, v4, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 104
    .line 105
    const/16 v7, 0x80

    .line 106
    .line 107
    and-int/2addr v6, v7

    .line 108
    if-eqz v6, :cond_9

    .line 109
    .line 110
    move v6, v5

    .line 111
    goto :goto_8

    .line 112
    :cond_9
    move v6, v2

    .line 113
    :goto_8
    if-ne v6, v0, :cond_a

    .line 114
    .line 115
    goto :goto_9

    .line 116
    :cond_a
    invoke-virtual {v4, v7, v0}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 117
    .line 118
    .line 119
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 120
    .line 121
    :goto_9
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 122
    .line 123
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v4, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-ne v4, v0, :cond_b

    .line 134
    .line 135
    goto :goto_a

    .line 136
    :cond_b
    iget-object v4, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 137
    .line 138
    invoke-virtual {v4, v0}, Landroid/view/InputWindowHandle;->setWindowToken(Landroid/os/IBinder;)V

    .line 139
    .line 140
    .line 141
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 142
    .line 143
    :goto_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 151
    .line 152
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_c

    .line 159
    .line 160
    or-int/lit8 v4, v4, 0x20

    .line 161
    .line 162
    :cond_c
    iget-object v0, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 163
    .line 164
    iget v6, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 165
    .line 166
    if-ne v6, v4, :cond_d

    .line 167
    .line 168
    goto :goto_b

    .line 169
    :cond_d
    iput v4, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 170
    .line 171
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 172
    .line 173
    :goto_b
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 174
    .line 175
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 176
    .line 177
    iget v8, v0, Landroid/view/InputWindowHandle;->layoutParamsSamsungFlags:I

    .line 178
    .line 179
    if-ne v8, v7, :cond_e

    .line 180
    .line 181
    goto :goto_c

    .line 182
    :cond_e
    iput v7, v0, Landroid/view/InputWindowHandle;->layoutParamsSamsungFlags:I

    .line 183
    .line 184
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 185
    .line 186
    :goto_c
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 187
    .line 188
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 189
    .line 190
    invoke-static {v0, v4, v6}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    sget v4, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    .line 195
    .line 196
    sget v6, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    .line 197
    .line 198
    or-int/2addr v4, v6

    .line 199
    or-int/lit8 v4, v4, 0x40

    .line 200
    .line 201
    invoke-virtual {p1, v0, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 209
    .line 210
    if-eqz v0, :cond_10

    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->hasOwnFocus()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_f

    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_10

    .line 223
    .line 224
    :cond_f
    move v0, v5

    .line 225
    goto :goto_d

    .line 226
    :cond_10
    move v0, v2

    .line 227
    :goto_d
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    .line 228
    .line 229
    .line 230
    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 231
    .line 232
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_12

    .line 237
    .line 238
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 241
    .line 242
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_11

    .line 249
    .line 250
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_TOUCH_TO_KEYGUARD_WALLPAPER:Z

    .line 251
    .line 252
    if-eqz v0, :cond_12

    .line 253
    .line 254
    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-eqz v0, :cond_12

    .line 261
    .line 262
    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mKeyguardWallpaperTouchAllowed:Z

    .line 269
    .line 270
    if-eqz v0, :cond_12

    .line 271
    .line 272
    :cond_11
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->areWallpaperTouchEventsEnabled()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_12

    .line 279
    .line 280
    move v0, v5

    .line 281
    goto :goto_e

    .line 282
    :cond_12
    move v0, v2

    .line 283
    :goto_e
    iget-object v6, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 284
    .line 285
    iget v7, v6, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 286
    .line 287
    const/16 v8, 0x20

    .line 288
    .line 289
    and-int/2addr v7, v8

    .line 290
    if-eqz v7, :cond_13

    .line 291
    .line 292
    move v7, v5

    .line 293
    goto :goto_f

    .line 294
    :cond_13
    move v7, v2

    .line 295
    :goto_f
    if-ne v7, v0, :cond_14

    .line 296
    .line 297
    goto :goto_10

    .line 298
    :cond_14
    invoke-virtual {v6, v8, v0}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 299
    .line 300
    .line 301
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 302
    .line 303
    :goto_10
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 304
    .line 305
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 306
    .line 307
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 308
    .line 309
    iget-object v6, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 310
    .line 311
    iget v7, v6, Landroid/view/InputWindowHandle;->surfaceInset:I

    .line 312
    .line 313
    if-ne v7, v0, :cond_15

    .line 314
    .line 315
    goto :goto_11

    .line 316
    :cond_15
    iput v0, v6, Landroid/view/InputWindowHandle;->surfaceInset:I

    .line 317
    .line 318
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 319
    .line 320
    :goto_11
    iget v0, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 321
    .line 322
    const/high16 v7, 0x3f800000    # 1.0f

    .line 323
    .line 324
    cmpl-float v8, v0, v7

    .line 325
    .line 326
    if-eqz v8, :cond_16

    .line 327
    .line 328
    div-float v0, v7, v0

    .line 329
    .line 330
    goto :goto_12

    .line 331
    :cond_16
    move v0, v7

    .line 332
    :goto_12
    iget v8, v6, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 333
    .line 334
    cmpl-float v8, v8, v0

    .line 335
    .line 336
    if-nez v8, :cond_17

    .line 337
    .line 338
    goto :goto_13

    .line 339
    :cond_17
    iput v0, v6, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 340
    .line 341
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 342
    .line 343
    :goto_13
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    if-eqz v0, :cond_19

    .line 348
    .line 349
    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 350
    .line 351
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-eqz v4, :cond_18

    .line 356
    .line 357
    if-eqz v0, :cond_18

    .line 358
    .line 359
    iget v4, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 360
    .line 361
    iget v6, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 362
    .line 363
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 364
    .line 365
    div-float v0, v7, v0

    .line 366
    .line 367
    invoke-virtual {p1, v4, v6, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOneHandSpecs(FFF)V

    .line 368
    .line 369
    .line 370
    goto :goto_14

    .line 371
    :cond_18
    const/4 v0, 0x0

    .line 372
    invoke-virtual {p1, v0, v0, v7}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOneHandSpecs(FFF)V

    .line 373
    .line 374
    .line 375
    :cond_19
    :goto_14
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    if-eqz v0, :cond_1e

    .line 380
    .line 381
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_1d

    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-eq v4, v5, :cond_1d

    .line 392
    .line 393
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-nez v4, :cond_1d

    .line 398
    .line 399
    iget v0, p2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 400
    .line 401
    if-eq v0, v3, :cond_1a

    .line 402
    .line 403
    move v0, v5

    .line 404
    goto :goto_15

    .line 405
    :cond_1a
    move v0, v2

    .line 406
    :goto_15
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 407
    .line 408
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-eqz v4, :cond_1c

    .line 413
    .line 414
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 415
    .line 416
    if-eqz v4, :cond_1b

    .line 417
    .line 418
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    goto :goto_16

    .line 423
    :cond_1b
    move-object v4, v1

    .line 424
    :goto_16
    if-eqz v4, :cond_1c

    .line 425
    .line 426
    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 427
    .line 428
    goto :goto_18

    .line 429
    :cond_1c
    move-object v4, v1

    .line 430
    goto :goto_18

    .line 431
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-eqz v4, :cond_1e

    .line 436
    .line 437
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-nez v4, :cond_1e

    .line 442
    .line 443
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 448
    .line 449
    :goto_17
    move v0, v2

    .line 450
    goto :goto_18

    .line 451
    :cond_1e
    move-object v4, v1

    .line 452
    goto :goto_17

    .line 453
    :goto_18
    iget-object v6, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 454
    .line 455
    iget-boolean v8, v6, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 456
    .line 457
    if-ne v8, v0, :cond_1f

    .line 458
    .line 459
    goto :goto_19

    .line 460
    :cond_1f
    iput-boolean v0, v6, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 461
    .line 462
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 463
    .line 464
    :goto_19
    iget-object v6, v6, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 465
    .line 466
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    if-ne v6, v4, :cond_20

    .line 471
    .line 472
    goto :goto_1a

    .line 473
    :cond_20
    iget-object v6, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 474
    .line 475
    invoke-virtual {v6, v4}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 476
    .line 477
    .line 478
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 479
    .line 480
    :goto_1a
    if-nez v0, :cond_2c

    .line 481
    .line 482
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    .line 483
    .line 484
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 485
    .line 486
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    if-eqz v4, :cond_26

    .line 491
    .line 492
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 493
    .line 494
    if-eqz v6, :cond_25

    .line 495
    .line 496
    iget-object v8, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 497
    .line 498
    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 499
    .line 500
    iget-object v6, v6, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 501
    .line 502
    iget-object v6, v6, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 503
    .line 504
    invoke-virtual {v6, v8}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 505
    .line 506
    .line 507
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 508
    .line 509
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    if-eqz v6, :cond_24

    .line 514
    .line 515
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 516
    .line 517
    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    if-eqz v6, :cond_21

    .line 522
    .line 523
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 524
    .line 525
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 526
    .line 527
    .line 528
    goto :goto_1b

    .line 529
    :cond_21
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 530
    .line 531
    if-eqz v6, :cond_22

    .line 532
    .line 533
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    :cond_22
    if-eqz v1, :cond_23

    .line 538
    .line 539
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 540
    .line 541
    invoke-virtual {v1, v6}, Lcom/android/server/wm/TaskFragment;->getDimBounds(Landroid/graphics/Rect;)V

    .line 542
    .line 543
    .line 544
    goto :goto_1b

    .line 545
    :cond_23
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    if-eqz v1, :cond_24

    .line 550
    .line 551
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 556
    .line 557
    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 558
    .line 559
    .line 560
    :cond_24
    :goto_1b
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 561
    .line 562
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;)V

    .line 563
    .line 564
    .line 565
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 566
    .line 567
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 568
    .line 569
    .line 570
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 571
    .line 572
    .line 573
    goto :goto_1c

    .line 574
    :cond_25
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 579
    .line 580
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 581
    .line 582
    .line 583
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 584
    .line 585
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 590
    .line 591
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 592
    .line 593
    .line 594
    move-result v6

    .line 595
    neg-int v8, v1

    .line 596
    neg-int v9, v6

    .line 597
    add-int/2addr v1, v1

    .line 598
    add-int/2addr v6, v6

    .line 599
    invoke-virtual {v0, v8, v9, v1, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 600
    .line 601
    .line 602
    :goto_1c
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    .line 603
    .line 604
    .line 605
    goto :goto_1d

    .line 606
    :cond_26
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 607
    .line 608
    .line 609
    :goto_1d
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 610
    .line 611
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 612
    .line 613
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 614
    .line 615
    if-nez v6, :cond_27

    .line 616
    .line 617
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 618
    .line 619
    if-eqz v8, :cond_28

    .line 620
    .line 621
    :cond_27
    neg-int v6, v6

    .line 622
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 623
    .line 624
    neg-int v8, v8

    .line 625
    invoke-virtual {v0, v6, v8}, Landroid/graphics/Region;->translate(II)V

    .line 626
    .line 627
    .line 628
    :cond_28
    if-eqz v4, :cond_29

    .line 629
    .line 630
    iget v4, p2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 631
    .line 632
    if-ne v4, v3, :cond_29

    .line 633
    .line 634
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    .line 635
    .line 636
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 637
    .line 638
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 639
    .line 640
    invoke-virtual {v3, v2, v2, v4, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 641
    .line 642
    .line 643
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    .line 644
    .line 645
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 646
    .line 647
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 648
    .line 649
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 650
    .line 651
    .line 652
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    .line 653
    .line 654
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 655
    .line 656
    .line 657
    :cond_29
    iget p2, p2, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 658
    .line 659
    cmpl-float v1, p2, v7

    .line 660
    .line 661
    if-eqz v1, :cond_2a

    .line 662
    .line 663
    invoke-virtual {v0, p2}, Landroid/graphics/Region;->scale(F)V

    .line 664
    .line 665
    .line 666
    :cond_2a
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    .line 667
    .line 668
    iget-object p2, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 669
    .line 670
    iget-object p2, p2, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 671
    .line 672
    invoke-virtual {p2, p0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result p2

    .line 676
    if-eqz p2, :cond_2b

    .line 677
    .line 678
    goto :goto_1e

    .line 679
    :cond_2b
    iget-object p2, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 680
    .line 681
    iget-object p2, p2, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 682
    .line 683
    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 684
    .line 685
    .line 686
    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 687
    .line 688
    :cond_2c
    :goto_1e
    return-void
.end method

.method public final requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 19
    .line 20
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "Focus request "

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string/jumbo v0, "reason=UpdateInputWindows"

    .line 38
    .line 39
    .line 40
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const v0, 0xf231

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    aget-boolean p1, p1, v0

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-wide v2, -0x5813e9ef756bcbafL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/16 p2, 0x20

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-ltz p2, :cond_3

    .line 94
    .line 95
    add-int/2addr p2, v0

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-lt p2, v0, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mFreezeExceptionPkg:Ljava/lang/String;

    .line 108
    .line 109
    nop

    .line 110
    :cond_3
    :goto_0
    return-void
.end method

.method public final setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "setActiveRecents, recents="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", task="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", caller="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    const-string v2, "WindowManager"

    .line 31
    .line 32
    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    move v2, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v0

    .line 42
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    move v0, v1

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    move-object v4, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    invoke-direct {v4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    iput-object v4, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsActivity:Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    iput-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 78
    .line 79
    :cond_5
    return-void
.end method

.method public final setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 13
    .line 14
    int-to-long v2, v2

    .line 15
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    const/4 v7, 0x4

    .line 26
    const/4 v8, 0x0

    .line 27
    const-wide v5, -0x76b2d1fda8b0c6dfL    # -7.239606803961096E-264

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    .line 42
    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 56
    .line 57
    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 58
    .line 59
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 60
    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final updateInputWindowsLw(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method
