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

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    .line 19
    .line 20
    :goto_0
    array-length p1, p2

    .line 21
    if-ge v0, p1, :cond_0

    .line 22
    .line 23
    aget-object p1, p2, v0

    .line 24
    .line 25
    iput-object p0, p1, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 28
    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
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

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    .line 29
    .line 30
    return-void
.end method

.method public final onStateChanged(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    if-ne v2, v4, :cond_b

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    .line 13
    .line 14
    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    .line 15
    .line 16
    sget-boolean v4, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v4, "MagnificationGesturesObserver"

    .line 24
    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v8, "onGestureCompleted: "

    .line 28
    .line 29
    .line 30
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v8, " event = "

    .line 41
    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v4, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    iput-object v7, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 59
    .line 60
    iget-object v7, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 61
    .line 62
    iget-wide v8, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-boolean v10, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 68
    .line 69
    if-eqz v10, :cond_1

    .line 70
    .line 71
    iget-object v10, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 72
    .line 73
    iget-object v10, v10, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    const-string/jumbo v12, "onGestureDetected : gesture = "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget-object v10, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 90
    .line 91
    iget-object v10, v10, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v11, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string/jumbo v12, "onGestureDetected : delayedEventQueue = "

    .line 96
    .line 97
    .line 98
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_1
    const/16 v10, 0x65

    .line 112
    .line 113
    if-ne v1, v10, :cond_5

    .line 114
    .line 115
    iget-object v10, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 116
    .line 117
    iget-object v11, v10, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 118
    .line 119
    iget v10, v10, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 120
    .line 121
    iget-object v12, v11, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 122
    .line 123
    monitor-enter v12

    .line 124
    :try_start_0
    iget-object v11, v11, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 125
    .line 126
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    check-cast v10, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 131
    .line 132
    const/4 v11, 0x0

    .line 133
    if-nez v10, :cond_2

    .line 134
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

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    move v14, v11

    .line 144
    :goto_0
    if-ge v11, v13, :cond_4

    .line 145
    .line 146
    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    iget-object v6, v10, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 155
    .line 156
    float-to-int v15, v15

    .line 157
    float-to-int v5, v5

    .line 158
    invoke-virtual {v6, v15, v5}, Landroid/graphics/Rect;->contains(II)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_3

    .line 163
    .line 164
    add-int/lit8 v14, v14, 0x1

    .line 165
    .line 166
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 167
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

    .line 172
    .line 173
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 174
    .line 175
    iget-object v3, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    .line 176
    .line 177
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 178
    .line 179
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

    .line 184
    .line 185
    if-ne v1, v5, :cond_7

    .line 186
    .line 187
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 188
    .line 189
    sget-boolean v4, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    .line 190
    .line 191
    if-eqz v4, :cond_6

    .line 192
    .line 193
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 194
    .line 195
    const-string/jumbo v5, "onTripleTap()"

    .line 196
    .line 197
    .line 198
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    :goto_3
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    invoke-virtual {v1, v4, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FF)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 217
    .line 218
    const-string v3, "Magnification"

    .line 219
    .line 220
    invoke-static {v3}, Landroid/view/accessibility/A11yLogger;->createDimension(Ljava/lang/String;)Ljava/util/HashMap;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    const-string v4, "A11Y9004"

    .line 225
    .line 226
    invoke-static {v1, v4, v3}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_7
    const/16 v5, 0x6a

    .line 231
    .line 232
    if-ne v1, v5, :cond_8

    .line 233
    .line 234
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 235
    .line 236
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->onTripleTapAndHold(Landroid/view/MotionEvent;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_8
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 241
    .line 242
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    .line 243
    .line 244
    invoke-virtual {v1, v8, v9, v4}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(JLjava/util/List;)V

    .line 245
    .line 246
    .line 247
    if-eqz v3, :cond_9

    .line 248
    .line 249
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    const/4 v4, 0x1

    .line 254
    if-eq v1, v4, :cond_a

    .line 255
    .line 256
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    const/4 v3, 0x3

    .line 261
    if-ne v1, v3, :cond_9

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_9
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 265
    .line 266
    iget-object v3, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    .line 267
    .line 268
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 269
    .line 270
    .line 271
    :cond_a
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->clear()V

    .line 272
    .line 273
    .line 274
    iget-boolean v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 275
    .line 276
    if-nez v1, :cond_d

    .line 277
    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear$1()V

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_b
    const/4 v1, 0x3

    .line 283
    if-ne v2, v1, :cond_d

    .line 284
    .line 285
    iget v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 286
    .line 287
    const/4 v2, 0x1

    .line 288
    add-int/2addr v1, v2

    .line 289
    iput v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    .line 290
    .line 291
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 292
    .line 293
    check-cast v2, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-ne v1, v2, :cond_d

    .line 300
    .line 301
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    .line 302
    .line 303
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    .line 304
    .line 305
    sget-boolean v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    .line 306
    .line 307
    if-eqz v2, :cond_c

    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string/jumbo v4, "onGestureCancelled:  event = "

    .line 315
    .line 316
    .line 317
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    const-string v3, "MagnificationGesturesObserver"

    .line 328
    .line 329
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->notifyDetectionCancel()V

    .line 333
    .line 334
    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear$1()V

    .line 336
    .line 337
    .line 338
    :cond_d
    :goto_5
    return-void
.end method
