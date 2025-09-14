.class public final Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public running:Z

.field public final synthetic this$0:Lcom/android/server/power/shutdown/QmgPlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/power/shutdown/QmgPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->running:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final frameLoadLoop(Lcom/android/server/power/LibQmg;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 9
    .line 10
    .line 11
    iget-wide v1, p1, Lcom/android/server/power/LibQmg;->handle:J

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(J)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gtz v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x21

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x64

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 24
    .line 25
    .line 26
    const-string v0, "Shutdown-QmgPlayer"

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "!@[frameLoadLoop] "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 49
    .line 50
    iget v1, v1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    .line 51
    .line 52
    aget-object v1, v2, v1

    .line 53
    .line 54
    iget-wide v2, p1, Lcom/android/server/power/LibQmg;->handle:J

    .line 55
    .line 56
    invoke-static {v2, v3, v1}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(JLandroid/graphics/Bitmap;)I

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    if-lez v1, :cond_2

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    :cond_2
    if-ltz v1, :cond_4

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v2

    .line 71
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 72
    .line 73
    iget v4, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    rem-int/lit8 v4, v4, 0x3

    .line 78
    .line 79
    iput v4, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    .line 80
    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    rem-int/lit8 v4, v4, 0x3

    .line 84
    .line 85
    iget v5, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    if-ne v4, v5, :cond_3

    .line 88
    .line 89
    :try_start_2
    iget-object v3, v3, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    .line 90
    .line 91
    const-wide/16 v4, 0x1388

    .line 92
    .line 93
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v3

    .line 100
    :try_start_3
    const-string v4, "Shutdown-QmgPlayer"

    .line 101
    .line 102
    const-string v5, "frameLoadLoop InterruptedException"

    .line 103
    .line 104
    invoke-static {v4, v5, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    monitor-exit v2

    .line 108
    goto :goto_2

    .line 109
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    throw p0

    .line 111
    :cond_4
    :goto_2
    if-gtz v1, :cond_1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catch_1
    move-exception p0

    .line 115
    const-string v1, "Shutdown-QmgPlayer"

    .line 116
    .line 117
    const-string/jumbo v2, "qmgLoadFrame return < 0"

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_3
    iget-wide p0, p1, Lcom/android/server/power/LibQmg;->handle:J

    .line 124
    .line 125
    const-wide/16 v1, 0x0

    .line 126
    .line 127
    cmp-long v1, p0, v1

    .line 128
    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    invoke-static {p0, p1}, Lcom/android/server/power/LibQmg;->qmgClose(J)I

    .line 132
    .line 133
    .line 134
    :cond_5
    const-string p0, "Shutdown-QmgPlayer"

    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v1, "!@[frameLoadLoop] done "

    .line 139
    .line 140
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final multiFrameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Shutdown-QmgPlayer"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "!@[multiframeLoadLoop] startMain "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 24
    .line 25
    .line 26
    const-string v0, "Shutdown-QmgPlayer"

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "!@[multiframeLoadLoop] startSub "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 50
    .line 51
    .line 52
    iget-wide v1, p1, Lcom/android/server/power/LibQmg;->handle:J

    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(J)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-gtz v1, :cond_0

    .line 59
    .line 60
    const/16 v1, 0x21

    .line 61
    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x64

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 69
    .line 70
    iget-object v2, v1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 71
    .line 72
    iget v1, v1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    .line 73
    .line 74
    aget-object v1, v2, v1

    .line 75
    .line 76
    iget-wide v2, p1, Lcom/android/server/power/LibQmg;->handle:J

    .line 77
    .line 78
    invoke-static {v2, v3, v1}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(JLandroid/graphics/Bitmap;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iget-object v2, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 83
    .line 84
    iget-object v3, v2, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    .line 85
    .line 86
    iget v2, v2, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    .line 87
    .line 88
    aget-object v2, v3, v2

    .line 89
    .line 90
    iget-wide v3, p2, Lcom/android/server/power/LibQmg;->handle:J

    .line 91
    .line 92
    invoke-static {v3, v4, v2}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(JLandroid/graphics/Bitmap;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .line 94
    .line 95
    if-lez v1, :cond_2

    .line 96
    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    :cond_2
    if-ltz v1, :cond_4

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter v2

    .line 106
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 107
    .line 108
    iget v4, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    .line 109
    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    rem-int/lit8 v4, v4, 0x3

    .line 113
    .line 114
    iput v4, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    .line 115
    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    rem-int/lit8 v4, v4, 0x3

    .line 119
    .line 120
    iget v5, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    if-ne v4, v5, :cond_3

    .line 123
    .line 124
    :try_start_2
    iget-object v3, v3, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    .line 125
    .line 126
    const-wide/16 v4, 0x1388

    .line 127
    .line 128
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    goto :goto_1

    .line 134
    :catch_0
    move-exception v3

    .line 135
    :try_start_3
    const-string v4, "Shutdown-QmgPlayer"

    .line 136
    .line 137
    const-string v5, "InterruptedException"

    .line 138
    .line 139
    invoke-static {v4, v5, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    :goto_0
    monitor-exit v2

    .line 143
    goto :goto_2

    .line 144
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    throw p0

    .line 146
    :cond_4
    :goto_2
    if-gtz v1, :cond_1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :catch_1
    move-exception p0

    .line 150
    const-string v1, "Shutdown-QmgPlayer"

    .line 151
    .line 152
    const-string/jumbo v2, "multiframeLoadLoop qmgLoadFrame return < 0"

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    :goto_3
    iget-wide p0, p1, Lcom/android/server/power/LibQmg;->handle:J

    .line 159
    .line 160
    const-wide/16 v1, 0x0

    .line 161
    .line 162
    cmp-long v3, p0, v1

    .line 163
    .line 164
    if-eqz v3, :cond_5

    .line 165
    .line 166
    invoke-static {p0, p1}, Lcom/android/server/power/LibQmg;->qmgClose(J)I

    .line 167
    .line 168
    .line 169
    :cond_5
    iget-wide p0, p2, Lcom/android/server/power/LibQmg;->handle:J

    .line 170
    .line 171
    cmp-long p2, p0, v1

    .line 172
    .line 173
    if-eqz p2, :cond_6

    .line 174
    .line 175
    invoke-static {p0, p1}, Lcom/android/server/power/LibQmg;->qmgClose(J)I

    .line 176
    .line 177
    .line 178
    :cond_6
    const-string p0, "Shutdown-QmgPlayer"

    .line 179
    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string p2, "!@[multiframeLoadLoop] done "

    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "!@ImageLoadThread.run(), qmgList.size = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "Shutdown-QmgPlayer"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    .line 35
    .line 36
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/server/power/LibQmg;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/android/server/power/LibQmg;

    .line 75
    .line 76
    invoke-virtual {p0, v0, v3}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->multiFrameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/android/server/power/LibQmg;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->frameLoadLoop(Lcom/android/server/power/LibQmg;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :goto_1
    const-string v3, "!@qmgList or subqmgList IndexOutOfBoundsException"

    .line 118
    .line 119
    invoke-static {v1, v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->running:Z

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainLoopImage:Lcom/android/server/power/LibQmg;

    .line 127
    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->subLoopImage:Lcom/android/server/power/LibQmg;

    .line 131
    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->multiFrameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->frameLoadLoop(Lcom/android/server/power/LibQmg;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    .line 144
    .line 145
    const/4 v0, -0x1

    .line 146
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    .line 148
    .line 149
    return-void
.end method
