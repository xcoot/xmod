.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;
.super Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG_DETECTING:Z

.field public static final DEBUG_PANNING_SCALING:Z

.field public static final DEBUG_STATE_TRANSITIONS:Z

.field public static final MAX_SCALE:F

.field static final OVERSCROLL_LEFT_EDGE:I = 0x1

.field static final OVERSCROLL_NONE:I = 0x0

.field static final OVERSCROLL_RIGHT_EDGE:I = 0x2

.field static final OVERSCROLL_VERTICAL_EDGE:I = 0x3


# instance fields
.field mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

.field final mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

.field final mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

.field final mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final mFullScreenMagnificationVibrationHelper:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

.field public final mIsWatch:Z

.field public final mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;

.field public final mMagnificationLogger:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;

.field final mOneFingerPanningSettingsProvider:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

.field public final mOverscrollEdgeSlop:F

.field final mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

.field final mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

.field mPreviousState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

.field public final mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

.field public final mScreenStateReceiver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

.field final mSinglePanningState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;

.field final mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;


# direct methods
.method public static -$$Nest$moverscrollState(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/graphics/PointF;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p2, Landroid/graphics/PointF;->y:F

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v0, v1

    .line 26
    :goto_1
    if-nez v0, :cond_3

    .line 27
    .line 28
    :cond_2
    move v1, v2

    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v3, p2, Landroid/graphics/PointF;->x:F

    .line 36
    .line 37
    sub-float/2addr v0, v3

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 43
    .line 44
    sub-float/2addr p1, p2

    .line 45
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->isAtLeftEdge()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz p2, :cond_4

    .line 51
    .line 52
    cmpl-float p2, v0, v3

    .line 53
    .line 54
    if-lez p2, :cond_4

    .line 55
    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->isAtRightEdge()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    cmpg-float p2, v0, v3

    .line 65
    .line 66
    if-gez p2, :cond_5

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :cond_5
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 72
    .line 73
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 74
    .line 75
    iget v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollEdgeSlop:F

    .line 76
    .line 77
    iget-object v5, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter v5

    .line 80
    :try_start_0
    iget-object p2, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 87
    .line 88
    if-nez p2, :cond_6

    .line 89
    .line 90
    monitor-exit v5

    .line 91
    move p2, v2

    .line 92
    goto :goto_3

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_8

    .line 95
    :cond_6
    iget-object v0, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 96
    .line 97
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    sub-float/2addr v0, p2

    .line 104
    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    cmpg-float p2, p2, v4

    .line 109
    .line 110
    if-gtz p2, :cond_7

    .line 111
    .line 112
    move p2, v1

    .line 113
    goto :goto_2

    .line 114
    :cond_7
    move p2, v2

    .line 115
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_3
    if-eqz p2, :cond_8

    .line 117
    .line 118
    cmpl-float p2, p1, v3

    .line 119
    .line 120
    if-gtz p2, :cond_b

    .line 121
    .line 122
    :cond_8
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 123
    .line 124
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 125
    .line 126
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollEdgeSlop:F

    .line 127
    .line 128
    iget-object v4, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v4

    .line 131
    :try_start_1
    iget-object p2, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    check-cast p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 138
    .line 139
    if-nez p2, :cond_9

    .line 140
    .line 141
    monitor-exit v4

    .line 142
    move v1, v2

    .line 143
    goto :goto_5

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    goto :goto_7

    .line 146
    :cond_9
    iget-object v0, p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 147
    .line 148
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    sub-float/2addr v0, p2

    .line 155
    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    cmpg-float p0, p2, p0

    .line 160
    .line 161
    if-gtz p0, :cond_a

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_a
    move v1, v2

    .line 165
    :goto_4
    monitor-exit v4

    .line 166
    :goto_5
    if-eqz v1, :cond_2

    .line 167
    .line 168
    cmpg-float p0, p1, v3

    .line 169
    .line 170
    if-gez p0, :cond_2

    .line 171
    .line 172
    :cond_b
    const/4 v1, 0x3

    .line 173
    :goto_6
    return v1

    .line 174
    :goto_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    throw p0

    .line 176
    :goto_8
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    .line 4
    .line 5
    sput-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 6
    .line 7
    sput-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_PANNING_SCALING:Z

    .line 8
    .line 9
    sget v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    .line 10
    .line 11
    sput v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->MAX_SCALE:F

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZZLcom/android/server/accessibility/magnification/WindowMagnificationPromptController;ILcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;Landroid/view/ViewConfiguration;Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p1

    .line 3
    move-object v8, p2

    .line 4
    move-object/from16 v9, p11

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move/from16 v2, p9

    .line 8
    .line 9
    move v3, p5

    .line 10
    move/from16 v4, p7

    .line 11
    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;-><init>(IZZLcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;)V

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "FullScreenMagnificationGestureHandler(detectSingleFingerTripleTap = "

    .line 24
    .line 25
    const-string v3, ", detectTwoFingerTripleTap = "

    .line 26
    .line 27
    const-string v4, ", detectShortcutTrigger = "

    .line 28
    .line 29
    move v5, p5

    .line 30
    move/from16 v6, p6

    .line 31
    .line 32
    invoke-static {v2, p5, v3, v6, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move/from16 v3, p7

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ")"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-static {}, Lcom/android/server/accessibility/Flags;->fullscreenFlingGesture()Z

    .line 54
    .line 55
    .line 56
    iput-object v8, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 57
    .line 58
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;

    .line 64
    .line 65
    iget-object v2, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v3, v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    move-object/from16 v1, p8

    .line 75
    .line 76
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 77
    .line 78
    if-eqz v9, :cond_1

    .line 79
    .line 80
    iput-object v9, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mMagnificationLogger:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$2;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mMagnificationLogger:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MagnificationLogger;

    .line 89
    .line 90
    :goto_0
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 96
    .line 97
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 101
    .line 102
    invoke-direct {v1, p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    .line 103
    .line 104
    .line 105
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 106
    .line 107
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 108
    .line 109
    .line 110
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 111
    .line 112
    invoke-direct {v2, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    .line 113
    .line 114
    .line 115
    iput-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 116
    .line 117
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 118
    .line 119
    invoke-direct {v2, p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    .line 120
    .line 121
    .line 122
    iput-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 123
    .line 124
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;

    .line 125
    .line 126
    invoke-direct {v2, p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    .line 127
    .line 128
    .line 129
    iput-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mSinglePanningState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;

    .line 130
    .line 131
    move-object/from16 v2, p10

    .line 132
    .line 133
    iput-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationVibrationHelper:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    .line 134
    .line 135
    move-object/from16 v2, p13

    .line 136
    .line 137
    iput-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOneFingerPanningSettingsProvider:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const v3, 0x111018d

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    const/4 v3, 0x0

    .line 151
    if-eqz v2, :cond_2

    .line 152
    .line 153
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 154
    .line 155
    invoke-direct {v2, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    move-object v2, v3

    .line 160
    :goto_1
    iput-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    const v4, 0x105000d

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    int-to-float v2, v2

    .line 174
    iput v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollEdgeSlop:F

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const-string v4, "android.hardware.type.watch"

    .line 181
    .line 182
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    iput-boolean v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mIsWatch:Z

    .line 187
    .line 188
    iget-boolean v2, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 189
    .line 190
    if-eqz v2, :cond_3

    .line 191
    .line 192
    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    .line 193
    .line 194
    invoke-direct {v2, p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    .line 195
    .line 196
    .line 197
    iput-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    .line 198
    .line 199
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    new-instance v4, Landroid/content/IntentFilter;

    .line 202
    .line 203
    const-string v5, "android.intent.action.SCREEN_OFF"

    .line 204
    .line 205
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_3
    iput-object v3, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    .line 213
    .line 214
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    throw v0
.end method


# virtual methods
.method public final clearAndTransitionToStateDetecting()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 12
    .line 13
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 14
    .line 15
    iput v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mScaleToRecoverAfterDraggingEnd:F

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 18
    .line 19
    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mDetectingPassPersistedScale:Z

    .line 26
    .line 27
    return-void
.end method

.method public final clearEvents(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1002

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getMode()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final handleEventWith(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mSinglePanningState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$GestureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 28
    .line 29
    const-string p3, "Error processing motion event"

    .line 30
    .line 31
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final handleShortcutTriggered()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomOff()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 19
    .line 20
    iget-boolean v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 21
    .line 22
    xor-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 28
    .line 29
    iget-boolean v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->showNotificationIfNeeded()V

    .line 36
    .line 37
    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    .line 40
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomToScale(FFF)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final isAtLeftEdge()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollEdgeSlop:F

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    monitor-exit v2

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 26
    .line 27
    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sub-float/2addr v3, v0

    .line 34
    invoke-static {v3}, Landroid/util/MathUtils;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    cmpg-float p0, v0, p0

    .line 39
    .line 40
    if-gtz p0, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_1
    monitor-exit v2

    .line 44
    :goto_0
    return v1

    .line 45
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final isAtRightEdge()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollEdgeSlop:F

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    monitor-exit v2

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 26
    .line 27
    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sub-float/2addr v3, v0

    .line 34
    invoke-static {v3}, Landroid/util/MathUtils;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    cmpg-float p0, v0, p0

    .line 39
    .line 40
    if-gtz p0, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_1
    monitor-exit v2

    .line 44
    :goto_0
    return v1

    .line 45
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final magnificationDisactivate$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(IZ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    monitor-exit v1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setActivated(Z)Z

    .line 39
    .line 40
    .line 41
    monitor-exit v1

    .line 42
    :goto_0
    return-void

    .line 43
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onDestroy(); delayed = "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOneFingerPanningSettingsProvider:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mObserver:Landroid/database/ContentObserver;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->onDestroy()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 67
    .line 68
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(II)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mMagnificationInfoChangedCallback:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;

    .line 77
    .line 78
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v2

    .line 81
    :try_start_1
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw p0
.end method

.method public final onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/accessibility/Flags;->fullscreenFlingGesture()Z

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x7

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x9

    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 31
    .line 32
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MagnificationGesture{mDetectingState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mDelegatingState="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mMagnifiedInteractionState="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mViewportDraggingState="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mSinglePanningState="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mSinglePanningState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$SinglePanningState;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mDetectSingleFingerTripleTap="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", mDetectShortcutTrigger="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", mCurrentState="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 79
    .line 80
    const-string/jumbo v2, "null"

    .line 81
    .line 82
    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move-object v1, v2

    .line 95
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", mPreviousState="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 104
    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", mMagnificationController="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", mDisplayId="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ", mIsSinglePanningEnabled="

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOneFingerPanningSettingsProvider:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, ", mOverscrollHandler="

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mOverscrollHandler:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$OverscrollHandler;

    .line 160
    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const/16 p0, 0x7d

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0
.end method

.method public transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 11
    .line 12
    const-string/jumbo v2, "null"

    .line 13
    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " -> "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " at "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x1

    .line 63
    const/4 v3, 0x5

    .line 64
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 69
    .line 70
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-class v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, ""

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 103
    .line 104
    if-ne p1, v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->checkShouldDetectPassPersistedScale()V

    .line 107
    .line 108
    .line 109
    :cond_3
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    .line 110
    .line 111
    return-void
.end method

.method public final zoomOff()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v1, "zoomOff()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final zoomToScale(FFF)V
    .locals 9

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sget v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->MAX_SCALE:F

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 10
    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 14
    .line 15
    move v5, p2

    .line 16
    move v6, p3

    .line 17
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
