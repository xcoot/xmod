.class public final Lcom/android/server/accessibility/magnification/GesturesObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;


# instance fields
.field public mCancelledMatcherSize:I

.field public final mGestureMatchers:Ljava/util/List;

.field public final mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

.field public mObserveStarted:Z

.field public mProcessMotionEvent:Z


# direct methods
.method public varargs constructor <init>(Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 16
    iput v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 18
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    .line 20
    :goto_0
    array-length p1, p2

    .line 21
    if-ge v0, p1, :cond_0

    .line 23
    aget-object p1, p2, v0

    .line 25
    iput-object p0, p1, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 27
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public final clear$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 21
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 28
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    .line 30
    return-void
.end method

.method public final onStateChanged(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p4

    .line 9
    const/4 v4, 0x2

    .line 10
    if-ne v2, v4, :cond_b

    .line 12
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    .line 14
    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    .line 16
    sget-boolean v4, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    .line 18
    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string v4, "MagnificationGesturesObserver"

    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v8, "onGestureCompleted: "

    .line 30
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v8, " event = "

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v7

    .line 52
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v4, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 57
    const/4 v7, 0x0

    .line 58
    iput-object v7, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 60
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 62
    iget-wide v8, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    .line 64
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    sget-boolean v10, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 69
    if-eqz v10, :cond_1

    .line 71
    iget-object v10, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 73
    iget-object v10, v10, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 75
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    .line 78
    move-result-object v11

    .line 79
    const-string/jumbo v12, "onGestureDetected : gesture = "

    .line 82
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v11

    .line 86
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v10, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 91
    iget-object v10, v10, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 93
    new-instance v11, Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v12, "onGestureDetected : delayedEventQueue = "

    .line 98
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v11

    .line 108
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    const/16 v10, 0x65

    .line 113
    if-ne v1, v10, :cond_5

    .line 115
    iget-object v10, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 117
    iget-object v11, v10, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 119
    iget v10, v10, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 121
    iget-object v12, v11, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 123
    monitor-enter v12

    .line 124
    :try_start_0
    iget-object v11, v11, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 126
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v10

    .line 130
    check-cast v10, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 132
    const/4 v11, 0x0

    .line 133
    if-nez v10, :cond_2

    .line 135
    monitor-exit v12

    .line 136
    goto :goto_1

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 142
    move-result v13

    .line 143
    move v14, v11

    .line 144
    :goto_0
    if-ge v11, v13, :cond_4

    .line 146
    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 149
    move-result v15

    .line 150
    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 153
    move-result v5

    .line 154
    iget-object v6, v10, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 156
    float-to-int v15, v15

    .line 157
    float-to-int v5, v5

    .line 158
    invoke-virtual {v6, v15, v5}, Landroid/graphics/Rect;->contains(II)Z

    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_3

    .line 164
    add-int/lit8 v14, v14, 0x1

    .line 166
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 168
    goto :goto_0

    .line 169
    :cond_4
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    move v11, v14

    .line 171
    :goto_1
    if-lez v11, :cond_5

    .line 173
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 175
    iget-object v3, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    .line 177
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 180
    goto :goto_4

    .line 181
    :goto_2
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw v0

    .line 183
    :cond_5
    const/16 v5, 0x69

    .line 185
    if-ne v1, v5, :cond_7

    .line 187
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 189
    sget-boolean v4, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 191
    if-eqz v4, :cond_6

    .line 193
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 195
    const-string/jumbo v5, "onTripleTap()"

    .line 198
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    goto :goto_3

    .line 202
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    :goto_3
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    .line 208
    move-result v4

    .line 209
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    .line 212
    move-result v3

    .line 213
    invoke-virtual {v1, v4, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FF)V

    .line 216
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 218
    const-string v3, "Magnification"

    .line 220
    invoke-static {v3}, Landroid/view/accessibility/A11yLogger;->createDimension(Ljava/lang/String;)Ljava/util/HashMap;

    .line 223
    move-result-object v3

    .line 224
    const-string v4, "A11Y9004"

    .line 226
    invoke-static {v1, v4, v3}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 229
    goto :goto_4

    .line 230
    :cond_7
    const/16 v5, 0x6a

    .line 232
    if-ne v1, v5, :cond_8

    .line 234
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 236
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->onTripleTapAndHold(Landroid/view/MotionEvent;)V

    .line 239
    goto :goto_4

    .line 240
    :cond_8
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 242
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    .line 244
    invoke-virtual {v1, v8, v9, v4}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(JLjava/util/List;)V

    .line 247
    if-eqz v3, :cond_9

    .line 249
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 252
    move-result v1

    .line 253
    const/4 v4, 0x1

    .line 254
    if-eq v1, v4, :cond_a

    .line 256
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 259
    move-result v1

    .line 260
    const/4 v3, 0x3

    .line 261
    if-ne v1, v3, :cond_9

    .line 263
    goto :goto_4

    .line 264
    :cond_9
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 266
    iget-object v3, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    .line 268
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 271
    :cond_a
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->clear()V

    .line 274
    iget-boolean v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 276
    if-nez v1, :cond_d

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear$1()V

    .line 281
    goto :goto_5

    .line 282
    :cond_b
    const/4 v1, 0x3

    .line 283
    if-ne v2, v1, :cond_d

    .line 285
    iget v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 287
    const/4 v2, 0x1

    .line 288
    add-int/2addr v1, v2

    .line 289
    iput v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 291
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 293
    check-cast v2, Ljava/util/ArrayList;

    .line 295
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 298
    move-result v2

    .line 299
    if-ne v1, v2, :cond_d

    .line 301
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    .line 303
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    .line 305
    sget-boolean v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    .line 307
    if-eqz v2, :cond_c

    .line 309
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v4, "onGestureCancelled:  event = "

    .line 317
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v2

    .line 327
    const-string v3, "MagnificationGesturesObserver"

    .line 329
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->notifyDetectionCancel()V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear$1()V

    .line 338
    :cond_d
    :goto_5
    return-void
.end method
