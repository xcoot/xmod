.class public final Lcom/android/server/input/debug/RotaryInputGraphView;
.super Landroid/view/View;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MAX_GESTURE_TIME:J

.field public static final MAX_SHOWN_TIME_INTERVAL:J


# instance fields
.field public final mDefaultLocale:Ljava/util/Locale;

.field public final mDm:Landroid/util/DisplayMetrics;

.field public mFrameCenterPosition:F

.field public final mFrameCenterToBorderDistance:F

.field public final mFramePaint:Landroid/graphics/Paint;

.field public final mFrameTextPaint:Landroid/graphics/Paint;

.field public final mGraphLinePaint:Landroid/graphics/Paint;

.field public final mGraphPointPaint:Landroid/graphics/Paint;

.field public final mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

.field public final mScaledVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x5

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    .line 10
    .line 11
    const-wide/16 v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_GESTURE_TIME:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    new-instance v3, Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v3, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    new-instance v4, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 39
    .line 40
    invoke-direct {v4}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    iput v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 47
    .line 48
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iput-object v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 61
    .line 62
    int-to-float v5, v5

    .line 63
    iput v5, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    .line 64
    .line 65
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mScaledVerticalScrollFactor:F

    .line 74
    .line 75
    const p0, -0x408be4b9

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x2

    .line 82
    invoke-static {p0, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    int-to-float p0, p0

    .line 87
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    .line 89
    .line 90
    const p0, -0xff01

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    .line 95
    .line 96
    const/16 p1, 0xa

    .line 97
    .line 98
    invoke-static {p1, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    int-to-float p1, p1

    .line 103
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x1

    .line 110
    invoke-static {p1, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    int-to-float p1, p1

    .line 115
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 121
    .line 122
    .line 123
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 124
    .line 125
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    .line 130
    .line 131
    const/4 p0, 0x4

    .line 132
    invoke-static {p0, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    int-to-float p0, p0

    .line 137
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public static applyDimensionSp(ILandroid/util/DisplayMetrics;)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    int-to-float p0, p0

    .line 3
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    float-to-int p0, p0

    .line 8
    return p0
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int v9, v1, v8

    .line 21
    .line 22
    add-int v1, v8, v9

    .line 23
    .line 24
    const/4 v10, 0x2

    .line 25
    div-int/lit8 v11, v1, 0x2

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v5, v8

    .line 32
    int-to-float v12, v1

    .line 33
    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move-object/from16 v1, p1

    .line 37
    .line 38
    move v3, v5

    .line 39
    move v4, v12

    .line 40
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    int-to-float v13, v11

    .line 44
    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    .line 45
    .line 46
    move v3, v13

    .line 47
    move v5, v13

    .line 48
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    .line 50
    .line 51
    int-to-float v5, v9

    .line 52
    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    .line 53
    .line 54
    move v3, v5

    .line 55
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    invoke-static {v10, v1}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    .line 65
    .line 66
    iget v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 67
    .line 68
    iget v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    .line 69
    .line 70
    add-float/2addr v3, v4

    .line 71
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "%.1f"

    .line 80
    .line 81
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sub-int v3, v8, v1

    .line 86
    .line 87
    int-to-float v3, v3

    .line 88
    iget-object v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    invoke-virtual {v7, v2, v10, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    .line 95
    .line 96
    iget v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 97
    .line 98
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    sub-int v3, v11, v1

    .line 111
    .line 112
    int-to-float v3, v3

    .line 113
    iget-object v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual {v7, v2, v10, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    .line 119
    .line 120
    iget v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 121
    .line 122
    iget v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    .line 123
    .line 124
    sub-float/2addr v3, v5

    .line 125
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    sub-int/2addr v9, v1

    .line 138
    int-to-float v1, v9

    .line 139
    iget-object v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {v7, v2, v10, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    .line 143
    .line 144
    iget-object v9, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 145
    .line 146
    iget v1, v9, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 147
    .line 148
    if-nez v1, :cond_0

    .line 149
    .line 150
    return-void

    .line 151
    :cond_0
    iget v1, v9, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 152
    .line 153
    iget-object v2, v9, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 154
    .line 155
    aget-object v2, v2, v1

    .line 156
    .line 157
    iget-wide v14, v2, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 158
    .line 159
    iput v1, v9, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorIndex:I

    .line 160
    .line 161
    const/4 v1, 0x1

    .line 162
    iput v1, v9, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    .line 163
    .line 164
    move v1, v10

    .line 165
    move v2, v1

    .line 166
    move v3, v2

    .line 167
    :goto_0
    iget-object v4, v9, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mReverseIterator:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;

    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_3

    .line 174
    .line 175
    invoke-virtual {v4}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 180
    .line 181
    iget-wide v5, v4, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 182
    .line 183
    sub-long v5, v14, v5

    .line 184
    .line 185
    long-to-int v6, v5

    .line 186
    iget v4, v4, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 187
    .line 188
    move/from16 v16, v11

    .line 189
    .line 190
    sget-wide v10, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    .line 191
    .line 192
    move-wide/from16 v17, v14

    .line 193
    .line 194
    int-to-long v14, v6

    .line 195
    sub-long v14, v10, v14

    .line 196
    .line 197
    long-to-float v5, v14

    .line 198
    long-to-float v10, v10

    .line 199
    div-float/2addr v5, v10

    .line 200
    mul-float/2addr v5, v12

    .line 201
    const/4 v10, 0x0

    .line 202
    add-float v11, v5, v10

    .line 203
    .line 204
    iget v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 205
    .line 206
    sub-float/2addr v4, v5

    .line 207
    iget v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    .line 208
    .line 209
    div-float/2addr v4, v5

    .line 210
    sub-int v5, v16, v8

    .line 211
    .line 212
    int-to-float v5, v5

    .line 213
    mul-float/2addr v4, v5

    .line 214
    sub-float v14, v13, v4

    .line 215
    .line 216
    iget-object v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    .line 217
    .line 218
    invoke-virtual {v7, v11, v14, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 219
    .line 220
    .line 221
    if-eqz v6, :cond_2

    .line 222
    .line 223
    int-to-float v4, v6

    .line 224
    sub-float/2addr v4, v1

    .line 225
    move v15, v11

    .line 226
    sget-wide v10, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_GESTURE_TIME:J

    .line 227
    .line 228
    long-to-float v1, v10

    .line 229
    cmpg-float v1, v4, v1

    .line 230
    .line 231
    if-gtz v1, :cond_1

    .line 232
    .line 233
    iget-object v10, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    .line 234
    .line 235
    move-object/from16 v1, p1

    .line 236
    .line 237
    move v4, v15

    .line 238
    move v5, v14

    .line 239
    move v11, v6

    .line 240
    move-object v6, v10

    .line 241
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_1
    :goto_1
    move v11, v6

    .line 246
    goto :goto_2

    .line 247
    :cond_2
    move v15, v11

    .line 248
    goto :goto_1

    .line 249
    :goto_2
    int-to-float v1, v11

    .line 250
    move v3, v14

    .line 251
    move v2, v15

    .line 252
    move/from16 v11, v16

    .line 253
    .line 254
    move-wide/from16 v14, v17

    .line 255
    .line 256
    const/4 v10, 0x0

    .line 257
    goto :goto_0

    .line 258
    :cond_3
    return-void
.end method
