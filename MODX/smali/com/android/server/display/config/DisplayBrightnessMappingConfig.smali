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

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 8
    invoke-virtual {v1}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "_"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    sget-object v1, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 22
    invoke-virtual {v1}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->DEFAULT_BRIGHTNESS_MAPPING_KEY:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 18
    iget-object p2, p2, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 20
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 23
    move-result p2

    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p2, :cond_6

    .line 27
    if-eqz p3, :cond_6

    .line 29
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_6

    .line 35
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 42
    move-result p2

    .line 43
    if-lez p2, :cond_6

    .line 45
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p2

    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_6

    .line 59
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Lcom/android/server/display/config/LuxToBrightnessMapping;

    .line 65
    iget-object v1, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 67
    invoke-virtual {v1}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 74
    move-result v1

    .line 75
    new-array v2, v1, [F

    .line 77
    new-array v3, v1, [F

    .line 79
    move v4, v0

    .line 80
    :goto_1
    if-ge v4, v1, :cond_0

    .line 82
    iget-object v5, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 84
    invoke-virtual {v5}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 87
    move-result-object v5

    .line 88
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 94
    iget-object v5, v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->second:Ljava/math/BigDecimal;

    .line 96
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 99
    move-result v5

    .line 100
    invoke-virtual {p4, v5}, Landroid/util/Spline;->interpolate(F)F

    .line 103
    move-result v5

    .line 104
    aput v5, v2, v4

    .line 106
    iget-object v5, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 108
    invoke-virtual {v5}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 111
    move-result-object v5

    .line 112
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 118
    iget-object v5, v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->first:Ljava/math/BigDecimal;

    .line 120
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 123
    move-result v5

    .line 124
    aput v5, v3, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_0
    if-eqz v1, :cond_5

    .line 131
    aget v1, v3, v0

    .line 133
    const/4 v4, 0x0

    .line 134
    cmpl-float v1, v1, v4

    .line 136
    if-nez v1, :cond_4

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    iget-object v4, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->mode:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 145
    if-nez v4, :cond_1

    .line 147
    sget-object v4, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 149
    invoke-virtual {v4}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 152
    move-result-object v4

    .line 153
    goto :goto_2

    .line 154
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 158
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v4, "_"

    .line 163
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object p3, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->setting:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 168
    if-nez p3, :cond_2

    .line 170
    sget-object p3, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 172
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 175
    move-result-object p3

    .line 176
    goto :goto_3

    .line 177
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 180
    move-result-object p3

    .line 181
    :goto_3
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p3

    .line 188
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 190
    check-cast v1, Ljava/util/HashMap;

    .line 192
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 200
    check-cast v1, Ljava/util/HashMap;

    .line 202
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 210
    check-cast v1, Ljava/util/HashMap;

    .line 212
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 217
    check-cast v1, Ljava/util/HashMap;

    .line 219
    invoke-virtual {v1, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    goto/16 :goto_0

    .line 224
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 226
    const-string p1, "A display brightness mapping with key "

    .line 228
    const-string p2, " already exists"

    .line 230
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 237
    throw p0

    .line 238
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 240
    const-string p1, "The first lux value in the display brightness mapping must be 0"

    .line 242
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 245
    throw p0

    .line 246
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 248
    const-string p1, "A display brightness mapping should not be empty"

    .line 250
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 253
    throw p0

    .line 254
    :cond_6
    iget-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 256
    check-cast p2, Ljava/util/HashMap;

    .line 258
    sget-object p3, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->DEFAULT_BRIGHTNESS_MAPPING_KEY:Ljava/lang/String;

    .line 260
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 263
    move-result p2

    .line 264
    if-eqz p2, :cond_7

    .line 266
    iget-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 268
    check-cast p2, Ljava/util/HashMap;

    .line 270
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 273
    move-result p2

    .line 274
    if-nez p2, :cond_a

    .line 276
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 279
    move-result-object p2

    .line 280
    const v1, 0x1070093

    .line 283
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 286
    move-result-object p2

    .line 287
    invoke-static {p2}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 290
    move-result-object p2

    .line 291
    iput-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsNits:[F

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 296
    move-result-object p2

    .line 297
    const v1, 0x1070098

    .line 300
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 303
    move-result-object p2

    .line 304
    array-length v1, p2

    .line 305
    add-int/lit8 v1, v1, 0x1

    .line 307
    new-array v1, v1, [F

    .line 309
    move v2, v0

    .line 310
    :goto_4
    array-length v3, p2

    .line 311
    if-ge v2, v3, :cond_8

    .line 313
    add-int/lit8 v3, v2, 0x1

    .line 315
    aget v2, p2, v2

    .line 317
    int-to-float v2, v2

    .line 318
    aput v2, v1, v3

    .line 320
    move v2, v3

    .line 321
    goto :goto_4

    .line 322
    :cond_8
    iget-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 324
    check-cast p2, Ljava/util/HashMap;

    .line 326
    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 332
    move-result-object p1

    .line 333
    const p2, 0x1070096

    .line 336
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 339
    move-result-object p1

    .line 340
    iget-object p0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 342
    array-length p2, p1

    .line 343
    new-array p2, p2, [F

    .line 345
    :goto_5
    array-length v1, p1

    .line 346
    if-ge v0, v1, :cond_9

    .line 348
    aget v1, p1, v0

    .line 350
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 353
    move-result v1

    .line 354
    invoke-virtual {p4, v1}, Landroid/util/Spline;->interpolate(F)F

    .line 357
    move-result v1

    .line 358
    aput v1, p2, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    .line 362
    goto :goto_5

    .line 363
    :cond_9
    check-cast p0, Ljava/util/HashMap;

    .line 365
    invoke-virtual {p0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_a
    return-void
.end method

.method public static autoBrightnessModeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 9
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->doze:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string v1, "Unknown auto-brightness mode: "

    .line 20
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0

    .line 28
    :cond_1
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->idle:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

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

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 10
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessSettingName;->dim:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string v1, "Unknown auto-brightness preset value: "

    .line 21
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw v0

    .line 29
    :cond_1
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessSettingName;->bright:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

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

    .line 3
    const-string/jumbo v1, "{"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    .line 11
    check-cast v2, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 25
    const-string v4, ", "

    .line 27
    const-string v5, "="

    .line 29
    if-eqz v3, :cond_0

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, [F

    .line 55
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 69
    move-result v2

    .line 70
    const/4 v3, 0x2

    .line 71
    if-le v2, v3, :cond_1

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 76
    move-result v2

    .line 77
    sub-int/2addr v2, v3

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 81
    move-result v6

    .line 82
    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    const-string/jumbo v2, "}"

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    .line 98
    check-cast v1, Ljava/util/HashMap;

    .line 100
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object v1

    .line 108
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_2

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Ljava/lang/String;

    .line 126
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    move-result-object v7

    .line 136
    check-cast v7, [F

    .line 138
    invoke-static {v7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 152
    move-result v1

    .line 153
    if-le v1, v3, :cond_3

    .line 155
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 158
    move-result v1

    .line 159
    sub-int/2addr v1, v3

    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 163
    move-result v3

    .line 164
    invoke-virtual {v6, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 167
    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    const-string/jumbo v2, "mBrightnessLevelsNits= "

    .line 175
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsNits:[F

    .line 180
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string p0, ", mBrightnessLevelsLuxMap= "

    .line 189
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    const-string p0, ", mBrightnessLevelsMap= "

    .line 197
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object p0

    .line 207
    return-object p0
.end method
