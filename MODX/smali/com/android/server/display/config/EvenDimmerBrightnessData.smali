.class public final Lcom/android/server/display/config/EvenDimmerBrightnessData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBacklight:[F

.field public final mBacklightToBrightness:Landroid/util/Spline;

.field public final mBacklightToNits:Landroid/util/Spline;

.field public final mBrightness:[F

.field public final mBrightnessToBacklight:Landroid/util/Spline;

.field public final mMinLuxToNits:Landroid/util/Spline;

.field public final mNits:[F

.field public final mNitsToBacklight:Landroid/util/Spline;

.field public final mTransitionPoint:F


# direct methods
.method public constructor <init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mTransitionPoint:F

    .line 6
    iput-object p2, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    .line 8
    iput-object p3, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklight:[F

    .line 10
    iput-object p4, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightness:[F

    .line 12
    iput-object p5, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToNits:Landroid/util/Spline;

    .line 14
    iput-object p6, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNitsToBacklight:Landroid/util/Spline;

    .line 16
    iput-object p7, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightnessToBacklight:Landroid/util/Spline;

    .line 18
    iput-object p8, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToBrightness:Landroid/util/Spline;

    .line 20
    iput-object p9, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mMinLuxToNits:Landroid/util/Spline;

    .line 22
    return-void
.end method

.method public static loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;
    .locals 15

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerMode;->enabled:Ljava/lang/Boolean;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_1

    .line 12
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result v1

    .line 18
    :goto_0
    if-nez v1, :cond_2

    .line 20
    return-object v0

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerMode;->brightnessMapping:Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    .line 23
    if-nez v1, :cond_3

    .line 25
    return-object v0

    .line 26
    :cond_3
    iget-object v3, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->interpolation:Ljava/lang/String;

    .line 28
    iget-object v4, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 30
    if-nez v4, :cond_4

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v4, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 39
    :cond_4
    iget-object v1, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 41
    check-cast v1, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_5

    .line 49
    return-object v0

    .line 50
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    move-result v4

    .line 54
    new-array v7, v4, [F

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    move-result v4

    .line 60
    new-array v8, v4, [F

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    move-result v4

    .line 66
    new-array v9, v4, [F

    .line 68
    move v4, v2

    .line 69
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 72
    move-result v5

    .line 73
    if-ge v4, v5, :cond_6

    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lcom/android/server/display/config/BrightnessPoint;

    .line 81
    iget-object v6, v5, Lcom/android/server/display/config/BrightnessPoint;->nits:Ljava/math/BigDecimal;

    .line 83
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 86
    move-result v6

    .line 87
    aput v6, v7, v4

    .line 89
    iget-object v6, v5, Lcom/android/server/display/config/BrightnessPoint;->backlight:Ljava/math/BigDecimal;

    .line 91
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 94
    move-result v6

    .line 95
    aput v6, v8, v4

    .line 97
    iget-object v5, v5, Lcom/android/server/display/config/BrightnessPoint;->brightness:Ljava/math/BigDecimal;

    .line 99
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 102
    move-result v5

    .line 103
    aput v5, v9, v4

    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 107
    goto :goto_1

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerMode;->transitionPoint:Ljava/math/BigDecimal;

    .line 110
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    .line 113
    move-result v6

    .line 114
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerMode;->luxToMinimumNitsMap:Lcom/android/server/display/config/NitsMap;

    .line 116
    const-string v1, "EvenDimmerBrightnessData"

    .line 118
    if-nez p0, :cond_7

    .line 120
    const-string p0, "Invalid min lux to nits mapping"

    .line 122
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v0

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 128
    if-nez v0, :cond_8

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iput-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 137
    :cond_8
    iget-object p0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 139
    check-cast p0, Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v0

    .line 145
    new-array v4, v0, [F

    .line 147
    new-array v0, v0, [F

    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object p0

    .line 153
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_b

    .line 159
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lcom/android/server/display/config/Point;

    .line 165
    iget-object v10, v5, Lcom/android/server/display/config/Point;->value:Ljava/math/BigDecimal;

    .line 167
    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    .line 170
    move-result v10

    .line 171
    aput v10, v4, v2

    .line 173
    iget-object v5, v5, Lcom/android/server/display/config/Point;->nits:Ljava/math/BigDecimal;

    .line 175
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 178
    move-result v5

    .line 179
    aput v5, v0, v2

    .line 181
    if-lez v2, :cond_a

    .line 183
    aget v5, v4, v2

    .line 185
    add-int/lit8 v10, v2, -0x1

    .line 187
    aget v11, v4, v10

    .line 189
    cmpg-float v5, v5, v11

    .line 191
    const-string v11, " < "

    .line 193
    if-gez v5, :cond_9

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v12, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Value: "

    .line 200
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    aget v12, v4, v2

    .line 205
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    aget v12, v4, v10

    .line 213
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v5

    .line 220
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_9
    aget v5, v0, v2

    .line 225
    aget v12, v0, v10

    .line 227
    cmpg-float v5, v5, v12

    .line 229
    if-gez v5, :cond_a

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v12, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Nits: "

    .line 236
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    aget v12, v0, v2

    .line 241
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    aget v10, v0, v10

    .line 249
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v5

    .line 256
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 261
    goto :goto_2

    .line 262
    :cond_b
    const-string/jumbo p0, "linear"

    .line 265
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    move-result p0

    .line 269
    if-eqz p0, :cond_c

    .line 271
    new-instance p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 273
    new-instance v10, Landroid/util/Spline$LinearSpline;

    .line 275
    invoke-direct {v10, v8, v7}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 278
    new-instance v11, Landroid/util/Spline$LinearSpline;

    .line 280
    invoke-direct {v11, v7, v8}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 283
    new-instance v12, Landroid/util/Spline$LinearSpline;

    .line 285
    invoke-direct {v12, v9, v8}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 288
    new-instance v13, Landroid/util/Spline$LinearSpline;

    .line 290
    invoke-direct {v13, v8, v9}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 293
    new-instance v14, Landroid/util/Spline$LinearSpline;

    .line 295
    invoke-direct {v14, v4, v0}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 298
    move-object v5, p0

    .line 299
    invoke-direct/range {v5 .. v14}, Lcom/android/server/display/config/EvenDimmerBrightnessData;-><init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V

    .line 302
    return-object p0

    .line 303
    :cond_c
    new-instance p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 305
    invoke-static {v8, v7}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 308
    move-result-object v10

    .line 309
    invoke-static {v7, v8}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 312
    move-result-object v11

    .line 313
    invoke-static {v9, v8}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 316
    move-result-object v12

    .line 317
    invoke-static {v8, v9}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 320
    move-result-object v13

    .line 321
    invoke-static {v4, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 324
    move-result-object v14

    .line 325
    move-object v5, p0

    .line 326
    invoke-direct/range {v5 .. v14}, Lcom/android/server/display/config/EvenDimmerBrightnessData;-><init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V

    .line 329
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "EvenDimmerBrightnessData {mTransitionPoint: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mTransitionPoint:F

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mNits: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", mBacklight: "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklight:[F

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", mBrightness: "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightness:[F

    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ", mBacklightToNits: "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToNits:Landroid/util/Spline;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", mNitsToBacklight: "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNitsToBacklight:Landroid/util/Spline;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", mBrightnessToBacklight: "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightnessToBacklight:Landroid/util/Spline;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", mBacklightToBrightness: "

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToBrightness:Landroid/util/Spline;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", mMinLuxToNits: "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mMinLuxToNits:Landroid/util/Spline;

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo p0, "} "

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method
