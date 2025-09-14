.class public final Lcom/android/server/power/shutdown/AnimationLoader;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

.field public final animationFile:Ljava/io/File;

.field public final animationType:Lcom/android/server/power/shutdown/AnimationType;

.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public imageResolutionExtractor:Ljava/util/function/Consumer;

.field public nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

.field public pairAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

.field public final playTimeout:J

.field public final player:Lcom/android/server/power/shutdown/WebpPlayer;

.field public final repeatCount:I

.field public status:Lcom/android/server/power/shutdown/AnimationStatus;

.field public stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Ljava/io/File;IJLcom/android/server/power/shutdown/AnimationType;Lcom/android/server/power/shutdown/WebpPlayer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/power/shutdown/AnimationStatus;->IDLE:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->repeatCount:I

    .line 11
    .line 12
    iput-wide p3, p0, Lcom/android/server/power/shutdown/AnimationLoader;->playTimeout:J

    .line 13
    .line 14
    iput-object p5, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationType:Lcom/android/server/power/shutdown/AnimationType;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->loadDrawable()Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/power/shutdown/AnimationStatus;->START:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->STOP:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 10
    .line 11
    if-ne p1, v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, v1, Lcom/android/server/power/shutdown/WebpPlayer;->currentAnimationLoader:Lcom/android/server/power/shutdown/AnimationLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    monitor-exit v1

    .line 24
    const-string v3, "Shutdown-WebpPlayer"

    .line 25
    .line 26
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 27
    .line 28
    if-ne p0, v2, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 v2, 0x0

    .line 33
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v5, "onAnimationChanged status["

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v5, "] equals["

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "] animation["

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "]"

    .line 61
    .line 62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    if-ne p1, v0, :cond_3

    .line 73
    .line 74
    monitor-enter v1

    .line 75
    :try_start_1
    iput-object p0, v1, Lcom/android/server/power/shutdown/WebpPlayer;->currentAnimationLoader:Lcom/android/server/power/shutdown/AnimationLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    monitor-exit v1

    .line 78
    goto :goto_2

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v1

    .line 81
    throw p0

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    monitor-exit v1

    .line 84
    throw p0

    .line 85
    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 86
    .line 87
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationType:Lcom/android/server/power/shutdown/AnimationType;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->subImageView:Landroid/widget/ImageView;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 11
    .line 12
    goto/16 :goto_a

    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->subDialog:Landroid/app/Presentation;

    .line 15
    .line 16
    sget-object v4, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->MAIN_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 17
    .line 18
    sget-object v5, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->MAIN_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 19
    .line 20
    sget-object v6, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->SUB_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 21
    .line 22
    sget-object v7, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->SUB_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget-boolean v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    move-object v9, v4

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_1
    iget-object v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 44
    .line 45
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v8}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    :cond_2
    :goto_0
    move-object v9, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const/4 v9, 0x5

    .line 58
    if-ne v2, v9, :cond_4

    .line 59
    .line 60
    iget-boolean v9, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    .line 61
    .line 62
    if-eqz v9, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    if-nez v8, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    iget-object v9, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->subDialog:Landroid/app/Presentation;

    .line 69
    .line 70
    if-eqz v9, :cond_6

    .line 71
    .line 72
    iget-boolean v10, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    .line 73
    .line 74
    if-eqz v10, :cond_6

    .line 75
    .line 76
    move-object v9, v7

    .line 77
    goto :goto_2

    .line 78
    :cond_6
    if-eqz v9, :cond_7

    .line 79
    .line 80
    iget-boolean v10, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    .line 81
    .line 82
    if-nez v10, :cond_7

    .line 83
    .line 84
    move-object v9, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_7
    if-nez v9, :cond_2

    .line 87
    .line 88
    iget-boolean v9, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    .line 89
    .line 90
    if-eqz v9, :cond_2

    .line 91
    .line 92
    :goto_1
    move-object v9, v5

    .line 93
    :goto_2
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 94
    .line 95
    new-instance v10, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v11, "getDisplayMode displayMode["

    .line 98
    .line 99
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v11, "] displayType["

    .line 106
    .line 107
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, "] isFolded["

    .line 114
    .line 115
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, "]"

    .line 122
    .line 123
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    const-string v8, "Shutdown-AnimationPlayer"

    .line 131
    .line 132
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    sget-object v2, Lcom/android/server/power/shutdown/AnimationType;->SUB:Lcom/android/server/power/shutdown/AnimationType;

    .line 139
    .line 140
    sget-object v8, Lcom/android/server/power/shutdown/AnimationType;->SUB_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    .line 141
    .line 142
    if-eq v1, v2, :cond_9

    .line 143
    .line 144
    if-ne v1, v8, :cond_8

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_8
    move v10, v3

    .line 148
    goto :goto_5

    .line 149
    :cond_9
    :goto_4
    const/4 v10, 0x1

    .line 150
    :goto_5
    const/4 v11, 0x0

    .line 151
    if-eqz v10, :cond_b

    .line 152
    .line 153
    if-eq v9, v4, :cond_a

    .line 154
    .line 155
    if-ne v9, v6, :cond_b

    .line 156
    .line 157
    :cond_a
    :goto_6
    move-object v0, v11

    .line 158
    goto :goto_a

    .line 159
    :cond_b
    if-eq v1, v2, :cond_d

    .line 160
    .line 161
    if-ne v1, v8, :cond_c

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_c
    if-eq v9, v5, :cond_a

    .line 165
    .line 166
    if-ne v9, v7, :cond_d

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_d
    :goto_7
    if-eq v9, v6, :cond_f

    .line 170
    .line 171
    if-ne v9, v7, :cond_e

    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_e
    iget-object v1, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_f
    :goto_8
    iget-object v1, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->subImageView:Landroid/widget/ImageView;

    .line 178
    .line 179
    :goto_9
    iget-object v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->subImageView:Landroid/widget/ImageView;

    .line 180
    .line 181
    const-string v4, "Shutdown-WebpPlayer"

    .line 182
    .line 183
    if-ne v1, v2, :cond_10

    .line 184
    .line 185
    iget-object v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->subDialog:Landroid/app/Presentation;

    .line 186
    .line 187
    if-eqz v2, :cond_10

    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/app/Presentation;->isShowing()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_10

    .line 194
    .line 195
    const-string v2, "getView showing sub dialog for sub view"

    .line 196
    .line 197
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    iget-object v0, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->subDialog:Landroid/app/Presentation;

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    .line 203
    .line 204
    .line 205
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v2, "getView = "

    .line 208
    .line 209
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-object v0, v1

    .line 223
    :goto_a
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 224
    .line 225
    const-string v2, "invalidateDrawable drawable[%s], imageView[%s]"

    .line 226
    .line 227
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v2, "Shutdown-AnimationLoader"

    .line 236
    .line 237
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    instance-of v1, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    .line 241
    .line 242
    if-eqz v1, :cond_14

    .line 243
    .line 244
    check-cast v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    .line 245
    .line 246
    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 247
    .line 248
    if-eqz p0, :cond_11

    .line 249
    .line 250
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-ne p0, v1, :cond_11

    .line 259
    .line 260
    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 261
    .line 262
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eq p0, v1, :cond_13

    .line 271
    .line 272
    :cond_11
    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 273
    .line 274
    if-eqz p0, :cond_12

    .line 275
    .line 276
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    .line 278
    .line 279
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 288
    .line 289
    invoke-static {p0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    iput-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 294
    .line 295
    new-instance p0, Landroid/graphics/Canvas;

    .line 296
    .line 297
    iget-object v1, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 298
    .line 299
    invoke-direct {p0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .line 301
    .line 302
    iput-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->canvas:Landroid/graphics/Canvas;

    .line 303
    .line 304
    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 305
    .line 306
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    iget-object v1, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 311
    .line 312
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    invoke-virtual {p1, v3, v3, p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    .line 318
    .line 319
    :cond_13
    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->canvas:Landroid/graphics/Canvas;

    .line 320
    .line 321
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    .line 323
    .line 324
    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 325
    .line 326
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    .line 328
    .line 329
    goto :goto_b

    .line 330
    :cond_14
    if-eqz v0, :cond_15

    .line 331
    .line 332
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_15
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    .line 337
    .line 338
    if-eqz v0, :cond_16

    .line 339
    .line 340
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-ne v0, v1, :cond_16

    .line 349
    .line 350
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    .line 351
    .line 352
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eq v0, v1, :cond_18

    .line 361
    .line 362
    :cond_16
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    .line 363
    .line 364
    if-eqz v0, :cond_17

    .line 365
    .line 366
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 367
    .line 368
    .line 369
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 378
    .line 379
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    iput-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    .line 384
    .line 385
    new-instance v0, Landroid/graphics/Canvas;

    .line 386
    .line 387
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    .line 388
    .line 389
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 390
    .line 391
    .line 392
    iput-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->canvas:Landroid/graphics/Canvas;

    .line 393
    .line 394
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    .line 395
    .line 396
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    .line 408
    .line 409
    :cond_18
    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->canvas:Landroid/graphics/Canvas;

    .line 410
    .line 411
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 412
    .line 413
    .line 414
    :goto_b
    return-void
.end method

.method public final declared-synchronized loadDrawable()Landroid/graphics/drawable/AnimatedImageDrawable;
    .locals 3

    .line 1
    const-string v0, "loadDrawable "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 21
    .line 22
    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->LOAD:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->imageResolutionExtractor:Ljava/util/function/Consumer;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    const-string v1, "Shutdown-AnimationLoader"

    .line 40
    .line 41
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-object v0

    .line 62
    :goto_1
    monitor-exit p0

    .line 63
    throw v0
.end method

.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    const-string v0, "Shutdown-AnimationLoader"

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "onAnimationEnd "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->clearAnimationCallbacks()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 30
    .line 31
    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->STOP:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/power/shutdown/AnimationLoader;->start()V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object v0, Lcom/android/server/power/shutdown/AnimationStatus;->FINISH:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    .line 46
    .line 47
    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iput-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0

    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->canvas:Landroid/graphics/Canvas;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iput-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->canvas:Landroid/graphics/Canvas;

    .line 85
    .line 86
    :cond_4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "onAnimationStart "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Shutdown-AnimationLoader"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/android/server/power/shutdown/AnimationStatus;->START:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->prepare()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final prepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/power/shutdown/WebpPlayer;->singleExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/android/server/power/shutdown/WebpPlayer;->singleExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Lcom/android/server/power/shutdown/WebpPlayer;->singleExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v2, "prepare "

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " "

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "Shutdown-AnimationLoader"

    .line 50
    .line 51
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long v2, p3, v2

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string/jumbo v1, "scheduleDrawable schedule time[%d][%d] drawable[%s]"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "Shutdown-AnimationLoader"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final start()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/AnimationLoader;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->playTimeout:J

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    cmp-long v3, v1, v3

    .line 21
    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    new-instance v3, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-direct {v3, p0, v4}, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/AnimationLoader;I)V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AnimationLoader{animationFile="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", repeatCount="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->repeatCount:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", playTimeout="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->playTimeout:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", animationType="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationType:Lcom/android/server/power/shutdown/AnimationType;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", status="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", drawable="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 64
    .line 65
    const-string v2, ""

    .line 66
    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    move-object v1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, ", next="

    .line 74
    .line 75
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 79
    .line 80
    iget-object v3, v3, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->pairAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 93
    .line 94
    if-nez v1, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v2, ", pair="

    .line 100
    .line 101
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->pairAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    .line 107
    .line 108
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/16 p0, 0x7d

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    const-string/jumbo v1, "unscheduleDrawable drawable[%s]"

    .line 4
    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "Shutdown-AnimationLoader"

    .line 15
    .line 16
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
