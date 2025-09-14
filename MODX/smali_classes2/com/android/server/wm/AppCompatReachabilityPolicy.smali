.class public final Lcom/android/server/wm/AppCompatReachabilityPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

.field public final mOnSingleTap:Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

.field public mShouldPlayMoveAnimation:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatReachabilityPolicy;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mOnSingleTap:Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 14
    .line 15
    return-void
.end method

.method public static shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mShouldPlayMoveAnimation:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method


# virtual methods
.method public final handleDoubleTap(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x2

    .line 25
    const/4 v5, 0x1

    .line 26
    iget-object v6, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 27
    .line 28
    if-eqz v2, :cond_a

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    goto/16 :goto_7

    .line 37
    .line 38
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/graphics/Rect;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    if-gt v7, p1, :cond_2

    .line 57
    .line 58
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    if-lt v7, p1, :cond_2

    .line 61
    .line 62
    goto/16 :goto_7

    .line 63
    .line 64
    :cond_2
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 65
    .line 66
    iget-object v7, v7, Lcom/android/server/wm/AppCompatController;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 67
    .line 68
    invoke-virtual {v7}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    iget-boolean v7, v6, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 75
    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    move v7, v5

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v7, v3

    .line 81
    :goto_1
    iget-object v8, v6, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 82
    .line 83
    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    iget-object v1, v1, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 90
    .line 91
    iget-object v10, v6, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 92
    .line 93
    if-le v9, p1, :cond_6

    .line 94
    .line 95
    invoke-virtual {v10, v7}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz v7, :cond_4

    .line 108
    .line 109
    move v2, v4

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    move v2, v5

    .line 112
    :goto_2
    sub-int/2addr p1, v2

    .line 113
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {v10, p1, v7}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    .line 126
    .line 127
    .line 128
    if-ne v8, v5, :cond_5

    .line 129
    .line 130
    move p1, v5

    .line 131
    goto :goto_3

    .line 132
    :cond_5
    const/4 p1, 0x4

    .line 133
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 134
    .line 135
    .line 136
    iput-boolean v5, v1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_6
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 140
    .line 141
    if-ge v2, p1, :cond_9

    .line 142
    .line 143
    invoke-virtual {v10, v7}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz v7, :cond_7

    .line 156
    .line 157
    move v2, v4

    .line 158
    goto :goto_4

    .line 159
    :cond_7
    move v2, v5

    .line 160
    :goto_4
    add-int/2addr p1, v2

    .line 161
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    invoke-virtual {v10, p1, v7}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    .line 174
    .line 175
    .line 176
    if-ne v8, v5, :cond_8

    .line 177
    .line 178
    const/4 p1, 0x3

    .line 179
    goto :goto_5

    .line 180
    :cond_8
    move p1, v4

    .line 181
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 182
    .line 183
    .line 184
    iput-boolean v5, v1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 185
    .line 186
    :cond_9
    :goto_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 187
    .line 188
    .line 189
    :cond_a
    :goto_7
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 190
    .line 191
    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 192
    .line 193
    iget-object p1, p1, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 194
    .line 195
    iget-object v1, p1, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p1, v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_14

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_b

    .line 216
    .line 217
    goto/16 :goto_e

    .line 218
    .line 219
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    .line 220
    .line 221
    if-eqz v1, :cond_c

    .line 222
    .line 223
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Landroid/graphics/Rect;

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_c
    new-instance v1, Landroid/graphics/Rect;

    .line 231
    .line 232
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 233
    .line 234
    .line 235
    :goto_8
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 236
    .line 237
    if-gt v2, p2, :cond_d

    .line 238
    .line 239
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 240
    .line 241
    if-lt v2, p2, :cond_d

    .line 242
    .line 243
    goto/16 :goto_e

    .line 244
    .line 245
    :cond_d
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 246
    .line 247
    iget-object v2, v2, Lcom/android/server/wm/AppCompatController;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 248
    .line 249
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    iget-object v7, v6, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 254
    .line 255
    invoke-virtual {v7, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 260
    .line 261
    iget-object p1, p1, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 262
    .line 263
    iget-object v6, v6, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 264
    .line 265
    if-le v8, p2, :cond_10

    .line 266
    .line 267
    invoke-virtual {v6, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result p2

    .line 279
    if-eqz v2, :cond_e

    .line 280
    .line 281
    goto :goto_9

    .line 282
    :cond_e
    move v4, v5

    .line 283
    :goto_9
    sub-int/2addr p2, v4

    .line 284
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    invoke-virtual {v6, p2, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    .line 297
    .line 298
    .line 299
    if-ne v7, v5, :cond_f

    .line 300
    .line 301
    const/4 p2, 0x5

    .line 302
    goto :goto_a

    .line 303
    :cond_f
    const/16 p2, 0x8

    .line 304
    .line 305
    :goto_a
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 306
    .line 307
    .line 308
    iput-boolean v5, p1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 309
    .line 310
    goto :goto_d

    .line 311
    :cond_10
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 312
    .line 313
    if-ge v1, p2, :cond_13

    .line 314
    .line 315
    invoke-virtual {v6, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    if-eqz v2, :cond_11

    .line 328
    .line 329
    move v1, v4

    .line 330
    goto :goto_b

    .line 331
    :cond_11
    move v1, v5

    .line 332
    :goto_b
    add-int/2addr p2, v1

    .line 333
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 334
    .line 335
    .line 336
    move-result p2

    .line 337
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result p2

    .line 345
    invoke-virtual {v6, p2, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    .line 346
    .line 347
    .line 348
    if-ne v7, v5, :cond_12

    .line 349
    .line 350
    const/4 p2, 0x7

    .line 351
    goto :goto_c

    .line 352
    :cond_12
    const/4 p2, 0x6

    .line 353
    :goto_c
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 354
    .line 355
    .line 356
    iput-boolean v5, p1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 357
    .line 358
    :cond_13
    :goto_d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 359
    .line 360
    .line 361
    :cond_14
    :goto_e
    return-void
.end method

.method public final logLetterboxPositionChange(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 11
    .line 12
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 15
    .line 16
    const/16 v2, 0x1ce

    .line 17
    .line 18
    invoke-static {v2, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    if-eq p0, v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
