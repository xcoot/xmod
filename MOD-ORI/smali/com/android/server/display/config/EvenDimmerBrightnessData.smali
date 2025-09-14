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

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mTransitionPoint:F

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklight:[F

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightness:[F

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToNits:Landroid/util/Spline;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNitsToBacklight:Landroid/util/Spline;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightnessToBacklight:Landroid/util/Spline;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToBrightness:Landroid/util/Spline;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mMinLuxToNits:Landroid/util/Spline;

    .line 21
    .line 22
    return-void
.end method

.method public static loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;
    .locals 15

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerMode;->enabled:Ljava/lang/Boolean;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_0
    if-nez v1, :cond_2

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerMode;->brightnessMapping:Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    .line 22
    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_3
    iget-object v3, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->interpolation:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 29
    .line 30
    if-nez v4, :cond_4

    .line 31
    .line 32
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v4, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 38
    .line 39
    :cond_4
    iget-object v1, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 40
    .line 41
    check-cast v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_5

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    new-array v7, v4, [F

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    new-array v8, v4, [F

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    new-array v9, v4, [F

    .line 67
    .line 68
    move v4, v2

    .line 69
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-ge v4, v5, :cond_6

    .line 74
    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lcom/android/server/display/config/BrightnessPoint;

    .line 80
    .line 81
    iget-object v6, v5, Lcom/android/server/display/config/BrightnessPoint;->nits:Ljava/math/BigDecimal;

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    aput v6, v7, v4

    .line 88
    .line 89
    iget-object v6, v5, Lcom/android/server/display/config/BrightnessPoint;->backlight:Ljava/math/BigDecimal;

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    aput v6, v8, v4

    .line 96
    .line 97
    iget-object v5, v5, Lcom/android/server/display/config/BrightnessPoint;->brightness:Ljava/math/BigDecimal;

    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    aput v5, v9, v4

    .line 104
    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerMode;->transitionPoint:Ljava/math/BigDecimal;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerMode;->luxToMinimumNitsMap:Lcom/android/server/display/config/NitsMap;

    .line 115
    .line 116
    const-string v1, "EvenDimmerBrightnessData"

    .line 117
    .line 118
    if-nez p0, :cond_7

    .line 119
    .line 120
    const-string p0, "Invalid min lux to nits mapping"

    .line 121
    .line 122
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 127
    .line 128
    if-nez v0, :cond_8

    .line 129
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 136
    .line 137
    :cond_8
    iget-object p0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 138
    .line 139
    check-cast p0, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    new-array v4, v0, [F

    .line 146
    .line 147
    new-array v0, v0, [F

    .line 148
    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_b

    .line 158
    .line 159
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lcom/android/server/display/config/Point;

    .line 164
    .line 165
    iget-object v10, v5, Lcom/android/server/display/config/Point;->value:Ljava/math/BigDecimal;

    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    aput v10, v4, v2

    .line 172
    .line 173
    iget-object v5, v5, Lcom/android/server/display/config/Point;->nits:Ljava/math/BigDecimal;

    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    aput v5, v0, v2

    .line 180
    .line 181
    if-lez v2, :cond_a

    .line 182
    .line 183
    aget v5, v4, v2

    .line 184
    .line 185
    add-int/lit8 v10, v2, -0x1

    .line 186
    .line 187
    aget v11, v4, v10

    .line 188
    .line 189
    cmpg-float v5, v5, v11

    .line 190
    .line 191
    const-string v11, " < "

    .line 192
    .line 193
    if-gez v5, :cond_9

    .line 194
    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string/jumbo v12, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Value: "

    .line 198
    .line 199
    .line 200
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    aget v12, v4, v2

    .line 204
    .line 205
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    aget v12, v4, v10

    .line 212
    .line 213
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    :cond_9
    aget v5, v0, v2

    .line 224
    .line 225
    aget v12, v0, v10

    .line 226
    .line 227
    cmpg-float v5, v5, v12

    .line 228
    .line 229
    if-gez v5, :cond_a

    .line 230
    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string/jumbo v12, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Nits: "

    .line 234
    .line 235
    .line 236
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    aget v12, v0, v2

    .line 240
    .line 241
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    aget v10, v0, v10

    .line 248
    .line 249
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_b
    const-string/jumbo p0, "linear"

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    if-eqz p0, :cond_c

    .line 270
    .line 271
    new-instance p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 272
    .line 273
    new-instance v10, Landroid/util/Spline$LinearSpline;

    .line 274
    .line 275
    invoke-direct {v10, v8, v7}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 276
    .line 277
    .line 278
    new-instance v11, Landroid/util/Spline$LinearSpline;

    .line 279
    .line 280
    invoke-direct {v11, v7, v8}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 281
    .line 282
    .line 283
    new-instance v12, Landroid/util/Spline$LinearSpline;

    .line 284
    .line 285
    invoke-direct {v12, v9, v8}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 286
    .line 287
    .line 288
    new-instance v13, Landroid/util/Spline$LinearSpline;

    .line 289
    .line 290
    invoke-direct {v13, v8, v9}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 291
    .line 292
    .line 293
    new-instance v14, Landroid/util/Spline$LinearSpline;

    .line 294
    .line 295
    invoke-direct {v14, v4, v0}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 296
    .line 297
    .line 298
    move-object v5, p0

    .line 299
    invoke-direct/range {v5 .. v14}, Lcom/android/server/display/config/EvenDimmerBrightnessData;-><init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V

    .line 300
    .line 301
    .line 302
    return-object p0

    .line 303
    :cond_c
    new-instance p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 304
    .line 305
    invoke-static {v8, v7}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    invoke-static {v7, v8}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    invoke-static {v9, v8}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    invoke-static {v8, v9}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 318
    .line 319
    .line 320
    move-result-object v13

    .line 321
    invoke-static {v4, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    move-object v5, p0

    .line 326
    invoke-direct/range {v5 .. v14}, Lcom/android/server/display/config/EvenDimmerBrightnessData;-><init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V

    .line 327
    .line 328
    .line 329
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EvenDimmerBrightnessData {mTransitionPoint: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mTransitionPoint:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mNits: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", mBacklight: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklight:[F

    .line 33
    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", mBrightness: "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightness:[F

    .line 47
    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", mBacklightToNits: "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToNits:Landroid/util/Spline;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", mNitsToBacklight: "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNitsToBacklight:Landroid/util/Spline;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", mBrightnessToBacklight: "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightnessToBacklight:Landroid/util/Spline;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ", mBacklightToBrightness: "

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToBrightness:Landroid/util/Spline;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", mMinLuxToNits: "

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mMinLuxToNits:Landroid/util/Spline;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string/jumbo p0, "} "

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method
