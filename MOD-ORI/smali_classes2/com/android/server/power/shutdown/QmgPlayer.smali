.class public final Lcom/android/server/power/shutdown/QmgPlayer;
.super Lcom/android/server/power/shutdown/AnimationPlayer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final bitmapQ:[Landroid/graphics/Bitmap;

.field public bitmapQFront:I

.field public bitmapQRear:I

.field public final drawBufferLock:Ljava/lang/Object;

.field public imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

.field public mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

.field public final mainImages:Ljava/util/List;

.field public final mainLoopImage:Lcom/android/server/power/LibQmg;

.field public final subImages:Ljava/util/List;

.field public final subLoopImage:Lcom/android/server/power/LibQmg;

.field public final subbitmapQ:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, ".qmg"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/shutdown/AnimationPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array v0, p1, [Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    .line 22
    .line 23
    new-array p1, p1, [Landroid/graphics/Bitmap;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/server/power/shutdown/QmgPlayer;->makeQmgList(Ljava/util/List;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/server/power/shutdown/QmgPlayer;->makeQmgList(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    new-instance v1, Lcom/android/server/power/LibQmg;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {v1, v0}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object v1, p1

    .line 67
    :goto_0
    iput-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainLoopImage:Lcom/android/server/power/LibQmg;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    new-instance p1, Lcom/android/server/power/LibQmg;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p1, v0}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subLoopImage:Lcom/android/server/power/LibQmg;

    .line 85
    .line 86
    return-void
.end method

.method public static makeQmgList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/io/File;

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/power/LibQmg;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v2, v0}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final getMainAnimationWidthHeight()Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/power/LibQmg;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetWidth(J)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Lcom/android/server/power/LibQmg;->handle:J

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/android/server/power/LibQmg;->qmgGetHeight(J)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final isPlaying()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->running:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final prepare()V
    .locals 9

    .line 1
    const-string v0, "Shutdown-QmgPlayer"

    .line 2
    .line 3
    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;-><init>(Lcom/android/server/power/shutdown/QmgPlayer;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x3

    .line 23
    const/4 v3, 0x0

    .line 24
    if-lez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/power/LibQmg;

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v5, "!@[prepare] "

    .line 37
    .line 38
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v0, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 56
    .line 57
    .line 58
    iget-wide v4, v1, Lcom/android/server/power/LibQmg;->handle:J

    .line 59
    .line 60
    invoke-static {v4, v5}, Lcom/android/server/power/LibQmg;->qmgGetWidth(J)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 65
    .line 66
    .line 67
    iget-wide v5, v1, Lcom/android/server/power/LibQmg;->handle:J

    .line 68
    .line 69
    invoke-static {v5, v6}, Lcom/android/server/power/LibQmg;->qmgGetHeight(J)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    move v5, v3

    .line 74
    :goto_0
    if-ge v5, v2, :cond_2

    .line 75
    .line 76
    iget-object v6, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 77
    .line 78
    aget-object v7, v6, v5

    .line 79
    .line 80
    if-nez v7, :cond_0

    .line 81
    .line 82
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 83
    .line 84
    invoke-static {v4, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    aput-object v7, v6, v5

    .line 89
    .line 90
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const-string/jumbo v1, "qmglist error"

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-lez v1, :cond_4

    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    .line 109
    .line 110
    iget-object v4, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lcom/android/server/power/LibQmg;

    .line 117
    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v6, "!@[prepare] subdisplay : "

    .line 121
    .line 122
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v0, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 140
    .line 141
    .line 142
    iget-wide v5, v4, Lcom/android/server/power/LibQmg;->handle:J

    .line 143
    .line 144
    invoke-static {v5, v6}, Lcom/android/server/power/LibQmg;->qmgGetWidth(J)I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-virtual {v4}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 149
    .line 150
    .line 151
    iget-wide v6, v4, Lcom/android/server/power/LibQmg;->handle:J

    .line 152
    .line 153
    invoke-static {v6, v7}, Lcom/android/server/power/LibQmg;->qmgGetHeight(J)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    new-instance v6, Landroid/util/DisplayMetrics;

    .line 158
    .line 159
    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 160
    .line 161
    .line 162
    iget-object v7, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    .line 163
    .line 164
    const-string v8, "display"

    .line 165
    .line 166
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 171
    .line 172
    invoke-virtual {v7, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_5

    .line 177
    .line 178
    invoke-virtual {v1, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
    .line 180
    .line 181
    move v1, v3

    .line 182
    :goto_1
    if-ge v1, v2, :cond_5

    .line 183
    .line 184
    iget-object v7, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    .line 185
    .line 186
    aget-object v8, v7, v1

    .line 187
    .line 188
    if-nez v8, :cond_3

    .line 189
    .line 190
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 191
    .line 192
    invoke-static {v6, v5, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    aput-object v8, v7, v1

    .line 197
    .line 198
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_4
    const-string/jumbo v1, "no sub_shutdown.qmg"

    .line 202
    .line 203
    .line 204
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/QmgPlayer;->isPlaying()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_6

    .line 212
    .line 213
    const-string p0, "becareful prepare while draw"

    .line 214
    .line 215
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_6
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    .line 220
    .line 221
    iput-boolean v3, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->finished:Z

    .line 222
    .line 223
    :goto_2
    return-void
.end method

.method public final setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->subImageView:Landroid/widget/ImageView;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->subDialog:Landroid/app/Presentation;

    .line 7
    .line 8
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    const-string v0, "Shutdown-QmgPlayer"

    .line 2
    .line 3
    const-string v1, "!@StateDrawing.start()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;-><init>(Lcom/android/server/power/shutdown/QmgPlayer;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Thread;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
