.class public final Lcom/android/server/display/config/DisplayBrightnessMappingConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_BRIGHTNESS_MAPPING_KEY:Ljava/lang/String;


# instance fields
.field public final mBrightnessLevelsLuxMap:Ljava/util/Map;

.field public final mBrightnessLevelsMap:Ljava/util/Map;

.field public final mBrightnessLevelsNits:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "_"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->DEFAULT_BRIGHTNESS_MAPPING_KEY:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p2, :cond_6

    .line 26
    .line 27
    if-eqz p3, :cond_6

    .line 28
    .line 29
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_6

    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-lez p2, :cond_6

    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_6

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Lcom/android/server/display/config/LuxToBrightnessMapping;

    .line 64
    .line 65
    iget-object v1, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    new-array v2, v1, [F

    .line 76
    .line 77
    new-array v3, v1, [F

    .line 78
    .line 79
    move v4, v0

    .line 80
    :goto_1
    if-ge v4, v1, :cond_0

    .line 81
    .line 82
    iget-object v5, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 83
    .line 84
    invoke-virtual {v5}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 93
    .line 94
    iget-object v5, v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->second:Ljava/math/BigDecimal;

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {p4, v5}, Landroid/util/Spline;->interpolate(F)F

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    aput v5, v2, v4

    .line 105
    .line 106
    iget-object v5, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 117
    .line 118
    iget-object v5, v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->first:Ljava/math/BigDecimal;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    aput v5, v3, v4

    .line 125
    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_0
    if-eqz v1, :cond_5

    .line 130
    .line 131
    aget v1, v3, v0

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    cmpl-float v1, v1, v4

    .line 135
    .line 136
    if-nez v1, :cond_4

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v4, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->mode:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 144
    .line 145
    if-nez v4, :cond_1

    .line 146
    .line 147
    sget-object v4, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    goto :goto_2

    .line 154
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v4, "_"

    .line 162
    .line 163
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object p3, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->setting:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 167
    .line 168
    if-nez p3, :cond_2

    .line 169
    .line 170
    sget-object p3, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 171
    .line 172
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    goto :goto_3

    .line 177
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    :goto_3
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 189
    .line 190
    check-cast v1, Ljava/util/HashMap;

    .line 191
    .line 192
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_3

    .line 197
    .line 198
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 199
    .line 200
    check-cast v1, Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_3

    .line 207
    .line 208
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 209
    .line 210
    check-cast v1, Ljava/util/HashMap;

    .line 211
    .line 212
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 216
    .line 217
    check-cast v1, Ljava/util/HashMap;

    .line 218
    .line 219
    invoke-virtual {v1, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 225
    .line 226
    const-string p1, "A display brightness mapping with key "

    .line 227
    .line 228
    const-string p2, " already exists"

    .line 229
    .line 230
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p0

    .line 238
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 239
    .line 240
    const-string p1, "The first lux value in the display brightness mapping must be 0"

    .line 241
    .line 242
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw p0

    .line 246
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    const-string p1, "A display brightness mapping should not be empty"

    .line 249
    .line 250
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p0

    .line 254
    :cond_6
    iget-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 255
    .line 256
    check-cast p2, Ljava/util/HashMap;

    .line 257
    .line 258
    sget-object p3, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->DEFAULT_BRIGHTNESS_MAPPING_KEY:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    if-eqz p2, :cond_7

    .line 265
    .line 266
    iget-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 267
    .line 268
    check-cast p2, Ljava/util/HashMap;

    .line 269
    .line 270
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    if-nez p2, :cond_a

    .line 275
    .line 276
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    const v1, 0x1070093

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    invoke-static {p2}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    iput-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsNits:[F

    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    const v1, 0x1070098

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    array-length v1, p2

    .line 305
    add-int/lit8 v1, v1, 0x1

    .line 306
    .line 307
    new-array v1, v1, [F

    .line 308
    .line 309
    move v2, v0

    .line 310
    :goto_4
    array-length v3, p2

    .line 311
    if-ge v2, v3, :cond_8

    .line 312
    .line 313
    add-int/lit8 v3, v2, 0x1

    .line 314
    .line 315
    aget v2, p2, v2

    .line 316
    .line 317
    int-to-float v2, v2

    .line 318
    aput v2, v1, v3

    .line 319
    .line 320
    move v2, v3

    .line 321
    goto :goto_4

    .line 322
    :cond_8
    iget-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 323
    .line 324
    check-cast p2, Ljava/util/HashMap;

    .line 325
    .line 326
    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    const p2, 0x1070096

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    iget-object p0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 341
    .line 342
    array-length p2, p1

    .line 343
    new-array p2, p2, [F

    .line 344
    .line 345
    :goto_5
    array-length v1, p1

    .line 346
    if-ge v0, v1, :cond_9

    .line 347
    .line 348
    aget v1, p1, v0

    .line 349
    .line 350
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    invoke-virtual {p4, v1}, Landroid/util/Spline;->interpolate(F)F

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    aput v1, p2, v0

    .line 359
    .line 360
    add-int/lit8 v0, v0, 0x1

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_9
    check-cast p0, Ljava/util/HashMap;

    .line 364
    .line 365
    invoke-virtual {p0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    :cond_a
    return-void
.end method

.method public static autoBrightnessModeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->doze:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Unknown auto-brightness mode: "

    .line 19
    .line 20
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->idle:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static autoBrightnessPresetToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessSettingName;->dim:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Unknown auto-brightness preset value: "

    .line 20
    .line 21
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessSettingName;->bright:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 10
    .line 11
    check-cast v2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const-string v4, ", "

    .line 26
    .line 27
    const-string v5, "="

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, [F

    .line 54
    .line 55
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v3, 0x2

    .line 71
    if-le v2, v3, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    sub-int/2addr v2, v3

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_1
    const-string/jumbo v2, "}"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 97
    .line 98
    check-cast v1, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_2

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Ljava/util/Map$Entry;

    .line 119
    .line 120
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, [F

    .line 137
    .line 138
    invoke-static {v7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-le v1, v3, :cond_3

    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    sub-int/2addr v1, v3

    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v6, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string/jumbo v2, "mBrightnessLevelsNits= "

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsNits:[F

    .line 179
    .line 180
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p0, ", mBrightnessLevelsLuxMap= "

    .line 188
    .line 189
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p0, ", mBrightnessLevelsMap= "

    .line 196
    .line 197
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0
.end method
