.class public final Lcom/android/server/wm/WmScreenshotFileController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFileNumber:I

.field public mFocusedTaskNumber:I

.field public mRotationLayerNumber:I

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public mTargetWindowNumber:I


# virtual methods
.method public final saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v2, "screenshot"

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v2, "WindowManager"

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string p0, "Failed create directory"

    .line 32
    .line 33
    if-nez p3, :cond_0

    .line 34
    .line 35
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p1, "dir:"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    const-string/jumbo v0, "target_window"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/16 v3, 0x64

    .line 68
    .line 69
    const-string v4, ".jpg"

    .line 70
    .line 71
    const-string v5, "_d"

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mTargetWindowNumber:I

    .line 77
    .line 78
    if-ge v0, v3, :cond_2

    .line 79
    .line 80
    add-int/lit8 v6, v0, 0x1

    .line 81
    .line 82
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mTargetWindowNumber:I

    .line 83
    .line 84
    :goto_0
    move v6, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mTargetWindowNumber:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-string v0, "focused_task"

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    iget v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFocusedTaskNumber:I

    .line 98
    .line 99
    if-ge v0, v3, :cond_4

    .line 100
    .line 101
    add-int/lit8 v6, v0, 0x1

    .line 102
    .line 103
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFocusedTaskNumber:I

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFocusedTaskNumber:I

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    const-string/jumbo v0, "rotation"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    iget v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mRotationLayerNumber:I

    .line 119
    .line 120
    if-ge v0, v3, :cond_6

    .line 121
    .line 122
    add-int/lit8 v6, v0, 0x1

    .line 123
    .line 124
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mRotationLayerNumber:I

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_6
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mRotationLayerNumber:I

    .line 128
    .line 129
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p1, "_"

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    goto :goto_2

    .line 159
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    iget v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFileNumber:I

    .line 165
    .line 166
    add-int/lit8 v6, v0, 0x1

    .line 167
    .line 168
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFileNumber:I

    .line 169
    .line 170
    invoke-static {v0, p4, v5, v4, p1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    :goto_2
    new-instance p1, Ljava/io/File;

    .line 175
    .line 176
    invoke-direct {p1, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :try_start_0
    new-instance p4, Ljava/io/FileOutputStream;

    .line 180
    .line 181
    invoke-direct {p4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 185
    .line 186
    invoke-virtual {p2, p1, v3, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .line 188
    .line 189
    const-string p1, "Save fileName:"

    .line 190
    .line 191
    if-eqz p3, :cond_8

    .line 192
    .line 193
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    goto :goto_4

    .line 211
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .line 225
    .line 226
    :goto_3
    :try_start_3
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 227
    .line 228
    .line 229
    goto :goto_7

    .line 230
    :catch_0
    move-exception p0

    .line 231
    goto :goto_6

    .line 232
    :goto_4
    :try_start_4
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :catchall_1
    move-exception p1

    .line 237
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    :goto_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 241
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    .line 243
    .line 244
    :goto_7
    return-void
.end method
