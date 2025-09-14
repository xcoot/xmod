.class public final Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public finished:Z

.field public maxSleep:I

.field public final synthetic this$0:Lcom/android/server/power/shutdown/QmgPlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/power/shutdown/QmgPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->finished:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->maxSleep:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    const-string p1, "Shutdown-QmgPlayer"

    .line 16
    .line 17
    const-string v0, "image draw finish"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->finished:Z

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 26
    .line 27
    iget v0, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    .line 28
    .line 29
    iget v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-eq v0, v2, :cond_7

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    .line 35
    .line 36
    iget v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->maxSleep:I

    .line 37
    .line 38
    int-to-long v4, v0

    .line 39
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 43
    .line 44
    iget-boolean v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 59
    .line 60
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const-string v2, "Shutdown-QmgPlayer"

    .line 69
    .line 70
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v4, "image draw displayType["

    .line 75
    .line 76
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, "] isFolded["

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v4, "]"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 105
    .line 106
    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 107
    .line 108
    iget-object v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 109
    .line 110
    iget p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    .line 111
    .line 112
    aget-object p1, v2, p1

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    const/4 v2, 0x5

    .line 119
    if-ne p1, v2, :cond_3

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 122
    .line 123
    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 124
    .line 125
    iget-object v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    .line 126
    .line 127
    iget p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    .line 128
    .line 129
    aget-object p1, v2, p1

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    if-nez v0, :cond_4

    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 138
    .line 139
    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 140
    .line 141
    iget-object v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 142
    .line 143
    iget p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    .line 144
    .line 145
    aget-object p1, v2, p1

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    if-eqz v0, :cond_6

    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 154
    .line 155
    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->subImageView:Landroid/widget/ImageView;

    .line 156
    .line 157
    iget-object v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    .line 158
    .line 159
    iget p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    .line 160
    .line 161
    aget-object p1, v2, p1

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 167
    .line 168
    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->subDialog:Landroid/app/Presentation;

    .line 169
    .line 170
    iget-object p1, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->subImageView:Landroid/widget/ImageView;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 176
    .line 177
    iget-object p1, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->subDialog:Landroid/app/Presentation;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/app/Presentation;->show()V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_5
    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 184
    .line 185
    iget-object v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 186
    .line 187
    iget p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    .line 188
    .line 189
    aget-object p1, v2, p1

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    .line 193
    .line 194
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    .line 197
    .line 198
    monitor-enter p1

    .line 199
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 200
    .line 201
    iget v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    .line 202
    .line 203
    add-int/2addr v0, v1

    .line 204
    rem-int/lit8 v0, v0, 0x3

    .line 205
    .line 206
    iput v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    .line 207
    .line 208
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 211
    .line 212
    .line 213
    monitor-exit p1

    .line 214
    goto :goto_1

    .line 215
    :catchall_0
    move-exception p0

    .line 216
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    throw p0

    .line 218
    :cond_7
    iget-boolean p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->finished:Z

    .line 219
    .line 220
    if-eqz p1, :cond_8

    .line 221
    .line 222
    const-string p0, "Shutdown-QmgPlayer"

    .line 223
    .line 224
    const-string p1, "image draw already finished"

    .line 225
    .line 226
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_8
    const-string p1, "Shutdown-QmgPlayer"

    .line 231
    .line 232
    const-string v0, "image buffer not ready"

    .line 233
    .line 234
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    .line 238
    .line 239
    iget-object p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    .line 240
    .line 241
    iget p0, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->maxSleep:I

    .line 242
    .line 243
    div-int/lit8 p0, p0, 0x2

    .line 244
    .line 245
    int-to-long v0, p0

    .line 246
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 247
    .line 248
    .line 249
    :goto_1
    return-void
.end method
