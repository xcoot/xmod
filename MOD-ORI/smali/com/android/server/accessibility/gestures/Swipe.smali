.class public final Lcom/android/server/accessibility/gestures/Swipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBaseTime:J

.field public mBaseX:F

.field public mBaseY:F

.field public final mDirections:[I

.field public final mGestureDetectionThresholdPixels:F

.field public final mMinPixelsBetweenSamplesX:F

.field public final mMinPixelsBetweenSamplesY:F

.field public mPreviousGestureX:F

.field public mPreviousGestureY:F

.field public final mStrokeBuffer:Ljava/util/ArrayList;

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 0

    .line 2
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 0

    .line 1
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 2

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0x64

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 5
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/16 p3, 0xa

    int-to-float p3, p3

    const/4 p4, 0x5

    .line 7
    invoke-static {p4, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p3, p4

    iput p3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    .line 8
    iget p3, p2, Landroid/util/DisplayMetrics;->xdpi:F

    const p4, 0x40228f5c    # 2.54f

    div-float/2addr p3, p4

    .line 9
    iget p2, p2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p2, p4

    const/high16 p4, 0x3e800000    # 0.25f

    mul-float/2addr p3, p4

    .line 10
    iput p3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    mul-float/2addr p2, p4

    .line 11
    iput p2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    .line 12
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mTouchSlop:I

    .line 13
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/Swipe;->clear()V

    return-void
.end method

.method public static directionToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const-string p0, "Unknown Direction"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string/jumbo p0, "down"

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const-string/jumbo p0, "up"

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    const-string/jumbo p0, "right"

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const-string/jumbo p0, "left"

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public static toDirection(FF)I
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    cmpg-float p0, p0, v1

    .line 15
    .line 16
    if-gez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    :goto_0
    return p0

    .line 22
    :cond_1
    cmpg-float p0, p1, v1

    .line 23
    .line 24
    if-gez p0, :cond_2

    .line 25
    .line 26
    const/4 p0, 0x2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 p0, 0x3

    .line 29
    :goto_1
    return p0
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final getGestureName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Swipe "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    .line 10
    .line 11
    aget v1, p0, v1

    .line 12
    .line 13
    invoke-static {v1}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :goto_0
    array-length v2, p0

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    const-string v2, " and "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    aget v2, p0, v1

    .line 30
    .line 31
    invoke-static {v2}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    iput-wide p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    .line 34
    .line 35
    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 36
    .line 37
    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    .line 38
    .line 39
    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 40
    .line 41
    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    .line 22
    .line 23
    sub-float v8, v4, v8

    .line 24
    .line 25
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    iget v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    .line 30
    .line 31
    sub-float v9, v5, v9

    .line 32
    .line 33
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    iget v10, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 38
    .line 39
    sub-float v10, v4, v10

    .line 40
    .line 41
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    float-to-double v10, v10

    .line 46
    iget v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 47
    .line 48
    sub-float v12, v5, v12

    .line 49
    .line 50
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    float-to-double v12, v12

    .line 55
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    .line 56
    .line 57
    .line 58
    move-result-wide v10

    .line 59
    iget-wide v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    .line 60
    .line 61
    sub-long v12, v6, v12

    .line 62
    .line 63
    sget-boolean v14, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 64
    .line 65
    iget v15, v0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    .line 66
    .line 67
    if-eqz v14, :cond_0

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/Swipe;->getGestureName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    move/from16 v16, v9

    .line 74
    .line 75
    new-instance v9, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    move/from16 v17, v8

    .line 78
    .line 79
    const-string/jumbo v8, "moveDelta:"

    .line 80
    .line 81
    .line 82
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v8, " mGestureDetectionThreshold: "

    .line 93
    .line 94
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static {v15}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    move/from16 v17, v8

    .line 113
    .line 114
    move/from16 v16, v9

    .line 115
    .line 116
    :goto_0
    iget v8, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 117
    .line 118
    const/4 v9, 0x3

    .line 119
    if-nez v8, :cond_3

    .line 120
    .line 121
    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mTouchSlop:I

    .line 122
    .line 123
    move-wide/from16 v18, v12

    .line 124
    .line 125
    int-to-double v12, v8

    .line 126
    cmpg-double v8, v10, v12

    .line 127
    .line 128
    if-gez v8, :cond_1

    .line 129
    .line 130
    return-void

    .line 131
    :cond_1
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-nez v8, :cond_4

    .line 138
    .line 139
    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 140
    .line 141
    sub-float v8, v4, v8

    .line 142
    .line 143
    iget v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 144
    .line 145
    sub-float v12, v5, v12

    .line 146
    .line 147
    invoke-static {v8, v12}, Lcom/android/server/accessibility/gestures/Swipe;->toDirection(FF)I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    .line 152
    .line 153
    const/4 v13, 0x0

    .line 154
    aget v12, v12, v13

    .line 155
    .line 156
    if-eq v8, v12, :cond_2

    .line 157
    .line 158
    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_2
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 163
    .line 164
    new-instance v12, Landroid/graphics/PointF;

    .line 165
    .line 166
    iget v13, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 167
    .line 168
    iget v14, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 169
    .line 170
    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    move-wide/from16 v18, v12

    .line 178
    .line 179
    :cond_4
    :goto_1
    float-to-double v12, v15

    .line 180
    cmpl-double v8, v10, v12

    .line 181
    .line 182
    const/4 v10, 0x1

    .line 183
    if-lez v8, :cond_5

    .line 184
    .line 185
    iput v4, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 186
    .line 187
    iput v5, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 188
    .line 189
    iput-wide v6, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    .line 190
    .line 191
    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    iget v6, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 196
    .line 197
    if-nez v6, :cond_6

    .line 198
    .line 199
    const-wide/16 v6, 0x96

    .line 200
    .line 201
    cmp-long v6, v18, v6

    .line 202
    .line 203
    if-lez v6, :cond_7

    .line 204
    .line 205
    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_6
    if-ne v6, v10, :cond_7

    .line 210
    .line 211
    const-wide/16 v6, 0x15e

    .line 212
    .line 213
    cmp-long v6, v18, v6

    .line 214
    .line 215
    if-lez v6, :cond_7

    .line 216
    .line 217
    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_7
    :goto_2
    iget v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    .line 222
    .line 223
    cmpl-float v1, v17, v1

    .line 224
    .line 225
    if-gez v1, :cond_8

    .line 226
    .line 227
    iget v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    .line 228
    .line 229
    cmpl-float v1, v16, v1

    .line 230
    .line 231
    if-ltz v1, :cond_9

    .line 232
    .line 233
    :cond_8
    iput v4, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    .line 234
    .line 235
    iput v5, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    .line 236
    .line 237
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 238
    .line 239
    new-instance v1, Landroid/graphics/PointF;

    .line 240
    .line 241
    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :cond_9
    return-void
.end method

.method public final onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget v4, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eq v4, v6, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    .line 28
    .line 29
    sub-float v8, v4, v8

    .line 30
    .line 31
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    iget v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    .line 36
    .line 37
    sub-float v9, v7, v9

    .line 38
    .line 39
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    iget v10, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    .line 44
    .line 45
    cmpl-float v8, v8, v10

    .line 46
    .line 47
    if-gez v8, :cond_1

    .line 48
    .line 49
    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    .line 50
    .line 51
    cmpl-float v8, v9, v8

    .line 52
    .line 53
    if-ltz v8, :cond_2

    .line 54
    .line 55
    :cond_1
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 56
    .line 57
    new-instance v9, Landroid/graphics/PointF;

    .line 58
    .line 59
    invoke-direct {v9, v4, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    const/4 v7, 0x2

    .line 72
    if-ge v4, v7, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Landroid/graphics/PointF;

    .line 92
    .line 93
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    const/4 v11, 0x0

    .line 97
    move v12, v6

    .line 98
    move v13, v9

    .line 99
    const/4 v14, 0x0

    .line 100
    const/4 v15, 0x0

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    :goto_0
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-ge v12, v9, :cond_6

    .line 110
    .line 111
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    move-object v11, v9

    .line 118
    check-cast v11, Landroid/graphics/PointF;

    .line 119
    .line 120
    if-lez v13, :cond_4

    .line 121
    .line 122
    int-to-float v9, v13

    .line 123
    div-float v17, v14, v9

    .line 124
    .line 125
    div-float v9, v15, v9

    .line 126
    .line 127
    new-instance v7, Landroid/graphics/PointF;

    .line 128
    .line 129
    mul-float v18, v16, v17

    .line 130
    .line 131
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 132
    .line 133
    add-float v5, v18, v5

    .line 134
    .line 135
    mul-float v16, v16, v9

    .line 136
    .line 137
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 138
    .line 139
    add-float v6, v16, v6

    .line 140
    .line 141
    invoke-direct {v7, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 142
    .line 143
    .line 144
    iget v5, v11, Landroid/graphics/PointF;->x:F

    .line 145
    .line 146
    iget v6, v7, Landroid/graphics/PointF;->x:F

    .line 147
    .line 148
    sub-float/2addr v5, v6

    .line 149
    iget v6, v11, Landroid/graphics/PointF;->y:F

    .line 150
    .line 151
    iget v10, v7, Landroid/graphics/PointF;->y:F

    .line 152
    .line 153
    sub-float/2addr v6, v10

    .line 154
    mul-float v10, v5, v5

    .line 155
    .line 156
    mul-float v19, v6, v6

    .line 157
    .line 158
    add-float v10, v19, v10

    .line 159
    .line 160
    move/from16 v19, v13

    .line 161
    .line 162
    move/from16 v20, v14

    .line 163
    .line 164
    float-to-double v13, v10

    .line 165
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 166
    .line 167
    .line 168
    move-result-wide v13

    .line 169
    double-to-float v10, v13

    .line 170
    div-float/2addr v5, v10

    .line 171
    div-float/2addr v6, v10

    .line 172
    mul-float v17, v17, v5

    .line 173
    .line 174
    mul-float/2addr v9, v6

    .line 175
    add-float v9, v9, v17

    .line 176
    .line 177
    const/4 v5, 0x0

    .line 178
    cmpg-float v6, v9, v5

    .line 179
    .line 180
    if-gez v6, :cond_5

    .line 181
    .line 182
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move v14, v5

    .line 186
    move v15, v14

    .line 187
    move-object v8, v7

    .line 188
    const/4 v13, 0x0

    .line 189
    goto :goto_1

    .line 190
    :cond_4
    move/from16 v19, v13

    .line 191
    .line 192
    move/from16 v20, v14

    .line 193
    .line 194
    const/4 v5, 0x0

    .line 195
    :cond_5
    move/from16 v13, v19

    .line 196
    .line 197
    move/from16 v14, v20

    .line 198
    .line 199
    :goto_1
    iget v6, v11, Landroid/graphics/PointF;->x:F

    .line 200
    .line 201
    iget v7, v8, Landroid/graphics/PointF;->x:F

    .line 202
    .line 203
    sub-float/2addr v6, v7

    .line 204
    iget v7, v11, Landroid/graphics/PointF;->y:F

    .line 205
    .line 206
    iget v9, v8, Landroid/graphics/PointF;->y:F

    .line 207
    .line 208
    sub-float/2addr v7, v9

    .line 209
    mul-float v9, v6, v6

    .line 210
    .line 211
    mul-float v10, v7, v7

    .line 212
    .line 213
    add-float/2addr v10, v9

    .line 214
    float-to-double v9, v10

    .line 215
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 216
    .line 217
    .line 218
    move-result-wide v9

    .line 219
    double-to-float v9, v9

    .line 220
    const/4 v10, 0x1

    .line 221
    add-int/2addr v13, v10

    .line 222
    div-float/2addr v6, v9

    .line 223
    add-float/2addr v14, v6

    .line 224
    div-float/2addr v7, v9

    .line 225
    add-float/2addr v15, v7

    .line 226
    add-int/lit8 v12, v12, 0x1

    .line 227
    .line 228
    move/from16 v16, v9

    .line 229
    .line 230
    const/4 v5, 0x3

    .line 231
    const/4 v6, 0x1

    .line 232
    const/4 v7, 0x2

    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_6
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    sget-boolean v5, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 239
    .line 240
    if-eqz v5, :cond_7

    .line 241
    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/Swipe;->getGestureName()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string/jumbo v7, "path="

    .line 249
    .line 250
    .line 251
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    .line 276
    .line 277
    array-length v7, v6

    .line 278
    const/4 v8, 0x1

    .line 279
    add-int/2addr v7, v8

    .line 280
    if-eq v5, v7, :cond_8

    .line 281
    .line 282
    const/4 v5, 0x3

    .line 283
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_8
    const/4 v9, 0x0

    .line 288
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    sub-int/2addr v5, v8

    .line 293
    if-ge v9, v5, :cond_b

    .line 294
    .line 295
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    check-cast v5, Landroid/graphics/PointF;

    .line 300
    .line 301
    add-int/lit8 v7, v9, 0x1

    .line 302
    .line 303
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    check-cast v10, Landroid/graphics/PointF;

    .line 308
    .line 309
    iget v11, v10, Landroid/graphics/PointF;->x:F

    .line 310
    .line 311
    iget v12, v5, Landroid/graphics/PointF;->x:F

    .line 312
    .line 313
    sub-float/2addr v11, v12

    .line 314
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 315
    .line 316
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 317
    .line 318
    sub-float/2addr v10, v5

    .line 319
    invoke-static {v11, v10}, Lcom/android/server/accessibility/gestures/Swipe;->toDirection(FF)I

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    aget v10, v6, v9

    .line 324
    .line 325
    if-eq v5, v10, :cond_a

    .line 326
    .line 327
    sget-boolean v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 328
    .line 329
    if-eqz v4, :cond_9

    .line 330
    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/Swipe;->getGestureName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v8, "Found direction "

    .line 338
    .line 339
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v5}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v5, " when expecting "

    .line 350
    .line 351
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    aget v5, v6, v9

    .line 355
    .line 356
    invoke-static {v5}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    :cond_9
    const/4 v5, 0x3

    .line 371
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 372
    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_a
    move v9, v7

    .line 376
    goto :goto_2

    .line 377
    :cond_b
    sget-boolean v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 378
    .line 379
    if-eqz v4, :cond_c

    .line 380
    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/Swipe;->getGestureName()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    const-string v5, "Completed."

    .line 386
    .line 387
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    :cond_c
    const/4 v4, 0x2

    .line 391
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 392
    .line 393
    .line 394
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    const-string v1, ", mBaseX: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", mBaseY: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", mGestureDetectionThreshold:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", mMinPixelsBetweenSamplesX:"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", mMinPixelsBetweenSamplesY:"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
