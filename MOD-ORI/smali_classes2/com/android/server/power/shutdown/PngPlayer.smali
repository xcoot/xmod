.class public final Lcom/android/server/power/shutdown/PngPlayer;
.super Lcom/android/server/power/shutdown/AnimationPlayer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;


# instance fields
.field public drawHandler:Landroid/os/Handler;

.field public mainAnimationWidthHeight:Landroid/util/Pair;

.field public mainBitmap:Landroid/graphics/Bitmap;

.field public subBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public static getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static setImageToView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string/jumbo v1, "setImageToView bitmapSize["

    .line 8
    .line 9
    .line 10
    const-string v2, "]"

    .line 11
    .line 12
    const-string v3, "Shutdown-PngPlayer"

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final declared-synchronized getDrawHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->drawHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->drawHandler:Landroid/os/Handler;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->drawHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public final getMainAnimationWidthHeight()Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainAnimationWidthHeight:Landroid/util/Pair;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/PngPlayer;->prepare()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainAnimationWidthHeight:Landroid/util/Pair;

    .line 39
    .line 40
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainAnimationWidthHeight:Landroid/util/Pair;

    .line 43
    .line 44
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "getMainAnimationWidthHeight unexpected flow %s"

    .line 49
    .line 50
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "Shutdown-PngPlayer"

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainAnimationWidthHeight:Landroid/util/Pair;

    .line 60
    .line 61
    return-object p0
.end method

.method public final isPlaying()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onSizeChanged(IIII)V
    .locals 9

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    const-string/jumbo v0, "onSizeChanged width="

    .line 4
    .line 5
    .line 6
    const-string v1, ", height="

    .line 7
    .line 8
    const-string v2, ", oldWidth="

    .line 9
    .line 10
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, ", oldHeight="

    .line 15
    .line 16
    const-string v3, ","

    .line 17
    .line 18
    invoke-static {p3, p4, v2, v3, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const-string p4, "Shutdown-PngPlayer"

    .line 23
    .line 24
    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_10

    .line 28
    .line 29
    if-eqz p2, :cond_10

    .line 30
    .line 31
    iget-object p3, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    if-nez p3, :cond_0

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    iget-object p3, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    const v0, 0x7fffffff

    .line 40
    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move p3, v0

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :cond_2
    if-ne p1, p3, :cond_3

    .line 59
    .line 60
    if-ne p2, v0, :cond_3

    .line 61
    .line 62
    const-string p3, "getMatchedAnimationLoader main matched exactly width="

    .line 63
    .line 64
    invoke-static {p1, p2, p3, v1, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_3
    iget-object v2, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iget-object v3, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-ne p1, v2, :cond_4

    .line 84
    .line 85
    if-ne p2, v3, :cond_4

    .line 86
    .line 87
    const-string p3, "getMatchedAnimationLoader sub matched exactly width="

    .line 88
    .line 89
    invoke-static {p1, p2, p3, v1, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_4
    move v5, p1

    .line 97
    move v4, p2

    .line 98
    :goto_1
    if-eqz v4, :cond_5

    .line 99
    .line 100
    rem-int/2addr v5, v4

    .line 101
    move v8, v5

    .line 102
    move v5, v4

    .line 103
    move v4, v8

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    if-lez v5, :cond_6

    .line 106
    .line 107
    div-int v4, p1, v5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    move v4, p1

    .line 111
    :goto_2
    if-lez v5, :cond_7

    .line 112
    .line 113
    div-int v5, p2, v5

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    move v5, p2

    .line 117
    :goto_3
    move v7, p3

    .line 118
    move v6, v0

    .line 119
    :goto_4
    if-eqz v6, :cond_8

    .line 120
    .line 121
    rem-int/2addr v7, v6

    .line 122
    move v8, v7

    .line 123
    move v7, v6

    .line 124
    move v6, v8

    .line 125
    goto :goto_4

    .line 126
    :cond_8
    if-lez v7, :cond_9

    .line 127
    .line 128
    div-int/2addr p3, v7

    .line 129
    :cond_9
    if-lez v7, :cond_a

    .line 130
    .line 131
    div-int/2addr v0, v7

    .line 132
    :cond_a
    if-ne v4, p3, :cond_b

    .line 133
    .line 134
    if-ne v5, v0, :cond_b

    .line 135
    .line 136
    const-string p1, "getMatchedAnimationLoader main matched ratio width="

    .line 137
    .line 138
    invoke-static {v4, v5, p1, v1, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_b
    move v0, v2

    .line 145
    move p3, v3

    .line 146
    :goto_5
    if-eqz p3, :cond_c

    .line 147
    .line 148
    rem-int/2addr v0, p3

    .line 149
    move v8, v0

    .line 150
    move v0, p3

    .line 151
    move p3, v8

    .line 152
    goto :goto_5

    .line 153
    :cond_c
    if-lez v0, :cond_d

    .line 154
    .line 155
    div-int/2addr v2, v0

    .line 156
    :cond_d
    if-lez v0, :cond_e

    .line 157
    .line 158
    div-int/2addr v3, v0

    .line 159
    :cond_e
    if-ne v4, v2, :cond_f

    .line 160
    .line 161
    if-ne v5, v3, :cond_f

    .line 162
    .line 163
    const-string p1, "getMatchedAnimationLoader sub matched ratio width="

    .line 164
    .line 165
    invoke-static {v4, v5, p1, v1, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_f
    const-string p3, "getMatchedAnimationLoader not found matched resouce viewWidth="

    .line 172
    .line 173
    const-string v0, ", viewHeight="

    .line 174
    .line 175
    invoke-static {p1, p2, p3, v0, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_10
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string p2, "getMatchedAnimationLoader viewWidth or viewHeight is 0 or subAnimationLoaders is null "

    .line 184
    .line 185
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 201
    .line 202
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/PngPlayer;->getDrawHandler()Landroid/os/Handler;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    new-instance p3, Lcom/android/server/power/shutdown/PngPlayer$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    invoke-direct {p3, p0, p1}, Lcom/android/server/power/shutdown/PngPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/PngPlayer;Landroid/graphics/Bitmap;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final prepare()V
    .locals 4

    .line 1
    const-string v0, "Shutdown-PngPlayer"

    .line 2
    .line 3
    const-string/jumbo v1, "prepare"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/PngPlayer;->getDrawHandler()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/io/File;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/android/server/power/shutdown/PngPlayer;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-static {v1}, Lcom/android/server/power/shutdown/PngPlayer;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    check-cast v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/io/File;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/android/server/power/shutdown/PngPlayer;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    .line 78
    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-static {v0}, Lcom/android/server/power/shutdown/PngPlayer;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method public final setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/power/shutdown/PngPlayer$1;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 9
    .line 10
    .line 11
    iput-object p0, p1, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->listener:Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->subImageView:Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->subDialog:Landroid/app/Presentation;

    .line 17
    .line 18
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    const-string/jumbo v0, "start"

    .line 4
    .line 5
    .line 6
    const-string v1, "Shutdown-PngPlayer"

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/android/server/power/shutdown/PngPlayer;->setImageToView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
