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

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/IntArray;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 28
    .line 29
    new-instance v0, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 37
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

    .line 3
    .line 4
    aget-object v1, p0, v0

    .line 5
    .line 6
    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 7
    .line 8
    if-ne v1, p2, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 12
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 6
    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    const/16 v2, 0x1002

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 28
    .line 29
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

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/high16 v3, 0x40020000    # 2.03125f

    .line 40
    .line 41
    invoke-virtual {p0, v0, v0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final cancelAnyPendingInjectedEvents()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-int/2addr v0, v1

    .line 26
    :goto_0
    if-ltz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress()V

    .line 52
    .line 53
    .line 54
    :cond_1
    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final clearEvents(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/accessibilityservice/GestureDescription;->getMaxStrokeCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v1, v0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 17
    .line 18
    new-instance v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 19
    .line 20
    invoke-direct {v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    .line 21
    .line 22
    .line 23
    aput-object v3, v2, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 29
    .line 30
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const-string v4, "MotionEventInjector"

    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    if-ne v2, v3, :cond_26

    .line 12
    .line 13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v11, v1

    .line 16
    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 17
    .line 18
    iget-object v1, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v12, v1

    .line 21
    check-cast v12, Ljava/util/List;

    .line 22
    .line 23
    iget-object v1, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v13, v1

    .line 26
    check-cast v13, Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 27
    .line 28
    iget v14, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 29
    .line 30
    iget v15, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 31
    .line 32
    iget-boolean v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    :try_start_0
    invoke-interface {v13, v14, v9}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const-string v0, "Null pointer exception in injectEventsMainThread"

    .line 41
    .line 42
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    move-object v1, v0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Error sending status with mIsDestroyed to "

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v4, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_0
    move-object/from16 p1, v11

    .line 66
    .line 67
    goto/16 :goto_1a

    .line 68
    .line 69
    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0, v13, v14, v9}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    :cond_2
    move v1, v9

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 90
    .line 91
    move v2, v9

    .line 92
    :goto_1
    iget v3, v1, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 93
    .line 94
    if-ge v2, v3, :cond_2

    .line 95
    .line 96
    iget-object v3, v1, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 97
    .line 98
    aget-object v3, v3, v2

    .line 99
    .line 100
    iget-boolean v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 101
    .line 102
    if-nez v3, :cond_4

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_2
    if-eqz v1, :cond_f

    .line 110
    .line 111
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 112
    .line 113
    if-ne v13, v2, :cond_e

    .line 114
    .line 115
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_e

    .line 120
    .line 121
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 122
    .line 123
    if-eqz v2, :cond_e

    .line 124
    .line 125
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 126
    .line 127
    if-nez v2, :cond_5

    .line 128
    .line 129
    goto/16 :goto_7

    .line 130
    .line 131
    :cond_5
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 136
    .line 137
    move v3, v9

    .line 138
    move v5, v3

    .line 139
    :goto_3
    iget v6, v2, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 140
    .line 141
    if-ge v3, v6, :cond_b

    .line 142
    .line 143
    iget-object v6, v2, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 144
    .line 145
    aget-object v6, v6, v3

    .line 146
    .line 147
    iget-boolean v7, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 148
    .line 149
    if-nez v7, :cond_a

    .line 150
    .line 151
    iget-object v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 152
    .line 153
    iget v8, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 154
    .line 155
    const/4 v10, -0x1

    .line 156
    invoke-virtual {v7, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-ne v7, v10, :cond_6

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v2, "Can\'t continue gesture due to unknown continued stroke id in "

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto/16 :goto_7

    .line 180
    .line 181
    :cond_6
    iget-object v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 182
    .line 183
    iget v10, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 184
    .line 185
    invoke-virtual {v8, v10, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 186
    .line 187
    .line 188
    iget-object v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 189
    .line 190
    iget v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 191
    .line 192
    iget v10, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 193
    .line 194
    invoke-static {v7, v8, v10}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-gez v7, :cond_7

    .line 199
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v2, "Can\'t continue gesture due continued gesture id of "

    .line 203
    .line 204
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v2, " not matching any previous strokes in "

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 216
    .line 217
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_7
    iget-object v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 233
    .line 234
    aget-object v8, v8, v7

    .line 235
    .line 236
    iget-boolean v10, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 237
    .line 238
    if-nez v10, :cond_9

    .line 239
    .line 240
    iget v10, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 241
    .line 242
    iget v9, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 243
    .line 244
    cmpl-float v9, v10, v9

    .line 245
    .line 246
    if-nez v9, :cond_9

    .line 247
    .line 248
    iget v9, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 249
    .line 250
    iget v10, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 251
    .line 252
    cmpl-float v9, v9, v10

    .line 253
    .line 254
    if-eqz v9, :cond_8

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_8
    iget v6, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 258
    .line 259
    iput v6, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_9
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v2, "Can\'t continue gesture due to points mismatch between "

    .line 265
    .line 266
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 270
    .line 271
    aget-object v2, v2, v7

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v2, " and "

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 293
    .line 294
    add-int/lit8 v3, v3, 0x1

    .line 295
    .line 296
    const/4 v9, 0x0

    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :cond_b
    const/4 v2, 0x0

    .line 300
    :goto_6
    iget v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 301
    .line 302
    if-ge v2, v3, :cond_d

    .line 303
    .line 304
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 305
    .line 306
    aget-object v3, v3, v2

    .line 307
    .line 308
    iget-boolean v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 309
    .line 310
    if-nez v3, :cond_c

    .line 311
    .line 312
    add-int/lit8 v5, v5, -0x1

    .line 313
    .line 314
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_d
    if-nez v5, :cond_e

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 321
    .line 322
    .line 323
    const/4 v1, 0x0

    .line 324
    invoke-virtual {v0, v13, v14, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_f
    :goto_8
    if-nez v1, :cond_10

    .line 330
    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 332
    .line 333
    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress()V

    .line 335
    .line 336
    .line 337
    :cond_10
    iput-object v13, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 338
    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 340
    .line 341
    .line 342
    move-result-wide v9

    .line 343
    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 344
    .line 345
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_11

    .line 350
    .line 351
    move-wide/from16 v16, v9

    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_11
    iget-wide v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 355
    .line 356
    move-wide/from16 v16, v1

    .line 357
    .line 358
    :goto_9
    new-instance v8, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    const/4 v6, 0x0

    .line 368
    :goto_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-ge v6, v1, :cond_12

    .line 373
    .line 374
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    move-object v4, v1

    .line 379
    check-cast v4, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 380
    .line 381
    iget v5, v4, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 382
    .line 383
    array-length v1, v7

    .line 384
    if-le v5, v1, :cond_13

    .line 385
    .line 386
    const/4 v1, 0x0

    .line 387
    iput v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 388
    .line 389
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 390
    .line 391
    .line 392
    :cond_12
    move-wide/from16 v24, v9

    .line 393
    .line 394
    move-object/from16 p1, v11

    .line 395
    .line 396
    move-object v9, v8

    .line 397
    goto/16 :goto_17

    .line 398
    .line 399
    :cond_13
    iget-object v1, v4, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 400
    .line 401
    iget-wide v2, v4, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 402
    .line 403
    add-long v18, v16, v2

    .line 404
    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    const/4 v3, 0x0

    .line 410
    const/16 v20, 0x0

    .line 411
    .line 412
    :goto_b
    if-ge v3, v5, :cond_17

    .line 413
    .line 414
    move-object/from16 p1, v4

    .line 415
    .line 416
    iget v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 417
    .line 418
    move/from16 v21, v5

    .line 419
    .line 420
    aget-object v5, v1, v3

    .line 421
    .line 422
    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 423
    .line 424
    invoke-static {v2, v4, v5}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    if-ltz v4, :cond_16

    .line 429
    .line 430
    aget-object v4, v2, v4

    .line 431
    .line 432
    iget v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 433
    .line 434
    move-object/from16 v22, v2

    .line 435
    .line 436
    aget-object v2, v1, v3

    .line 437
    .line 438
    move-object/from16 v23, v1

    .line 439
    .line 440
    iget v1, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 441
    .line 442
    cmpl-float v1, v5, v1

    .line 443
    .line 444
    if-nez v1, :cond_15

    .line 445
    .line 446
    iget v1, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 447
    .line 448
    iget v5, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 449
    .line 450
    cmpl-float v1, v1, v5

    .line 451
    .line 452
    if-eqz v1, :cond_14

    .line 453
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

    .line 459
    .line 460
    invoke-virtual {v4, v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 461
    .line 462
    .line 463
    move/from16 v20, v1

    .line 464
    .line 465
    goto :goto_e

    .line 466
    :cond_16
    move-object/from16 v23, v1

    .line 467
    .line 468
    move-object/from16 v22, v2

    .line 469
    .line 470
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 471
    .line 472
    move-object/from16 v4, p1

    .line 473
    .line 474
    move/from16 v5, v21

    .line 475
    .line 476
    move-object/from16 v2, v22

    .line 477
    .line 478
    move-object/from16 v1, v23

    .line 479
    .line 480
    goto :goto_b

    .line 481
    :cond_17
    move-object/from16 v22, v2

    .line 482
    .line 483
    move-object/from16 p1, v4

    .line 484
    .line 485
    move/from16 v21, v5

    .line 486
    .line 487
    if-eqz v20, :cond_18

    .line 488
    .line 489
    iget-wide v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 490
    .line 491
    const/16 v20, 0x2

    .line 492
    .line 493
    iget v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 494
    .line 495
    move-object/from16 v1, p0

    .line 496
    .line 497
    move-object/from16 v23, v12

    .line 498
    .line 499
    move-object/from16 v12, p1

    .line 500
    .line 501
    move-object/from16 p1, v11

    .line 502
    .line 503
    move/from16 v11, v21

    .line 504
    .line 505
    move/from16 v21, v4

    .line 506
    .line 507
    move-wide/from16 v4, v18

    .line 508
    .line 509
    move/from16 v18, v6

    .line 510
    .line 511
    move/from16 v6, v20

    .line 512
    .line 513
    move-object/from16 v19, v7

    .line 514
    .line 515
    move-object/from16 v7, v22

    .line 516
    .line 517
    move-wide/from16 v24, v9

    .line 518
    .line 519
    move-object v9, v8

    .line 520
    move/from16 v8, v21

    .line 521
    .line 522
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    goto :goto_f

    .line 530
    :cond_18
    move/from16 v18, v6

    .line 531
    .line 532
    move-object/from16 v19, v7

    .line 533
    .line 534
    move-wide/from16 v24, v9

    .line 535
    .line 536
    move-object/from16 v23, v12

    .line 537
    .line 538
    move-object/from16 v12, p1

    .line 539
    .line 540
    move-object v9, v8

    .line 541
    move-object/from16 p1, v11

    .line 542
    .line 543
    move/from16 v11, v21

    .line 544
    .line 545
    :goto_f
    iget-object v10, v12, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 546
    .line 547
    iget-wide v1, v12, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 548
    .line 549
    add-long v20, v16, v1

    .line 550
    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 552
    .line 553
    .line 554
    move-result-object v8

    .line 555
    const/4 v7, 0x0

    .line 556
    :goto_10
    if-ge v7, v11, :cond_1e

    .line 557
    .line 558
    aget-object v1, v10, v7

    .line 559
    .line 560
    iget-boolean v2, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 561
    .line 562
    if-eqz v2, :cond_19

    .line 563
    .line 564
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 565
    .line 566
    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 567
    .line 568
    invoke-static {v8, v2, v1}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    .line 569
    .line 570
    .line 571
    move-result v22

    .line 572
    if-gez v22, :cond_1a

    .line 573
    .line 574
    :cond_19
    move/from16 v26, v7

    .line 575
    .line 576
    move-object/from16 v28, v8

    .line 577
    .line 578
    goto :goto_13

    .line 579
    :cond_1a
    iget v6, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 580
    .line 581
    const/4 v1, 0x1

    .line 582
    if-ne v6, v1, :cond_1b

    .line 583
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

    .line 588
    .line 589
    or-int v26, v1, v2

    .line 590
    .line 591
    iget-wide v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 592
    .line 593
    move-object/from16 v1, p0

    .line 594
    .line 595
    move-wide/from16 v4, v20

    .line 596
    .line 597
    move/from16 v27, v6

    .line 598
    .line 599
    move/from16 v6, v26

    .line 600
    .line 601
    move/from16 v26, v7

    .line 602
    .line 603
    move-object v7, v8

    .line 604
    move-object/from16 v28, v8

    .line 605
    .line 606
    move/from16 v8, v27

    .line 607
    .line 608
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move/from16 v1, v22

    .line 616
    .line 617
    :goto_12
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 618
    .line 619
    const/4 v3, 0x1

    .line 620
    sub-int/2addr v2, v3

    .line 621
    if-ge v1, v2, :cond_1c

    .line 622
    .line 623
    aget-object v2, v28, v1

    .line 624
    .line 625
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 626
    .line 627
    add-int/lit8 v1, v1, 0x1

    .line 628
    .line 629
    aget-object v3, v3, v1

    .line 630
    .line 631
    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 632
    .line 633
    .line 634
    goto :goto_12

    .line 635
    :cond_1c
    iput v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 636
    .line 637
    if-nez v2, :cond_1d

    .line 638
    .line 639
    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 640
    .line 641
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 642
    .line 643
    .line 644
    :cond_1d
    :goto_13
    add-int/lit8 v7, v26, 0x1

    .line 645
    .line 646
    move-object/from16 v8, v28

    .line 647
    .line 648
    goto :goto_10

    .line 649
    :cond_1e
    iget-object v10, v12, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 650
    .line 651
    iget-wide v1, v12, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 652
    .line 653
    add-long v7, v16, v1

    .line 654
    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 656
    .line 657
    .line 658
    move-result-object v12

    .line 659
    const/4 v6, 0x0

    .line 660
    :goto_14
    if-ge v6, v11, :cond_22

    .line 661
    .line 662
    aget-object v1, v10, v6

    .line 663
    .line 664
    iget-boolean v2, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 665
    .line 666
    if-eqz v2, :cond_21

    .line 667
    .line 668
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 669
    .line 670
    add-int/lit8 v3, v2, 0x1

    .line 671
    .line 672
    iput v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 673
    .line 674
    aget-object v2, v12, v2

    .line 675
    .line 676
    invoke-virtual {v2, v1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 677
    .line 678
    .line 679
    iget v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 680
    .line 681
    const/4 v1, 0x1

    .line 682
    if-ne v4, v1, :cond_1f

    .line 683
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

    .line 688
    .line 689
    iput-wide v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 690
    .line 691
    :cond_20
    shl-int/lit8 v2, v6, 0x8

    .line 692
    .line 693
    or-int v20, v1, v2

    .line 694
    .line 695
    iget-wide v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 696
    .line 697
    move-object/from16 v1, p0

    .line 698
    .line 699
    move/from16 v21, v4

    .line 700
    .line 701
    move-wide v4, v7

    .line 702
    move/from16 v22, v6

    .line 703
    .line 704
    move/from16 v6, v20

    .line 705
    .line 706
    move-wide/from16 v26, v7

    .line 707
    .line 708
    move-object v7, v12

    .line 709
    move/from16 v8, v21

    .line 710
    .line 711
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    goto :goto_16

    .line 719
    :cond_21
    move/from16 v22, v6

    .line 720
    .line 721
    move-wide/from16 v26, v7

    .line 722
    .line 723
    :goto_16
    add-int/lit8 v6, v22, 0x1

    .line 724
    .line 725
    move-wide/from16 v7, v26

    .line 726
    .line 727
    goto :goto_14

    .line 728
    :cond_22
    add-int/lit8 v6, v18, 0x1

    .line 729
    .line 730
    move-object/from16 v11, p1

    .line 731
    .line 732
    move-object v8, v9

    .line 733
    move-object/from16 v7, v19

    .line 734
    .line 735
    move-object/from16 v12, v23

    .line 736
    .line 737
    move-wide/from16 v9, v24

    .line 738
    .line 739
    goto/16 :goto_a

    .line 740
    .line 741
    :goto_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    if-eqz v1, :cond_23

    .line 746
    .line 747
    const/4 v1, 0x0

    .line 748
    invoke-virtual {v0, v13, v14, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 749
    .line 750
    .line 751
    goto :goto_1a

    .line 752
    :cond_23
    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 753
    .line 754
    invoke-virtual {v1, v14}, Landroid/util/IntArray;->add(I)V

    .line 755
    .line 756
    .line 757
    const/4 v1, 0x0

    .line 758
    :goto_18
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    if-ge v1, v2, :cond_25

    .line 763
    .line 764
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    check-cast v2, Landroid/view/MotionEvent;

    .line 769
    .line 770
    invoke-virtual {v2, v15}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 774
    .line 775
    .line 776
    move-result v3

    .line 777
    const/4 v4, 0x1

    .line 778
    sub-int/2addr v3, v4

    .line 779
    if-ne v1, v3, :cond_24

    .line 780
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

    .line 785
    .line 786
    const/4 v6, 0x0

    .line 787
    invoke-virtual {v5, v4, v3, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 792
    .line 793
    .line 794
    move-result-wide v4

    .line 795
    iput-wide v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 796
    .line 797
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 798
    .line 799
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 800
    .line 801
    .line 802
    move-result-wide v5

    .line 803
    sub-long v5, v5, v24

    .line 804
    .line 805
    const-wide/16 v7, 0x0

    .line 806
    .line 807
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 808
    .line 809
    .line 810
    move-result-wide v5

    .line 811
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 812
    .line 813
    .line 814
    add-int/lit8 v1, v1, 0x1

    .line 815
    .line 816
    goto :goto_18

    .line 817
    :cond_25
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 818
    .line 819
    .line 820
    const/4 v3, 0x1

    .line 821
    return v3

    .line 822
    :cond_26
    const/4 v3, 0x1

    .line 823
    if-eq v2, v3, :cond_27

    .line 824
    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    const-string v2, "Unknown message: "

    .line 828
    .line 829
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    iget v1, v1, Landroid/os/Message;->what:I

    .line 833
    .line 834
    invoke-static {v0, v1, v4}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 835
    .line 836
    .line 837
    const/4 v2, 0x0

    .line 838
    return v2

    .line 839
    :cond_27
    const/4 v2, 0x0

    .line 840
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 841
    .line 842
    check-cast v3, Landroid/view/MotionEvent;

    .line 843
    .line 844
    const/high16 v4, 0x40020000    # 2.03125f

    .line 845
    .line 846
    invoke-virtual {v0, v3, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 847
    .line 848
    .line 849
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 850
    .line 851
    if-eqz v1, :cond_28

    .line 852
    .line 853
    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 854
    .line 855
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 856
    .line 857
    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    .line 858
    .line 859
    .line 860
    move-result v3

    .line 861
    const/4 v4, 0x1

    .line 862
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 863
    .line 864
    .line 865
    iget-object v0, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 866
    .line 867
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->remove(I)V

    .line 868
    .line 869
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

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p0, "Null pointer exception in notifyService"

    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p3, "Error sending motion event injection status to "

    .line 17
    .line 18
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 22
    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p7

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-ge v1, v5, :cond_1

    .line 12
    .line 13
    :cond_0
    new-array v1, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 14
    .line 15
    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 16
    .line 17
    move v1, v2

    .line 18
    :goto_0
    if-ge v1, v5, :cond_1

    .line 19
    .line 20
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 21
    .line 22
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    .line 23
    .line 24
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 25
    .line 26
    .line 27
    aput-object v4, v3, v1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    array-length v1, v1

    .line 37
    if-ge v1, v5, :cond_3

    .line 38
    .line 39
    :cond_2
    new-array v1, v5, [Landroid/view/MotionEvent$PointerProperties;

    .line 40
    .line 41
    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 42
    .line 43
    move v1, v2

    .line 44
    :goto_1
    if-ge v1, v5, :cond_3

    .line 45
    .line 46
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 47
    .line 48
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    .line 49
    .line 50
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 51
    .line 52
    .line 53
    aput-object v4, v3, v1

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v1, v2

    .line 59
    :goto_2
    if-ge v1, v5, :cond_7

    .line 60
    .line 61
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 62
    .line 63
    aget-object v4, p6, v1

    .line 64
    .line 65
    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 66
    .line 67
    const/4 v6, -0x1

    .line 68
    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-ne v3, v6, :cond_6

    .line 73
    .line 74
    move v3, v2

    .line 75
    :cond_4
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 76
    .line 77
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ltz v4, :cond_5

    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    const/16 v4, 0xa

    .line 86
    .line 87
    if-lt v3, v4, :cond_4

    .line 88
    .line 89
    move v3, v4

    .line 90
    :cond_5
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 91
    .line 92
    aget-object v6, p6, v1

    .line 93
    .line 94
    iget v6, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 95
    .line 96
    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    .line 98
    .line 99
    :cond_6
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 100
    .line 101
    aget-object v4, v4, v1

    .line 102
    .line 103
    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 104
    .line 105
    iput v2, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 106
    .line 107
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 108
    .line 109
    aget-object v3, v3, v1

    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 112
    .line 113
    .line 114
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 115
    .line 116
    aget-object v3, v3, v1

    .line 117
    .line 118
    const/high16 v4, 0x3f800000    # 1.0f

    .line 119
    .line 120
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 121
    .line 122
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 123
    .line 124
    aget-object v4, p6, v1

    .line 125
    .line 126
    iget v6, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 127
    .line 128
    iput v6, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 129
    .line 130
    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 131
    .line 132
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 133
    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_7
    sget-object v6, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 138
    .line 139
    sget-object v7, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 140
    .line 141
    const/16 v14, 0x1002

    .line 142
    .line 143
    const/4 v15, 0x0

    .line 144
    const/4 v8, 0x0

    .line 145
    const/4 v9, 0x0

    .line 146
    const/high16 v10, 0x3f800000    # 1.0f

    .line 147
    .line 148
    const/high16 v11, 0x3f800000    # 1.0f

    .line 149
    .line 150
    const/4 v12, -0x1

    .line 151
    const/4 v13, 0x0

    .line 152
    move-wide/from16 v0, p1

    .line 153
    .line 154
    move-wide/from16 v2, p3

    .line 155
    .line 156
    move/from16 v4, p5

    .line 157
    .line 158
    move/from16 v5, p7

    .line 159
    .line 160
    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x3000

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v4, "event="

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v4, ";rawEvent="

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ";policyFlags="

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "MotionEventInjector.onMotionEvent"

    .line 45
    .line 46
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const/16 v0, 0x2002

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x7

    .line 62
    if-ne v0, v1, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 65
    .line 66
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 67
    .line 68
    const/16 v2, 0x1002

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 84
    .line 85
    .line 86
    const/high16 v0, 0x20000

    .line 87
    .line 88
    or-int/2addr p3, v0

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/4 p3, 0x1

    .line 30
    if-eq p2, p3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/4 p3, 0x3

    .line 37
    if-ne p2, p3, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method
