.class public final Lcom/android/server/display/color/ColorDisplayService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

.field public static final MATRIX_GRAYSCALE:[F

.field public static final MATRIX_IDENTITY:[F

.field public static final MATRIX_INVERT_COLOR:[F


# instance fields
.field public final mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

.field public mBootCompleted:Z

.field public final mCctTintApplierLock:Ljava/lang/Object;

.field public mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

.field public mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

.field public mCurrentUser:I

.field final mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

.field public final mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

.field final mHandler:Landroid/os/Handler;

.field public mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

.field public final mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

.field public final mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

.field public mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method public static -$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 5
    .line 6
    .line 7
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, v0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [F

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    array-length v3, v1

    .line 35
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getMatrix()[F

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {v0, p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    sget-object p2, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    sget-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 59
    .line 60
    :cond_2
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v3, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    .line 65
    .line 66
    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 73
    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    aget-object v1, v1, p2

    .line 77
    .line 78
    check-cast v1, [F

    .line 79
    .line 80
    array-length v4, v1

    .line 81
    new-array v4, v4, [F

    .line 82
    .line 83
    iput-object v4, v3, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    .line 84
    .line 85
    array-length v4, v1

    .line 86
    new-array v4, v4, [F

    .line 87
    .line 88
    iput-object v4, v3, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    .line 89
    .line 90
    :goto_1
    array-length v4, v1

    .line 91
    if-ge p2, v4, :cond_3

    .line 92
    .line 93
    iget-object v4, v3, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->min:[F

    .line 94
    .line 95
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 96
    .line 97
    .line 98
    aput v5, v4, p2

    .line 99
    .line 100
    iget-object v4, v3, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->max:[F

    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    aput v5, v4, p2

    .line 104
    .line 105
    add-int/lit8 p2, p2, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iput-object v3, p1, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getTransitionDurationMilliseconds()J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const p2, 0x10c000d

    .line 122
    .line 123
    .line 124
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    .line 130
    .line 131
    new-instance p0, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;

    .line 132
    .line 133
    invoke-direct {p0, v0, p1}, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    .line 138
    .line 139
    new-instance p0, Lcom/android/server/display/color/ColorDisplayService$3;

    .line 140
    .line 141
    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/display/color/ColorDisplayService$3;-><init>(Lcom/android/server/display/color/TintController;[FLcom/android/server/display/color/DisplayTransformManager;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    throw p0
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v2, "COLOR DISPLAY MANAGER dumpsys (color_display)"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "Night display:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "    Activated: "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "    Color temp: "

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 61
    .line 62
    iget-object v4, v3, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {v3, v4}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const-string v2, "    Not available"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    const-string v2, "Global saturation:"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v3, "    Activated: "

    .line 111
    .line 112
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v3, v0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    const-string v2, "    Not available"

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    iget-object v2, v0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    .line 138
    .line 139
    iget-object v3, v2, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter v3

    .line 142
    :try_start_0
    const-string v4, "App Saturation: "

    .line 143
    .line 144
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v4, v2, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    .line 148
    .line 149
    check-cast v4, Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_3

    .line 156
    .line 157
    const-string v2, "    No packages"

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    monitor-exit v3

    .line 163
    goto :goto_4

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto/16 :goto_8

    .line 166
    .line 167
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 168
    .line 169
    iget-object v5, v2, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    .line 170
    .line 171
    check-cast v5, Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_5

    .line 192
    .line 193
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    check-cast v5, Ljava/lang/String;

    .line 198
    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v7, "    "

    .line 205
    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v7, ":"

    .line 213
    .line 214
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v6, v2, Lcom/android/server/display/color/AppSaturationController;->mAppsMap:Ljava/util/Map;

    .line 225
    .line 226
    check-cast v6, Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Landroid/util/SparseArray;

    .line 233
    .line 234
    const/4 v6, 0x0

    .line 235
    :goto_3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-ge v6, v7, :cond_4

    .line 240
    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v8, "        "

    .line 247
    .line 248
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v8, ":"

    .line 259
    .line 260
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    check-cast v7, Lcom/android/server/display/color/AppSaturationController$SaturationController;

    .line 275
    .line 276
    invoke-static {v7, v1}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->-$$Nest$mdump(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/io/PrintWriter;)V

    .line 277
    .line 278
    .line 279
    add-int/lit8 v6, v6, 0x1

    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_4
    const-string v2, "Display white balance:"

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v2, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_7

    .line 299
    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v3, "    Activated: "

    .line 303
    .line 304
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object v3, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 308
    .line 309
    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v2, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 324
    .line 325
    const-string v3, "    mTransitionDurationDecrease = "

    .line 326
    .line 327
    const-string v4, "    mTransitionDurationIncrease = "

    .line 328
    .line 329
    const-string v5, "    mTransitionDuration = "

    .line 330
    .line 331
    const-string v6, "    mIsAllowed = "

    .line 332
    .line 333
    const-string v7, "    mMatrixDisplayWhiteBalance = "

    .line 334
    .line 335
    const-string v8, "    mDisplayColorSpaceRGB XYZ-to-RGB = "

    .line 336
    .line 337
    const-string v9, "    mChromaticAdaptationMatrix = "

    .line 338
    .line 339
    const-string v10, "    mDisplayColorSpaceRGB RGB-to-XYZ = "

    .line 340
    .line 341
    const-string v11, "    mCurrentColorTemperatureXYZ = "

    .line 342
    .line 343
    const-string v12, "    mAppliedCct = "

    .line 344
    .line 345
    const-string v13, "    mTargetCct = "

    .line 346
    .line 347
    const-string v14, "    mCurrentColorTemperature = "

    .line 348
    .line 349
    const-string v15, "    mDisplayNominalWhiteCct = "

    .line 350
    .line 351
    const-string v0, "    mTemperatureDefault = "

    .line 352
    .line 353
    move-object/from16 v16, v3

    .line 354
    .line 355
    const-string v3, "    mTemperatureMax = "

    .line 356
    .line 357
    move-object/from16 v17, v4

    .line 358
    .line 359
    const-string v4, "    mTemperatureMin = "

    .line 360
    .line 361
    move-object/from16 v18, v5

    .line 362
    .line 363
    const-string v5, "    mSetUp = "

    .line 364
    .line 365
    move-object/from16 v19, v6

    .line 366
    .line 367
    iget-object v6, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    .line 368
    .line 369
    monitor-enter v6

    .line 370
    move-object/from16 v20, v7

    .line 371
    .line 372
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-boolean v5, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 378
    .line 379
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    iget-boolean v5, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 390
    .line 391
    if-nez v5, :cond_6

    .line 392
    .line 393
    monitor-exit v6

    .line 394
    goto/16 :goto_6

    .line 395
    .line 396
    :catchall_1
    move-exception v0

    .line 397
    goto/16 :goto_5

    .line 398
    .line 399
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    iget v4, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    .line 405
    .line 406
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 422
    .line 423
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget v0, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    .line 439
    .line 440
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    .line 456
    .line 457
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    .line 473
    .line 474
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    .line 490
    .line 491
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    iget v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    .line 507
    .line 508
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 524
    .line 525
    const/4 v4, 0x3

    .line 526
    invoke-static {v4, v3}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    iget-object v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 546
    .line 547
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    invoke-static {v4, v3}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    iget-object v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 571
    .line 572
    invoke-static {v4, v3}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    .line 587
    .line 588
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    iget-object v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 592
    .line 593
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-static {v4, v3}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    move-object/from16 v3, v20

    .line 614
    .line 615
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    iget-object v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    .line 619
    .line 620
    const/4 v4, 0x4

    .line 621
    invoke-static {v4, v3}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    move-object/from16 v3, v19

    .line 638
    .line 639
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    iget-boolean v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAllowed:Z

    .line 643
    .line 644
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    .line 655
    .line 656
    move-object/from16 v3, v18

    .line 657
    .line 658
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    iget-wide v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDuration:J

    .line 662
    .line 663
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    move-object/from16 v3, v17

    .line 676
    .line 677
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    iget-wide v3, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationIncrease:J

    .line 681
    .line 682
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    move-object/from16 v3, v16

    .line 695
    .line 696
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    iget-wide v2, v2, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationDecrease:J

    .line 700
    .line 701
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    monitor-exit v6

    .line 712
    goto :goto_6

    .line 713
    :goto_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 714
    throw v0

    .line 715
    :cond_7
    const-string v0, "    Not available"

    .line 716
    .line 717
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    :goto_6
    const-string v0, "Reduce bright colors:"

    .line 721
    .line 722
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    move-object/from16 v0, p0

    .line 726
    .line 727
    iget-object v2, v0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 728
    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    .line 735
    .line 736
    invoke-static {v3}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    .line 737
    .line 738
    .line 739
    move-result v2

    .line 740
    if-eqz v2, :cond_8

    .line 741
    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    const-string v3, "    Activated: "

    .line 745
    .line 746
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    iget-object v3, v0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 750
    .line 751
    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 752
    .line 753
    .line 754
    move-result v3

    .line 755
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    iget-object v2, v0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 766
    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    .line 768
    .line 769
    const-string v4, "    mStrength = "

    .line 770
    .line 771
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    iget v2, v2, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mStrength:I

    .line 775
    .line 776
    invoke-static {v3, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 777
    .line 778
    .line 779
    goto :goto_7

    .line 780
    :cond_8
    const-string v2, "    Not available"

    .line 781
    .line 782
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 786
    .line 787
    const-string v3, "Color mode: "

    .line 788
    .line 789
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    return-void

    .line 807
    :goto_8
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 808
    throw v0
.end method

.method public static -$$Nest$mgetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 10
    .line 11
    const-string/jumbo v2, "night_display_custom_end_time"

    .line 12
    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const v0, 0x10e0074

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :cond_0
    new-instance p0, Landroid/hardware/display/Time;

    .line 37
    .line 38
    div-int/lit16 v0, v0, 0x3e8

    .line 39
    .line 40
    int-to-long v0, v0

    .line 41
    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method public static -$$Nest$mgetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 10
    .line 11
    const-string/jumbo v2, "night_display_custom_start_time"

    .line 12
    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const v0, 0x10e0075

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :cond_0
    new-instance p0, Landroid/hardware/display/Time;

    .line 37
    .line 38
    div-int/lit16 v0, v0, 0x3e8

    .line 39
    .line 40
    int-to-long v0, v0

    .line 41
    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method public static -$$Nest$mgetNightDisplayLastActivatedTimeSetting(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-string/jumbo v1, "night_display_last_activated_time"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-static {p0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    goto :goto_0

    .line 48
    :catch_1
    :cond_0
    sget-object p0, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    .line 49
    .line 50
    :goto_0
    return-object p0
.end method

.method public static -$$Nest$misDeviceColorManagedInternal(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "android.ui.ISurfaceComposer"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :try_start_0
    sget-object v2, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    .line 27
    .line 28
    const/16 v3, 0x406

    .line 29
    .line 30
    invoke-interface {v2, v3, p0, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    .line 34
    .line 35
    .line 36
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception v2

    .line 47
    :try_start_1
    const-string v3, "DisplayTransformManager"

    .line 48
    .line 49
    const-string v4, "Failed to query wide color support"

    .line 50
    .line 51
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    return v1

    .line 56
    :goto_2
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    .line 61
    .line 62
    throw v1
.end method

.method public static -$$Nest$msetColorModeInternal(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string/jumbo v1, "display_color_mode"

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 19
    .line 20
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "Invalid colorMode: "

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    .line 17
    .line 18
    new-array v1, v0, [F

    .line 19
    .line 20
    fill-array-data v1, :array_0

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    .line 24
    .line 25
    new-array v0, v0, [F

    .line 26
    .line 27
    fill-array-data v0, :array_1

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 34
    .line 35
    :array_1
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 10
    .line 11
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;-><init>(Landroid/hardware/display/DisplayManagerInternal;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 23
    .line 24
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 30
    .line 31
    new-instance p1, Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/android/server/display/color/GlobalSaturationTintController;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 37
    .line 38
    new-instance p1, Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 44
    .line 45
    new-instance p1, Lcom/android/server/display/color/AppSaturationController;

    .line 46
    .line 47
    invoke-direct {p1}, Lcom/android/server/display/color/AppSaturationController;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    .line 51
    .line 52
    const/16 p1, -0x2710

    .line 53
    .line 54
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 58
    .line 59
    new-instance p1, Ljava/lang/Object;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCctTintApplierLock:Ljava/lang/Object;

    .line 65
    .line 66
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$TintHandler;

    .line 67
    .line 68
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, p0, v0}, Lcom/android/server/display/color/ColorDisplayService$TintHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    return-void
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {v0, v1, v2, v3, p0}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-wide/16 v0, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_0
    return-object p0
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {v0, v1, v2, v3, p0}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-wide/16 v0, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_0
    return-object p0
.end method


# virtual methods
.method public cancelAllAnimators()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final getColorModeInternal()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 18
    .line 19
    const-string v3, "accessibility_display_daltonizer_enabled"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 38
    .line 39
    const-string v3, "accessibility_display_inversion_enabled"

    .line 40
    .line 41
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const v2, 0x10e001a

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ltz v1, :cond_1

    .line 63
    .line 64
    return v1

    .line 65
    :cond_1
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 66
    .line 67
    const-string/jumbo v2, "display_color_mode"

    .line 68
    .line 69
    .line 70
    const/4 v3, -0x1

    .line 71
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v3, :cond_6

    .line 76
    .line 77
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x1

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    const-string/jumbo v0, "persist.sys.sf.color_saturation"

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v2, "1.0"

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    xor-int/2addr v0, v1

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const/4 v2, 0x2

    .line 103
    if-ne v0, v1, :cond_3

    .line 104
    .line 105
    move v0, v2

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    if-ne v0, v2, :cond_4

    .line 108
    .line 109
    const/4 v0, 0x3

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const/16 v1, 0x100

    .line 112
    .line 113
    if-lt v0, v1, :cond_5

    .line 114
    .line 115
    const/16 v1, 0x1ff

    .line 116
    .line 117
    if-gt v0, v1, :cond_5

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    move v0, v3

    .line 121
    :cond_6
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_8

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const v2, 0x107011f

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eq v0, v3, :cond_7

    .line 143
    .line 144
    array-length v2, v1

    .line 145
    if-le v2, v0, :cond_7

    .line 146
    .line 147
    aget v2, v1, v0

    .line 148
    .line 149
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_7

    .line 154
    .line 155
    aget v3, v1, v0

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const v0, 0x10700a0

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    array-length v0, p0

    .line 174
    if-lez v0, :cond_9

    .line 175
    .line 176
    aget v3, p0, v4

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_8
    move v3, v0

    .line 180
    :cond_9
    :goto_2
    return v3
.end method

.method public final getNightDisplayAutoModeInternal()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "night_display_auto_mode"

    .line 19
    .line 20
    .line 21
    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const v0, 0x10e0073

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :cond_1
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    if-eq v0, p0, :cond_2

    .line 48
    .line 49
    const/4 p0, 0x2

    .line 50
    if-eq v0, p0, :cond_2

    .line 51
    .line 52
    const-string p0, "Invalid autoMode: "

    .line 53
    .line 54
    const-string v1, "ColorDisplayService"

    .line 55
    .line 56
    invoke-static {v0, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    :cond_2
    return v0
.end method

.method public final isColorModeAvailable(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const v0, 0x10700a0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    array-length v1, p0

    .line 20
    move v2, v0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    .line 23
    aget v3, p0, v2

    .line 24
    .line 25
    if-ne v3, p1, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v0
.end method

.method public final isDisplayWhiteBalanceSettingEnabled()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const v3, 0x1110148

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 33
    .line 34
    const-string/jumbo v3, "display_white_balance_enabled"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v3, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/4 v0, 0x1

    .line 42
    if-ne p0, v0, :cond_1

    .line 43
    .line 44
    move v2, v0

    .line 45
    :cond_1
    return v2
.end method

.method public final onAccessibilityDaltonizerChanged()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 25
    .line 26
    const-string v3, "accessibility_display_daltonizer_enabled"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    :cond_1
    const/4 v1, -0x1

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 40
    .line 41
    const-string v3, "accessibility_display_daltonizer"

    .line 42
    .line 43
    const/16 v4, 0xc

    .line 44
    .line 45
    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v2, v1

    .line 51
    :goto_0
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableColorCorrectionSaturation()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    const-string v3, "accessibility_display_daltonizer_saturation_level"

    .line 58
    .line 59
    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 60
    .line 61
    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v0, v1

    .line 67
    :goto_1
    const-class v3, Lcom/android/server/display/color/DisplayTransformManager;

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 74
    .line 75
    const/16 v3, 0xc8

    .line 76
    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    .line 80
    .line 81
    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(II)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v3, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(II)V

    .line 93
    .line 94
    .line 95
    :goto_2
    return-void
.end method

.method public final onAccessibilityInversionChanged()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 25
    .line 26
    const-string v2, "accessibility_display_inversion_enabled"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_0
    const/16 v1, 0x12c

    .line 40
    .line 41
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 9
    .line 10
    const/16 v1, -0x2710

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onDisplayColorModeChanged(I)V
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x2

    .line 26
    const-class v6, Lcom/android/server/display/color/DisplayTransformManager;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, v6}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/display/color/DisplayTransformManager;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    if-eq p1, v5, :cond_1

    .line 44
    .line 45
    move v2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v2, v3

    .line 48
    :goto_0
    invoke-virtual {v1, v7, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/server/display/color/DisplayTransformManager;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getMatrix()[F

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v6, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 69
    .line 70
    if-nez v6, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v6, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const/high16 v6, 0x3f800000    # 1.0f

    .line 81
    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    invoke-static {v6}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    if-ne p1, v4, :cond_5

    .line 92
    .line 93
    const p1, 0x3f8ccccd    # 1.1f

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 97
    .line 98
    .line 99
    invoke-static {v3, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    if-ne p1, v5, :cond_6

    .line 104
    .line 105
    invoke-static {v6}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    const/4 v3, 0x3

    .line 113
    if-ne p1, v3, :cond_7

    .line 114
    .line 115
    invoke-static {v6}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 116
    .line 117
    .line 118
    invoke-static {v5, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_7
    const/16 v3, 0x100

    .line 123
    .line 124
    if-lt p1, v3, :cond_8

    .line 125
    .line 126
    const/16 v3, 0x1ff

    .line 127
    .line 128
    if-gt p1, v3, :cond_8

    .line 129
    .line 130
    invoke-static {v6}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 131
    .line 132
    .line 133
    invoke-static {p1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    .line 134
    .line 135
    .line 136
    :cond_8
    :goto_2
    const/16 p1, 0x64

    .line 137
    .line 138
    invoke-virtual {v2, p1, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 139
    .line 140
    .line 141
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const/4 v0, 0x0

    .line 146
    invoke-interface {p1, v0}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catch_0
    move-exception p1

    .line 151
    const-string v0, "DisplayTransformManager"

    .line 152
    .line 153
    const-string v1, "Could not update configuration"

    .line 154
    .line 155
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    :goto_3
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_9

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 171
    .line 172
    .line 173
    :cond_9
    return-void
.end method

.method public final onNightDisplayAutoModeChanged(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onNightDisplayAutoModeChanged: autoMode="

    .line 2
    .line 3
    .line 4
    const-string v1, "ColorDisplayService"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 39
    .line 40
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 41
    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStart()V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method public final onReduceBrightColorsActivationChanged()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 17
    .line 18
    const-string/jumbo v2, "reduce_bright_colors_activated"

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    move v3, v1

    .line 30
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onReduceBrightColorsStrengthLevelChanged()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "reduce_bright_colors_level"

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v0, v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v1, 0x10e011d

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setMatrix(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$BinderService;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "color_display"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 15
    .line 16
    .line 17
    const-class v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/android/server/display/color/DisplayTransformManager;-><init>()V

    .line 25
    .line 26
    .line 27
    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onUserChanged(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 10
    .line 11
    const/16 v2, -0x2710

    .line 12
    .line 13
    if-eq v1, v2, :cond_6

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 21
    .line 22
    .line 23
    iput-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    .line 28
    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v4, "tearDown: currentUser="

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 40
    .line 41
    const-string v5, "ColorDisplayService"

    .line 42
    .line 43
    invoke-static {v1, v4, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 68
    .line 69
    invoke-virtual {v4, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 80
    .line 81
    .line 82
    iput-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 83
    .line 84
    :cond_2
    iget-object v1, v4, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 89
    .line 90
    .line 91
    iput-object v3, v4, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v1, v4}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 106
    .line 107
    iget-object v4, v1, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    .line 112
    .line 113
    .line 114
    iput-object v3, v1, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 115
    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    iput-object v3, v4, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 132
    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    invoke-virtual {v4, v3}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_0
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 152
    .line 153
    if-eq p1, v2, :cond_8

    .line 154
    .line 155
    const-string/jumbo v1, "user_setup_complete"

    .line 156
    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    const/4 v3, 0x1

    .line 164
    if-ne p1, v3, :cond_7

    .line 165
    .line 166
    iget-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    .line 167
    .line 168
    if-eqz p1, :cond_8

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_7
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$1;

    .line 175
    .line 176
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 177
    .line 178
    invoke-direct {p1, p0, v3, v0}, Lcom/android/server/display/color/ColorDisplayService$1;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 179
    .line 180
    .line 181
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 182
    .line 183
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 188
    .line 189
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 190
    .line 191
    invoke-virtual {v0, p1, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    .line 193
    .line 194
    :cond_8
    :goto_1
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 v0, -0x2710

    .line 17
    .line 18
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setAppSaturationLevelInternal(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/display/color/AppSaturationController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {v0, p0, p3}, Lcom/android/server/display/color/AppSaturationController;->getSaturationControllerLocked(ILjava/lang/String;)Lcom/android/server/display/color/AppSaturationController$SaturationController;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/16 p3, 0x64

    .line 13
    .line 14
    if-ne p1, p3, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p3, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 32
    .line 33
    check-cast p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    :goto_1
    monitor-exit v1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final setUp()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v3, 0x9

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x1

    .line 7
    const-string v7, "ColorDisplayService"

    .line 8
    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v9, "setUp: currentUser="

    .line 12
    .line 13
    .line 14
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 18
    .line 19
    invoke-static {v8, v9, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v7, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 23
    .line 24
    if-nez v7, :cond_0

    .line 25
    .line 26
    new-instance v7, Lcom/android/server/display/color/ColorDisplayService$2;

    .line 27
    .line 28
    iget-object v8, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-direct {v7, v0, v8}, Lcom/android/server/display/color/ColorDisplayService$2;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V

    .line 31
    .line 32
    .line 33
    iput-object v7, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 34
    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string/jumbo v8, "night_display_activated"

    .line 44
    .line 45
    .line 46
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 51
    .line 52
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 53
    .line 54
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v8, "night_display_color_temperature"

    .line 58
    .line 59
    .line 60
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 65
    .line 66
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 67
    .line 68
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v8, "night_display_auto_mode"

    .line 72
    .line 73
    .line 74
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 79
    .line 80
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 81
    .line 82
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v8, "night_display_custom_start_time"

    .line 86
    .line 87
    .line 88
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 93
    .line 94
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 95
    .line 96
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v8, "night_display_custom_end_time"

    .line 100
    .line 101
    .line 102
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 107
    .line 108
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 109
    .line 110
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 111
    .line 112
    .line 113
    const-string/jumbo v8, "display_color_mode"

    .line 114
    .line 115
    .line 116
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 121
    .line 122
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 123
    .line 124
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 125
    .line 126
    .line 127
    const-string v8, "accessibility_display_inversion_enabled"

    .line 128
    .line 129
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 134
    .line 135
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 136
    .line 137
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 138
    .line 139
    .line 140
    const-string v8, "accessibility_display_daltonizer_enabled"

    .line 141
    .line 142
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 147
    .line 148
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 149
    .line 150
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 151
    .line 152
    .line 153
    const-string v8, "accessibility_display_daltonizer"

    .line 154
    .line 155
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 160
    .line 161
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 162
    .line 163
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 164
    .line 165
    .line 166
    const-string/jumbo v8, "display_white_balance_enabled"

    .line 167
    .line 168
    .line 169
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 174
    .line 175
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 176
    .line 177
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 178
    .line 179
    .line 180
    const-string/jumbo v8, "reduce_bright_colors_activated"

    .line 181
    .line 182
    .line 183
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 188
    .line 189
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 190
    .line 191
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    .line 193
    .line 194
    const-string/jumbo v8, "reduce_bright_colors_level"

    .line 195
    .line 196
    .line 197
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 202
    .line 203
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 204
    .line 205
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableColorCorrectionSaturation()Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-eqz v8, :cond_1

    .line 213
    .line 214
    const-string v8, "accessibility_display_daltonizer_saturation_level"

    .line 215
    .line 216
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Lcom/android/server/display/color/ColorDisplayService$2;

    .line 221
    .line 222
    iget v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 223
    .line 224
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 225
    .line 226
    .line 227
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    .line 228
    .line 229
    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    const/4 v8, 0x0

    .line 242
    iput-object v8, v0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 243
    .line 244
    const v9, 0x10700d5

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    if-nez v9, :cond_2

    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_2
    const v10, 0x10700d6

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    if-nez v7, :cond_3

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_3
    array-length v10, v9

    .line 265
    array-length v11, v7

    .line 266
    if-eq v10, v11, :cond_4

    .line 267
    .line 268
    const-string v7, "ColorDisplayService"

    .line 269
    .line 270
    const-string v9, "Number of composition color spaces doesn\'t match specified color modes"

    .line 271
    .line 272
    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_4
    new-instance v10, Landroid/util/SparseIntArray;

    .line 277
    .line 278
    array-length v11, v9

    .line 279
    invoke-direct {v10, v11}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 280
    .line 281
    .line 282
    iput-object v10, v0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 283
    .line 284
    move v10, v5

    .line 285
    :goto_0
    array-length v11, v9

    .line 286
    if-ge v10, v11, :cond_5

    .line 287
    .line 288
    iget-object v11, v0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 289
    .line 290
    aget v12, v9, v10

    .line 291
    .line 292
    aget v13, v7, v10

    .line 293
    .line 294
    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 295
    .line 296
    .line 297
    add-int/2addr v10, v6

    .line 298
    goto :goto_0

    .line 299
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    invoke-virtual {v0, v7}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 304
    .line 305
    .line 306
    const-class v7, Lcom/android/server/display/color/DisplayTransformManager;

    .line 307
    .line 308
    invoke-virtual {v0, v7}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    check-cast v7, Lcom/android/server/display/color/DisplayTransformManager;

    .line 313
    .line 314
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 315
    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-virtual {v9, v10}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    .line 321
    .line 322
    .line 323
    move-result v9

    .line 324
    if-eqz v9, :cond_7

    .line 325
    .line 326
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 327
    .line 328
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    invoke-virtual {v9, v8, v10}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 336
    .line 337
    .line 338
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    const-string/jumbo v11, "persist.sys.sf.native_mode"

    .line 348
    .line 349
    .line 350
    invoke-static {v11, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    if-eq v11, v6, :cond_6

    .line 355
    .line 356
    move v11, v6

    .line 357
    goto :goto_2

    .line 358
    :cond_6
    move v11, v5

    .line 359
    :goto_2
    invoke-virtual {v9, v10, v11}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 360
    .line 361
    .line 362
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 363
    .line 364
    invoke-virtual {v9}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    .line 365
    .line 366
    .line 367
    move-result v10

    .line 368
    invoke-virtual {v9, v10}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    .line 372
    .line 373
    .line 374
    move-result v9

    .line 375
    invoke-virtual {v0, v9}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    .line 376
    .line 377
    .line 378
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 379
    .line 380
    invoke-virtual {v9}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    if-eqz v9, :cond_7

    .line 385
    .line 386
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 387
    .line 388
    invoke-virtual {v9}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    .line 389
    .line 390
    .line 391
    move-result v10

    .line 392
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 397
    .line 398
    .line 399
    move-result-object v11

    .line 400
    invoke-virtual {v9, v10, v11}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 401
    .line 402
    .line 403
    :cond_7
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 404
    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 406
    .line 407
    .line 408
    move-result-object v10

    .line 409
    invoke-virtual {v9, v10}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    .line 410
    .line 411
    .line 412
    move-result v9

    .line 413
    if-eqz v9, :cond_1a

    .line 414
    .line 415
    iget-object v9, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 416
    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 418
    .line 419
    .line 420
    move-result-object v10

    .line 421
    iput-boolean v5, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 422
    .line 423
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    const v11, 0x1110149

    .line 428
    .line 429
    .line 430
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 431
    .line 432
    .line 433
    move-result v11

    .line 434
    iput-boolean v11, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAllowed:Z

    .line 435
    .line 436
    iget-object v11, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 437
    .line 438
    invoke-virtual {v11, v5}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayNativePrimaries(I)Landroid/view/SurfaceControl$DisplayPrimaries;

    .line 439
    .line 440
    .line 441
    move-result-object v11

    .line 442
    if-eqz v11, :cond_8

    .line 443
    .line 444
    iget-object v12, v11, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    .line 445
    .line 446
    if-eqz v12, :cond_8

    .line 447
    .line 448
    iget-object v13, v11, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    .line 449
    .line 450
    if-eqz v13, :cond_8

    .line 451
    .line 452
    iget-object v14, v11, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    .line 453
    .line 454
    if-eqz v14, :cond_8

    .line 455
    .line 456
    iget-object v11, v11, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    .line 457
    .line 458
    if-nez v11, :cond_9

    .line 459
    .line 460
    :cond_8
    move-object/from16 v22, v7

    .line 461
    .line 462
    goto :goto_3

    .line 463
    :cond_9
    iget v8, v12, Landroid/view/SurfaceControl$CieXyz;->X:F

    .line 464
    .line 465
    iget v15, v12, Landroid/view/SurfaceControl$CieXyz;->Y:F

    .line 466
    .line 467
    iget v12, v12, Landroid/view/SurfaceControl$CieXyz;->Z:F

    .line 468
    .line 469
    iget v1, v13, Landroid/view/SurfaceControl$CieXyz;->X:F

    .line 470
    .line 471
    iget v4, v13, Landroid/view/SurfaceControl$CieXyz;->Y:F

    .line 472
    .line 473
    iget v13, v13, Landroid/view/SurfaceControl$CieXyz;->Z:F

    .line 474
    .line 475
    iget v2, v14, Landroid/view/SurfaceControl$CieXyz;->X:F

    .line 476
    .line 477
    iget v6, v14, Landroid/view/SurfaceControl$CieXyz;->Y:F

    .line 478
    .line 479
    iget v14, v14, Landroid/view/SurfaceControl$CieXyz;->Z:F

    .line 480
    .line 481
    move-object/from16 v22, v7

    .line 482
    .line 483
    new-array v7, v3, [F

    .line 484
    .line 485
    aput v8, v7, v5

    .line 486
    .line 487
    const/4 v8, 0x1

    .line 488
    aput v15, v7, v8

    .line 489
    .line 490
    const/4 v8, 0x2

    .line 491
    aput v12, v7, v8

    .line 492
    .line 493
    const/4 v8, 0x3

    .line 494
    aput v1, v7, v8

    .line 495
    .line 496
    const/4 v1, 0x4

    .line 497
    aput v4, v7, v1

    .line 498
    .line 499
    const/4 v1, 0x5

    .line 500
    aput v13, v7, v1

    .line 501
    .line 502
    const/4 v1, 0x6

    .line 503
    aput v2, v7, v1

    .line 504
    .line 505
    const/4 v1, 0x7

    .line 506
    aput v6, v7, v1

    .line 507
    .line 508
    const/16 v1, 0x8

    .line 509
    .line 510
    aput v14, v7, v1

    .line 511
    .line 512
    iget v1, v11, Landroid/view/SurfaceControl$CieXyz;->X:F

    .line 513
    .line 514
    iget v2, v11, Landroid/view/SurfaceControl$CieXyz;->Y:F

    .line 515
    .line 516
    iget v4, v11, Landroid/view/SurfaceControl$CieXyz;->Z:F

    .line 517
    .line 518
    const/4 v6, 0x3

    .line 519
    new-array v8, v6, [F

    .line 520
    .line 521
    aput v1, v8, v5

    .line 522
    .line 523
    const/4 v1, 0x1

    .line 524
    aput v2, v8, v1

    .line 525
    .line 526
    const/4 v1, 0x2

    .line 527
    aput v4, v8, v1

    .line 528
    .line 529
    new-instance v1, Landroid/graphics/ColorSpace$Rgb;

    .line 530
    .line 531
    const-string v17, "Display Color Space"

    .line 532
    .line 533
    const-wide v20, 0x40019999a0000000L    # 2.200000047683716

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    move-object/from16 v16, v1

    .line 539
    .line 540
    move-object/from16 v18, v7

    .line 541
    .line 542
    move-object/from16 v19, v8

    .line 543
    .line 544
    invoke-direct/range {v16 .. v21}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FD)V

    .line 545
    .line 546
    .line 547
    move-object v8, v1

    .line 548
    :goto_3
    if-nez v8, :cond_c

    .line 549
    .line 550
    const-string v1, "ColorDisplayService"

    .line 551
    .line 552
    const-string v2, "Failed to get display color space from SurfaceControl, trying res"

    .line 553
    .line 554
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    const v1, 0x10700e1

    .line 558
    .line 559
    .line 560
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    new-array v2, v3, [F

    .line 565
    .line 566
    const/4 v4, 0x3

    .line 567
    new-array v6, v4, [F

    .line 568
    .line 569
    move v7, v5

    .line 570
    :goto_4
    if-ge v7, v3, :cond_a

    .line 571
    .line 572
    aget-object v8, v1, v7

    .line 573
    .line 574
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 575
    .line 576
    .line 577
    move-result v8

    .line 578
    aput v8, v2, v7

    .line 579
    .line 580
    const/4 v8, 0x1

    .line 581
    add-int/2addr v7, v8

    .line 582
    goto :goto_4

    .line 583
    :cond_a
    const/4 v8, 0x1

    .line 584
    move v7, v5

    .line 585
    :goto_5
    if-ge v7, v4, :cond_b

    .line 586
    .line 587
    add-int v4, v3, v7

    .line 588
    .line 589
    aget-object v4, v1, v4

    .line 590
    .line 591
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    aput v4, v6, v7

    .line 596
    .line 597
    add-int/2addr v7, v8

    .line 598
    const/4 v4, 0x3

    .line 599
    goto :goto_5

    .line 600
    :cond_b
    new-instance v8, Landroid/graphics/ColorSpace$Rgb;

    .line 601
    .line 602
    const-string v17, "Display Color Space"

    .line 603
    .line 604
    const-wide v20, 0x40019999a0000000L    # 2.200000047683716

    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    move-object/from16 v16, v8

    .line 610
    .line 611
    move-object/from16 v18, v2

    .line 612
    .line 613
    move-object/from16 v19, v6

    .line 614
    .line 615
    invoke-direct/range {v16 .. v21}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FD)V

    .line 616
    .line 617
    .line 618
    :cond_c
    invoke-virtual {v8}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    if-eqz v1, :cond_19

    .line 623
    .line 624
    array-length v2, v1

    .line 625
    if-eq v2, v3, :cond_d

    .line 626
    .line 627
    goto/16 :goto_c

    .line 628
    .line 629
    :cond_d
    array-length v2, v1

    .line 630
    move v4, v5

    .line 631
    :goto_6
    if-ge v4, v2, :cond_e

    .line 632
    .line 633
    aget v6, v1, v4

    .line 634
    .line 635
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 636
    .line 637
    .line 638
    move-result v7

    .line 639
    if-nez v7, :cond_19

    .line 640
    .line 641
    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    .line 642
    .line 643
    .line 644
    move-result v6

    .line 645
    if-nez v6, :cond_19

    .line 646
    .line 647
    const/4 v6, 0x1

    .line 648
    add-int/2addr v4, v6

    .line 649
    goto :goto_6

    .line 650
    :cond_e
    invoke-virtual {v8}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    if-eqz v1, :cond_18

    .line 655
    .line 656
    array-length v2, v1

    .line 657
    if-eq v2, v3, :cond_f

    .line 658
    .line 659
    goto/16 :goto_b

    .line 660
    .line 661
    :cond_f
    array-length v2, v1

    .line 662
    move v3, v5

    .line 663
    :goto_7
    if-ge v3, v2, :cond_10

    .line 664
    .line 665
    aget v4, v1, v3

    .line 666
    .line 667
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 668
    .line 669
    .line 670
    move-result v6

    .line 671
    if-nez v6, :cond_18

    .line 672
    .line 673
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    .line 674
    .line 675
    .line 676
    move-result v4

    .line 677
    if-nez v4, :cond_18

    .line 678
    .line 679
    const/4 v4, 0x1

    .line 680
    add-int/2addr v3, v4

    .line 681
    goto :goto_7

    .line 682
    :cond_10
    const v1, 0x10700e0

    .line 683
    .line 684
    .line 685
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    const/4 v2, 0x3

    .line 690
    new-array v3, v2, [F

    .line 691
    .line 692
    move v2, v5

    .line 693
    :goto_8
    array-length v4, v1

    .line 694
    if-ge v2, v4, :cond_11

    .line 695
    .line 696
    aget-object v4, v1, v2

    .line 697
    .line 698
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 699
    .line 700
    .line 701
    move-result v4

    .line 702
    aput v4, v3, v2

    .line 703
    .line 704
    const/4 v4, 0x1

    .line 705
    add-int/2addr v2, v4

    .line 706
    goto :goto_8

    .line 707
    :cond_11
    const v1, 0x10e0093

    .line 708
    .line 709
    .line 710
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    const v2, 0x10e0090

    .line 715
    .line 716
    .line 717
    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 718
    .line 719
    .line 720
    move-result v2

    .line 721
    if-gtz v2, :cond_12

    .line 722
    .line 723
    const-string v1, "ColorDisplayService"

    .line 724
    .line 725
    const-string v2, "Display white balance minimum temperature must be greater than 0"

    .line 726
    .line 727
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    goto/16 :goto_d

    .line 731
    .line 732
    :cond_12
    const v4, 0x10e008f

    .line 733
    .line 734
    .line 735
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 736
    .line 737
    .line 738
    move-result v4

    .line 739
    if-ge v4, v2, :cond_13

    .line 740
    .line 741
    const-string v1, "ColorDisplayService"

    .line 742
    .line 743
    const-string v2, "Display white balance max temp must be greater or equal to min"

    .line 744
    .line 745
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .line 747
    .line 748
    goto/16 :goto_d

    .line 749
    .line 750
    :cond_13
    const v6, 0x10e008d

    .line 751
    .line 752
    .line 753
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 754
    .line 755
    .line 756
    move-result v6

    .line 757
    const v7, 0x10e0095

    .line 758
    .line 759
    .line 760
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 761
    .line 762
    .line 763
    move-result v7

    .line 764
    int-to-long v11, v7

    .line 765
    iput-wide v11, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDuration:J

    .line 766
    .line 767
    iget-object v7, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 768
    .line 769
    iget-object v7, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 770
    .line 771
    invoke-virtual {v7}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 772
    .line 773
    .line 774
    move-result v7

    .line 775
    if-nez v7, :cond_14

    .line 776
    .line 777
    iget-wide v11, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDuration:J

    .line 778
    .line 779
    iput-wide v11, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationDecrease:J

    .line 780
    .line 781
    iput-wide v11, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationIncrease:J

    .line 782
    .line 783
    goto :goto_9

    .line 784
    :cond_14
    const v7, 0x10e0097

    .line 785
    .line 786
    .line 787
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 788
    .line 789
    .line 790
    move-result v7

    .line 791
    int-to-long v11, v7

    .line 792
    iput-wide v11, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationIncrease:J

    .line 793
    .line 794
    const v7, 0x10e0096

    .line 795
    .line 796
    .line 797
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 798
    .line 799
    .line 800
    move-result v7

    .line 801
    int-to-long v11, v7

    .line 802
    iput-wide v11, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationDecrease:J

    .line 803
    .line 804
    :goto_9
    const v7, 0x10700e2

    .line 805
    .line 806
    .line 807
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 808
    .line 809
    .line 810
    move-result-object v7

    .line 811
    const v11, 0x10700e3

    .line 812
    .line 813
    .line 814
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 815
    .line 816
    .line 817
    move-result-object v10

    .line 818
    iget-object v11, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    .line 819
    .line 820
    monitor-enter v11

    .line 821
    :try_start_0
    iput-object v8, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 822
    .line 823
    iput-object v3, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 824
    .line 825
    iput v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    .line 826
    .line 827
    iput v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    .line 828
    .line 829
    iput v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    .line 830
    .line 831
    iput v2, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    .line 832
    .line 833
    iput v4, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 834
    .line 835
    iput v6, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    .line 836
    .line 837
    const/4 v1, 0x1

    .line 838
    iput-boolean v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 839
    .line 840
    new-instance v1, Lcom/android/server/display/color/CctEvaluator;

    .line 841
    .line 842
    invoke-direct {v1, v2, v4, v7, v10}, Lcom/android/server/display/color/CctEvaluator;-><init>(II[I[I)V

    .line 843
    .line 844
    .line 845
    iput-object v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCctEvaluator:Lcom/android/server/display/color/CctEvaluator;

    .line 846
    .line 847
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    iget v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    .line 849
    .line 850
    iget-boolean v2, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 851
    .line 852
    const-string v3, "ColorDisplayService"

    .line 853
    .line 854
    if-nez v2, :cond_15

    .line 855
    .line 856
    const-string v1, "Can\'t set display white balance temperature: uninitialized"

    .line 857
    .line 858
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    goto :goto_a

    .line 862
    :cond_15
    iget v2, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    .line 863
    .line 864
    if-ge v1, v2, :cond_16

    .line 865
    .line 866
    const-string v1, "Requested display color temperature is below allowed minimum"

    .line 867
    .line 868
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .line 870
    .line 871
    iget v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    .line 872
    .line 873
    iput v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    .line 874
    .line 875
    goto :goto_a

    .line 876
    :cond_16
    iget v2, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 877
    .line 878
    if-le v1, v2, :cond_17

    .line 879
    .line 880
    const-string v1, "Requested display color temperature is above allowed maximum"

    .line 881
    .line 882
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .line 884
    .line 885
    iget v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 886
    .line 887
    iput v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    .line 888
    .line 889
    goto :goto_a

    .line 890
    :cond_17
    iput v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    .line 891
    .line 892
    :goto_a
    iget v1, v9, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    .line 893
    .line 894
    invoke-virtual {v9, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCct(I)[F

    .line 895
    .line 896
    .line 897
    goto :goto_d

    .line 898
    :catchall_0
    move-exception v0

    .line 899
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    throw v0

    .line 901
    :cond_18
    :goto_b
    const-string v1, "ColorDisplayService"

    .line 902
    .line 903
    const-string v2, "Invalid display color space XYZ-to-RGB transform"

    .line 904
    .line 905
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .line 907
    .line 908
    goto :goto_d

    .line 909
    :cond_19
    :goto_c
    const-string v1, "ColorDisplayService"

    .line 910
    .line 911
    const-string v2, "Invalid display color space RGB-to-XYZ transform"

    .line 912
    .line 913
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    .line 915
    .line 916
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 917
    .line 918
    .line 919
    goto :goto_e

    .line 920
    :cond_1a
    move-object/from16 v22, v7

    .line 921
    .line 922
    :goto_e
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 923
    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 925
    .line 926
    .line 927
    move-result-object v2

    .line 928
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    .line 930
    .line 931
    invoke-static {v2}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    .line 932
    .line 933
    .line 934
    move-result v1

    .line 935
    if-eqz v1, :cond_23

    .line 936
    .line 937
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 938
    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 940
    .line 941
    .line 942
    move-result-object v2

    .line 943
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 944
    .line 945
    .line 946
    const-string/jumbo v3, "persist.sys.sf.native_mode"

    .line 947
    .line 948
    .line 949
    const/4 v4, 0x1

    .line 950
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 951
    .line 952
    .line 953
    move-result v3

    .line 954
    if-eq v3, v4, :cond_1b

    .line 955
    .line 956
    const/4 v3, 0x1

    .line 957
    goto :goto_f

    .line 958
    :cond_1b
    move v3, v5

    .line 959
    :goto_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 960
    .line 961
    .line 962
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VIVID_WCG_ON:Z

    .line 963
    .line 964
    if-eqz v4, :cond_1c

    .line 965
    .line 966
    move v3, v5

    .line 967
    :cond_1c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    if-eqz v3, :cond_1d

    .line 972
    .line 973
    const v3, 0x1070143

    .line 974
    .line 975
    .line 976
    goto :goto_10

    .line 977
    :cond_1d
    const v3, 0x1070144

    .line 978
    .line 979
    .line 980
    :goto_10
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    move v3, v5

    .line 985
    const/4 v4, 0x3

    .line 986
    :goto_11
    if-ge v3, v4, :cond_1e

    .line 987
    .line 988
    array-length v6, v2

    .line 989
    if-ge v3, v6, :cond_1e

    .line 990
    .line 991
    aget-object v6, v2, v3

    .line 992
    .line 993
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 994
    .line 995
    .line 996
    move-result v6

    .line 997
    iget-object v7, v1, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    .line 998
    .line 999
    aput v6, v7, v3

    .line 1000
    .line 1001
    const/4 v6, 0x1

    .line 1002
    add-int/2addr v3, v6

    .line 1003
    goto :goto_11

    .line 1004
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/color/ColorDisplayService;->onReduceBrightColorsStrengthLevelChanged()V

    .line 1005
    .line 1006
    .line 1007
    iget v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1008
    .line 1009
    const/16 v2, -0x2710

    .line 1010
    .line 1011
    if-ne v1, v2, :cond_1f

    .line 1012
    .line 1013
    goto :goto_14

    .line 1014
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    iget v2, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1023
    .line 1024
    const-string/jumbo v3, "reduce_bright_colors_activated"

    .line 1025
    .line 1026
    .line 1027
    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1028
    .line 1029
    .line 1030
    move-result v1

    .line 1031
    const/4 v8, 0x1

    .line 1032
    if-ne v1, v8, :cond_20

    .line 1033
    .line 1034
    move v1, v8

    .line 1035
    goto :goto_12

    .line 1036
    :cond_20
    move v1, v5

    .line 1037
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v2

    .line 1045
    const-string/jumbo v4, "reduce_bright_colors_persist_across_reboots"

    .line 1046
    .line 1047
    .line 1048
    iget v6, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1049
    .line 1050
    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1051
    .line 1052
    .line 1053
    move-result v2

    .line 1054
    if-ne v2, v8, :cond_21

    .line 1055
    .line 1056
    move v6, v8

    .line 1057
    goto :goto_13

    .line 1058
    :cond_21
    move v6, v5

    .line 1059
    :goto_13
    if-eqz v1, :cond_22

    .line 1060
    .line 1061
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 1062
    .line 1063
    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    .line 1064
    .line 1065
    .line 1066
    move-result v1

    .line 1067
    if-eqz v1, :cond_22

    .line 1068
    .line 1069
    if-eqz v6, :cond_22

    .line 1070
    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v1

    .line 1079
    iget v2, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1080
    .line 1081
    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1082
    .line 1083
    .line 1084
    move-result v5

    .line 1085
    :cond_22
    :goto_14
    if-nez v5, :cond_23

    .line 1086
    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/color/ColorDisplayService;->onReduceBrightColorsActivationChanged()V

    .line 1088
    .line 1089
    .line 1090
    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 1091
    .line 1092
    const/4 v1, 0x6

    .line 1093
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1094
    .line 1095
    .line 1096
    :cond_23
    return-void
.end method

.method public updateDisplayWhiteBalanceStatus()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 41
    .line 42
    const-string v6, "accessibility_display_daltonizer_enabled"

    .line 43
    .line 44
    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 60
    .line 61
    const-string v6, "accessibility_display_inversion_enabled"

    .line 62
    .line 63
    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "persist.sys.sf.native_mode"

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eq v1, v3, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 84
    .line 85
    iget-boolean v1, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAllowed:Z

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    move v4, v3

    .line 90
    :cond_2
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iput-object v1, v2, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    if-nez v1, :cond_3

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 107
    .line 108
    const/4 v0, 0x5

    .line 109
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void
.end method
