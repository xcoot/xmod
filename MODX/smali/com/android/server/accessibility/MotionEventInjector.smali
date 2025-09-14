.class public final Lcom/android/server/accessibility/MotionEventInjector;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field public mDownTime:J

.field public final mHandler:Landroid/os/Handler;

.field public mIsDestroyed:Z

.field public mLastScheduledEventTime:J

.field public mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field public mNumLastTouchPoints:I

.field public final mOpenGesturesInProgress:Landroid/util/SparseArray;

.field public final mSequencesInProgress:Landroid/util/IntArray;

.field public mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public final mStrokeIdToPointerId:Landroid/util/SparseIntArray;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/IntArray;

    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    .line 24
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 27
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 29
    new-instance v0, Landroid/os/Handler;

    .line 31
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 34
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 38
    return-void
.end method

.method public static findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    aget-object v1, p0, v0

    .line 6
    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 8
    if-ne v1, p2, :cond_0

    .line 10
    return v0

    .line 11
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, -0x1

    .line 15
    return p0
.end method


# virtual methods
.method public final cancelAnyGestureInProgress()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    const/16 v2, 0x1002

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    move-result-wide v6

    .line 27
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 30
    move-result-object v9

    .line 31
    const/4 v10, 0x1

    .line 32
    const/4 v8, 0x3

    .line 33
    move-object v3, p0

    .line 34
    move-wide v4, v6

    .line 35
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    .line 38
    move-result-object v0

    .line 39
    const/high16 v3, 0x40020000    # 2.03125f

    .line 41
    invoke-virtual {p0, v0, v0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 44
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method public final cancelAnyPendingInjectedEvents()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress()V

    .line 19
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 21
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 24
    move-result v0

    .line 25
    sub-int/2addr v0, v1

    .line 26
    :goto_0
    if-ltz v0, :cond_1

    .line 28
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 30
    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 32
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    .line 35
    move-result v3

    .line 36
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 39
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 41
    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 49
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress()V

    .line 54
    :cond_1
    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 56
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 58
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 61
    return-void
.end method

.method public final clearEvents(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    :cond_0
    return-void
.end method

.method public final getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Landroid/accessibilityservice/GestureDescription;->getMaxStrokeCount()I

    .line 8
    move-result v0

    .line 9
    new-array v1, v0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 11
    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 18
    new-instance v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 20
    invoke-direct {v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    .line 23
    aput-object v3, v2, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 30
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 7
    const/4 v3, 0x2

    .line 8
    const-string v4, "MotionEventInjector"

    .line 10
    const/4 v9, 0x0

    .line 11
    if-ne v2, v3, :cond_26

    .line 13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    move-object v11, v1

    .line 16
    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 18
    iget-object v1, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 20
    move-object v12, v1

    .line 21
    check-cast v12, Ljava/util/List;

    .line 23
    iget-object v1, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 25
    move-object v13, v1

    .line 26
    check-cast v13, Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 28
    iget v14, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 30
    iget v15, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 32
    iget-boolean v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 34
    if-eqz v1, :cond_0

    .line 36
    :try_start_0
    invoke-interface {v13, v14, v9}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const-string v0, "Null pointer exception in injectEventsMainThread"

    .line 42
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    move-object v1, v0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    const-string v2, "Error sending status with mIsDestroyed to "

    .line 52
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v4, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_0
    move-object/from16 p1, v11

    .line 67
    goto/16 :goto_1a

    .line 69
    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 71
    if-nez v1, :cond_1

    .line 73
    invoke-virtual {v0, v13, v14, v9}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 83
    :cond_2
    move v1, v9

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 91
    move v2, v9

    .line 92
    :goto_1
    iget v3, v1, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 94
    if-ge v2, v3, :cond_2

    .line 96
    iget-object v3, v1, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 98
    aget-object v3, v3, v2

    .line 100
    iget-boolean v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 102
    if-nez v3, :cond_4

    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 108
    goto :goto_1

    .line 109
    :goto_2
    if-eqz v1, :cond_f

    .line 111
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 113
    if-ne v13, v2, :cond_e

    .line 115
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_e

    .line 121
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 123
    if-eqz v2, :cond_e

    .line 125
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 127
    if-nez v2, :cond_5

    .line 129
    goto/16 :goto_7

    .line 131
    :cond_5
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 137
    move v3, v9

    .line 138
    move v5, v3

    .line 139
    :goto_3
    iget v6, v2, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 141
    if-ge v3, v6, :cond_b

    .line 143
    iget-object v6, v2, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 145
    aget-object v6, v6, v3

    .line 147
    iget-boolean v7, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 149
    if-nez v7, :cond_a

    .line 151
    iget-object v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 153
    iget v8, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 155
    const/4 v10, -0x1

    .line 156
    invoke-virtual {v7, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    .line 159
    move-result v7

    .line 160
    if-ne v7, v10, :cond_6

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "Can\'t continue gesture due to unknown continued stroke id in "

    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    goto/16 :goto_7

    .line 181
    :cond_6
    iget-object v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 183
    iget v10, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 185
    invoke-virtual {v8, v10, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    iget-object v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 190
    iget v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 192
    iget v10, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 194
    invoke-static {v7, v8, v10}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    .line 197
    move-result v7

    .line 198
    if-gez v7, :cond_7

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    const-string v2, "Can\'t continue gesture due continued gesture id of "

    .line 204
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, " not matching any previous strokes in "

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 217
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    goto :goto_7

    .line 232
    :cond_7
    iget-object v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 234
    aget-object v8, v8, v7

    .line 236
    iget-boolean v10, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 238
    if-nez v10, :cond_9

    .line 240
    iget v10, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 242
    iget v9, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 244
    cmpl-float v9, v10, v9

    .line 246
    if-nez v9, :cond_9

    .line 248
    iget v9, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 250
    iget v10, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 252
    cmpl-float v9, v9, v10

    .line 254
    if-eqz v9, :cond_8

    .line 256
    goto :goto_4

    .line 257
    :cond_8
    iget v6, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 259
    iput v6, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 261
    goto :goto_5

    .line 262
    :cond_9
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    const-string v2, "Can\'t continue gesture due to points mismatch between "

    .line 266
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 271
    aget-object v2, v2, v7

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    const-string v2, " and "

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 288
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    goto :goto_7

    .line 292
    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 294
    add-int/lit8 v3, v3, 0x1

    .line 296
    const/4 v9, 0x0

    .line 297
    goto/16 :goto_3

    .line 299
    :cond_b
    const/4 v2, 0x0

    .line 300
    :goto_6
    iget v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 302
    if-ge v2, v3, :cond_d

    .line 304
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 306
    aget-object v3, v3, v2

    .line 308
    iget-boolean v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 310
    if-nez v3, :cond_c

    .line 312
    add-int/lit8 v5, v5, -0x1

    .line 314
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 316
    goto :goto_6

    .line 317
    :cond_d
    if-nez v5, :cond_e

    .line 319
    goto :goto_8

    .line 320
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 323
    const/4 v1, 0x0

    .line 324
    invoke-virtual {v0, v13, v14, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 327
    goto/16 :goto_0

    .line 329
    :cond_f
    :goto_8
    if-nez v1, :cond_10

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress()V

    .line 337
    :cond_10
    iput-object v13, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 342
    move-result-wide v9

    .line 343
    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 345
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_11

    .line 351
    move-wide/from16 v16, v9

    .line 353
    goto :goto_9

    .line 354
    :cond_11
    iget-wide v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 356
    move-wide/from16 v16, v1

    .line 358
    :goto_9
    new-instance v8, Ljava/util/ArrayList;

    .line 360
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 366
    move-result-object v7

    .line 367
    const/4 v6, 0x0

    .line 368
    :goto_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 371
    move-result v1

    .line 372
    if-ge v6, v1, :cond_12

    .line 374
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    move-result-object v1

    .line 378
    move-object v4, v1

    .line 379
    check-cast v4, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 381
    iget v5, v4, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 383
    array-length v1, v7

    .line 384
    if-le v5, v1, :cond_13

    .line 386
    const/4 v1, 0x0

    .line 387
    iput v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 389
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 392
    :cond_12
    move-wide/from16 v24, v9

    .line 394
    move-object/from16 p1, v11

    .line 396
    move-object v9, v8

    .line 397
    goto/16 :goto_17

    .line 399
    :cond_13
    iget-object v1, v4, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 401
    iget-wide v2, v4, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 403
    add-long v18, v16, v2

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 408
    move-result-object v2

    .line 409
    const/4 v3, 0x0

    .line 410
    const/16 v20, 0x0

    .line 412
    :goto_b
    if-ge v3, v5, :cond_17

    .line 414
    move-object/from16 p1, v4

    .line 416
    iget v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 418
    move/from16 v21, v5

    .line 420
    aget-object v5, v1, v3

    .line 422
    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 424
    invoke-static {v2, v4, v5}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    .line 427
    move-result v4

    .line 428
    if-ltz v4, :cond_16

    .line 430
    aget-object v4, v2, v4

    .line 432
    iget v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 434
    move-object/from16 v22, v2

    .line 436
    aget-object v2, v1, v3

    .line 438
    move-object/from16 v23, v1

    .line 440
    iget v1, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 442
    cmpl-float v1, v5, v1

    .line 444
    if-nez v1, :cond_15

    .line 446
    iget v1, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 448
    iget v5, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 450
    cmpl-float v1, v1, v5

    .line 452
    if-eqz v1, :cond_14

    .line 454
    goto :goto_c

    .line 455
    :cond_14
    const/4 v1, 0x0

    .line 456
    goto :goto_d

    .line 457
    :cond_15
    :goto_c
    const/4 v1, 0x1

    .line 458
    :goto_d
    or-int v1, v20, v1

    .line 460
    invoke-virtual {v4, v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 463
    move/from16 v20, v1

    .line 465
    goto :goto_e

    .line 466
    :cond_16
    move-object/from16 v23, v1

    .line 468
    move-object/from16 v22, v2

    .line 470
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 472
    move-object/from16 v4, p1

    .line 474
    move/from16 v5, v21

    .line 476
    move-object/from16 v2, v22

    .line 478
    move-object/from16 v1, v23

    .line 480
    goto :goto_b

    .line 481
    :cond_17
    move-object/from16 v22, v2

    .line 483
    move-object/from16 p1, v4

    .line 485
    move/from16 v21, v5

    .line 487
    if-eqz v20, :cond_18

    .line 489
    iget-wide v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 491
    const/16 v20, 0x2

    .line 493
    iget v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 495
    move-object/from16 v1, p0

    .line 497
    move-object/from16 v23, v12

    .line 499
    move-object/from16 v12, p1

    .line 501
    move-object/from16 p1, v11

    .line 503
    move/from16 v11, v21

    .line 505
    move/from16 v21, v4

    .line 507
    move-wide/from16 v4, v18

    .line 509
    move/from16 v18, v6

    .line 511
    move/from16 v6, v20

    .line 513
    move-object/from16 v19, v7

    .line 515
    move-object/from16 v7, v22

    .line 517
    move-wide/from16 v24, v9

    .line 519
    move-object v9, v8

    .line 520
    move/from16 v8, v21

    .line 522
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    goto :goto_f

    .line 530
    :cond_18
    move/from16 v18, v6

    .line 532
    move-object/from16 v19, v7

    .line 534
    move-wide/from16 v24, v9

    .line 536
    move-object/from16 v23, v12

    .line 538
    move-object/from16 v12, p1

    .line 540
    move-object v9, v8

    .line 541
    move-object/from16 p1, v11

    .line 543
    move/from16 v11, v21

    .line 545
    :goto_f
    iget-object v10, v12, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 547
    iget-wide v1, v12, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 549
    add-long v20, v16, v1

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 554
    move-result-object v8

    .line 555
    const/4 v7, 0x0

    .line 556
    :goto_10
    if-ge v7, v11, :cond_1e

    .line 558
    aget-object v1, v10, v7

    .line 560
    iget-boolean v2, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 562
    if-eqz v2, :cond_19

    .line 564
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 566
    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 568
    invoke-static {v8, v2, v1}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    .line 571
    move-result v22

    .line 572
    if-gez v22, :cond_1a

    .line 574
    :cond_19
    move/from16 v26, v7

    .line 576
    move-object/from16 v28, v8

    .line 578
    goto :goto_13

    .line 579
    :cond_1a
    iget v6, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 581
    const/4 v1, 0x1

    .line 582
    if-ne v6, v1, :cond_1b

    .line 584
    const/4 v1, 0x1

    .line 585
    goto :goto_11

    .line 586
    :cond_1b
    const/4 v1, 0x6

    .line 587
    :goto_11
    shl-int/lit8 v2, v22, 0x8

    .line 589
    or-int v26, v1, v2

    .line 591
    iget-wide v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 593
    move-object/from16 v1, p0

    .line 595
    move-wide/from16 v4, v20

    .line 597
    move/from16 v27, v6

    .line 599
    move/from16 v6, v26

    .line 601
    move/from16 v26, v7

    .line 603
    move-object v7, v8

    .line 604
    move-object/from16 v28, v8

    .line 606
    move/from16 v8, v27

    .line 608
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    .line 611
    move-result-object v1

    .line 612
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    move/from16 v1, v22

    .line 617
    :goto_12
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 619
    const/4 v3, 0x1

    .line 620
    sub-int/2addr v2, v3

    .line 621
    if-ge v1, v2, :cond_1c

    .line 623
    aget-object v2, v28, v1

    .line 625
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 627
    add-int/lit8 v1, v1, 0x1

    .line 629
    aget-object v3, v3, v1

    .line 631
    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 634
    goto :goto_12

    .line 635
    :cond_1c
    iput v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 637
    if-nez v2, :cond_1d

    .line 639
    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 641
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 644
    :cond_1d
    :goto_13
    add-int/lit8 v7, v26, 0x1

    .line 646
    move-object/from16 v8, v28

    .line 648
    goto :goto_10

    .line 649
    :cond_1e
    iget-object v10, v12, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 651
    iget-wide v1, v12, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 653
    add-long v7, v16, v1

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 658
    move-result-object v12

    .line 659
    const/4 v6, 0x0

    .line 660
    :goto_14
    if-ge v6, v11, :cond_22

    .line 662
    aget-object v1, v10, v6

    .line 664
    iget-boolean v2, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 666
    if-eqz v2, :cond_21

    .line 668
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 670
    add-int/lit8 v3, v2, 0x1

    .line 672
    iput v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 674
    aget-object v2, v12, v2

    .line 676
    invoke-virtual {v2, v1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 679
    iget v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 681
    const/4 v1, 0x1

    .line 682
    if-ne v4, v1, :cond_1f

    .line 684
    const/4 v1, 0x0

    .line 685
    goto :goto_15

    .line 686
    :cond_1f
    const/4 v1, 0x5

    .line 687
    :goto_15
    if-nez v1, :cond_20

    .line 689
    iput-wide v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 691
    :cond_20
    shl-int/lit8 v2, v6, 0x8

    .line 693
    or-int v20, v1, v2

    .line 695
    iget-wide v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 697
    move-object/from16 v1, p0

    .line 699
    move/from16 v21, v4

    .line 701
    move-wide v4, v7

    .line 702
    move/from16 v22, v6

    .line 704
    move/from16 v6, v20

    .line 706
    move-wide/from16 v26, v7

    .line 708
    move-object v7, v12

    .line 709
    move/from16 v8, v21

    .line 711
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    .line 714
    move-result-object v1

    .line 715
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    goto :goto_16

    .line 719
    :cond_21
    move/from16 v22, v6

    .line 721
    move-wide/from16 v26, v7

    .line 723
    :goto_16
    add-int/lit8 v6, v22, 0x1

    .line 725
    move-wide/from16 v7, v26

    .line 727
    goto :goto_14

    .line 728
    :cond_22
    add-int/lit8 v6, v18, 0x1

    .line 730
    move-object/from16 v11, p1

    .line 732
    move-object v8, v9

    .line 733
    move-object/from16 v7, v19

    .line 735
    move-object/from16 v12, v23

    .line 737
    move-wide/from16 v9, v24

    .line 739
    goto/16 :goto_a

    .line 741
    :goto_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 744
    move-result v1

    .line 745
    if-eqz v1, :cond_23

    .line 747
    const/4 v1, 0x0

    .line 748
    invoke-virtual {v0, v13, v14, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 751
    goto :goto_1a

    .line 752
    :cond_23
    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 754
    invoke-virtual {v1, v14}, Landroid/util/IntArray;->add(I)V

    .line 757
    const/4 v1, 0x0

    .line 758
    :goto_18
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 761
    move-result v2

    .line 762
    if-ge v1, v2, :cond_25

    .line 764
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 767
    move-result-object v2

    .line 768
    check-cast v2, Landroid/view/MotionEvent;

    .line 770
    invoke-virtual {v2, v15}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 773
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 776
    move-result v3

    .line 777
    const/4 v4, 0x1

    .line 778
    sub-int/2addr v3, v4

    .line 779
    if-ne v1, v3, :cond_24

    .line 781
    move v3, v4

    .line 782
    goto :goto_19

    .line 783
    :cond_24
    const/4 v3, 0x0

    .line 784
    :goto_19
    iget-object v5, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 786
    const/4 v6, 0x0

    .line 787
    invoke-virtual {v5, v4, v3, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 790
    move-result-object v3

    .line 791
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 794
    move-result-wide v4

    .line 795
    iput-wide v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 797
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 799
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 802
    move-result-wide v5

    .line 803
    sub-long v5, v5, v24

    .line 805
    const-wide/16 v7, 0x0

    .line 807
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 810
    move-result-wide v5

    .line 811
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 814
    add-int/lit8 v1, v1, 0x1

    .line 816
    goto :goto_18

    .line 817
    :cond_25
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 820
    const/4 v3, 0x1

    .line 821
    return v3

    .line 822
    :cond_26
    const/4 v3, 0x1

    .line 823
    if-eq v2, v3, :cond_27

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    .line 827
    const-string v2, "Unknown message: "

    .line 829
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    iget v1, v1, Landroid/os/Message;->what:I

    .line 834
    invoke-static {v0, v1, v4}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 837
    const/4 v2, 0x0

    .line 838
    return v2

    .line 839
    :cond_27
    const/4 v2, 0x0

    .line 840
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 842
    check-cast v3, Landroid/view/MotionEvent;

    .line 844
    const/high16 v4, 0x40020000    # 2.03125f

    .line 846
    invoke-virtual {v0, v3, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 849
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 851
    if-eqz v1, :cond_28

    .line 853
    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 855
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 857
    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    .line 860
    move-result v3

    .line 861
    const/4 v4, 0x1

    .line 862
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 865
    iget-object v0, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 867
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->remove(I)V

    .line 870
    goto :goto_1b

    .line 871
    :cond_28
    const/4 v4, 0x1

    .line 872
    :goto_1b
    return v4
.end method

.method public final notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V
    .locals 1

    .line 1
    const-string v0, "MotionEventInjector"

    .line 3
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p0, "Null pointer exception in notifyService"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    const-string p3, "Error sending motion event injection status to "

    .line 18
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :goto_0
    return-void
.end method

.method public final obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v5, p7

    .line 5
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    array-length v1, v1

    .line 11
    if-ge v1, v5, :cond_1

    .line 13
    :cond_0
    new-array v1, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 15
    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 17
    move v1, v2

    .line 18
    :goto_0
    if-ge v1, v5, :cond_1

    .line 20
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 22
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    .line 24
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 27
    aput-object v4, v3, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 34
    if-eqz v1, :cond_2

    .line 36
    array-length v1, v1

    .line 37
    if-ge v1, v5, :cond_3

    .line 39
    :cond_2
    new-array v1, v5, [Landroid/view/MotionEvent$PointerProperties;

    .line 41
    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 43
    move v1, v2

    .line 44
    :goto_1
    if-ge v1, v5, :cond_3

    .line 46
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 48
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    .line 50
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 53
    aput-object v4, v3, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v1, v2

    .line 59
    :goto_2
    if-ge v1, v5, :cond_7

    .line 61
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 63
    aget-object v4, p6, v1

    .line 65
    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 67
    const/4 v6, -0x1

    .line 68
    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 71
    move-result v3

    .line 72
    if-ne v3, v6, :cond_6

    .line 74
    move v3, v2

    .line 75
    :cond_4
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 77
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    .line 80
    move-result v4

    .line 81
    if-ltz v4, :cond_5

    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 85
    const/16 v4, 0xa

    .line 87
    if-lt v3, v4, :cond_4

    .line 89
    move v3, v4

    .line 90
    :cond_5
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 92
    aget-object v6, p6, v1

    .line 94
    iget v6, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 96
    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    :cond_6
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 101
    aget-object v4, v4, v1

    .line 103
    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 105
    iput v2, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 107
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 109
    aget-object v3, v3, v1

    .line 111
    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 114
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 116
    aget-object v3, v3, v1

    .line 118
    const/high16 v4, 0x3f800000    # 1.0f

    .line 120
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 122
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 124
    aget-object v4, p6, v1

    .line 126
    iget v6, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 128
    iput v6, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 130
    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 132
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_7
    sget-object v6, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 139
    sget-object v7, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 141
    const/16 v14, 0x1002

    .line 143
    const/4 v15, 0x0

    .line 144
    const/4 v8, 0x0

    .line 145
    const/4 v9, 0x0

    .line 146
    const/high16 v10, 0x3f800000    # 1.0f

    .line 148
    const/high16 v11, 0x3f800000    # 1.0f

    .line 150
    const/4 v12, -0x1

    .line 151
    const/4 v13, 0x0

    .line 152
    move-wide/from16 v0, p1

    .line 154
    move-wide/from16 v2, p3

    .line 156
    move/from16 v4, p5

    .line 158
    move/from16 v5, p7

    .line 160
    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 163
    move-result-object v0

    .line 164
    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 7
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 3
    const-wide/16 v1, 0x3000

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v4, "event="

    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v4, ";rawEvent="

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v4, ";policyFlags="

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    const-string v4, "MotionEventInjector.onMotionEvent"

    .line 46
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 49
    :cond_0
    const/16 v0, 0x2002

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x7

    .line 62
    if-ne v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 66
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    const/16 v2, 0x1002

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Boolean;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 82
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 86
    const/high16 v0, 0x20000

    .line 88
    or-int/2addr p3, v0

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 92
    return-void
.end method

.method public final sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 19
    move-result p3

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 28
    move-result p2

    .line 29
    const/4 p3, 0x1

    .line 30
    if-eq p2, p3, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 35
    move-result p2

    .line 36
    const/4 p3, 0x3

    .line 37
    if-ne p2, p3, :cond_2

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 44
    move-result p1

    .line 45
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    :cond_2
    return-void
.end method
