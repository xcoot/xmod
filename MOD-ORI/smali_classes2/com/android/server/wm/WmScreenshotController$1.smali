.class public final Lcom/android/server/wm/WmScreenshotController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic val$info:Lcom/android/server/wm/WmScreenshotInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;Lcom/android/server/wm/WmScreenshotInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$1;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController$1;->val$info:Lcom/android/server/wm/WmScreenshotInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/WmScreenshotController$1;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$1;->val$info:Lcom/android/server/wm/WmScreenshotInfo;

    .line 4
    .line 5
    const-string v1, "Send screenshot message failed, "

    .line 6
    .line 7
    const-string v2, "Get screenshot display failed, "

    .line 8
    .line 9
    iget-object v3, p1, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, p1, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    monitor-exit v3

    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v5, v0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    .line 31
    .line 32
    iput v5, v4, Landroid/os/Message;->what:I

    .line 33
    .line 34
    new-instance v5, Landroid/os/Messenger;

    .line 35
    .line 36
    new-instance v6, Lcom/android/server/wm/WmScreenshotController$2;

    .line 37
    .line 38
    iget-object v7, p1, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-direct {v6, p1, v7, p0}, Lcom/android/server/wm/WmScreenshotController$2;-><init>(Lcom/android/server/wm/WmScreenshotController;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v5, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 48
    .line 49
    .line 50
    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 51
    .line 52
    new-instance p0, Lcom/android/internal/util/ScreenshotRequest$Builder;

    .line 53
    .line 54
    iget v5, v0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    .line 55
    .line 56
    const/4 v6, 0x5

    .line 57
    invoke-direct {p0, v5, v6}, Lcom/android/internal/util/ScreenshotRequest$Builder;-><init>(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/internal/util/ScreenshotRequest$Builder;->build()Lcom/android/internal/util/ScreenshotRequest;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iput-object p0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    .line 66
    new-instance p0, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v5, "sweepDirection"

    .line 72
    .line 73
    .line 74
    iget v6, v0, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    .line 75
    .line 76
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    const-string v5, "capturedDisplay"

    .line 80
    .line 81
    iget v6, v0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    .line 82
    .line 83
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    const-string v5, "capturedOrigin"

    .line 87
    .line 88
    iget v6, v0, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    .line 89
    .line 90
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    const-string v5, "captureSharedBundle"

    .line 94
    .line 95
    iget-object v6, v0, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    .line 96
    .line 97
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    .line 99
    .line 100
    iget-object v5, p1, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    .line 102
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 103
    .line 104
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 105
    .line 106
    .line 107
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    iget-object v6, p1, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 109
    .line 110
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 111
    .line 112
    iget v7, v0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-eqz v6, :cond_8

    .line 119
    .line 120
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 121
    .line 122
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    const/4 v8, 0x1

    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_1

    .line 133
    .line 134
    move v2, v8

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    move v2, v7

    .line 137
    :goto_0
    iput v2, v4, Landroid/os/Message;->arg1:I

    .line 138
    .line 139
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 140
    .line 141
    iget-object v9, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 142
    .line 143
    if-eqz v9, :cond_2

    .line 144
    .line 145
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-nez v9, :cond_3

    .line 150
    .line 151
    :cond_2
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 152
    .line 153
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_4

    .line 160
    .line 161
    iget-object v2, v2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_4

    .line 168
    .line 169
    :cond_3
    move v7, v8

    .line 170
    :cond_4
    iput v7, v4, Landroid/os/Message;->arg2:I

    .line 171
    .line 172
    invoke-virtual {p1, p0, v6}, Lcom/android/server/wm/WmScreenshotController;->putSystemBarHeight(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V

    .line 173
    .line 174
    .line 175
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 176
    .line 177
    if-eqz v2, :cond_5

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    goto :goto_1

    .line 184
    :cond_5
    const/4 v2, 0x0

    .line 185
    :goto_1
    if-eqz v2, :cond_7

    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    if-nez v7, :cond_6

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    iget-object v7, p1, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 199
    .line 200
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 201
    .line 202
    .line 203
    const-string/jumbo v2, "stackBounds"

    .line 204
    .line 205
    .line 206
    iget-object v7, p1, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 207
    .line 208
    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 209
    .line 210
    .line 211
    :cond_7
    :goto_2
    invoke-static {p0, v6}, Lcom/android/server/wm/WmScreenshotController;->putCutoutSafeInsets(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V

    .line 212
    .line 213
    .line 214
    iget v0, v0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    .line 215
    .line 216
    const/16 v2, 0x64

    .line 217
    .line 218
    if-ne v0, v2, :cond_9

    .line 219
    .line 220
    invoke-virtual {p1, p0, v6}, Lcom/android/server/wm/WmScreenshotController;->putFocusedWindowInfo(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_9

    .line 225
    .line 226
    iput v8, v4, Landroid/os/Message;->what:I

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :catchall_1
    move-exception p0

    .line 230
    goto :goto_6

    .line 231
    :cond_8
    const-string p1, "WindowManager"

    .line 232
    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget v0, v0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    .line 239
    .line 240
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    :cond_9
    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    .line 256
    .line 257
    :try_start_3
    new-instance p0, Landroid/os/Messenger;

    .line 258
    .line 259
    invoke-direct {p0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :catch_0
    move-exception p0

    .line 267
    :try_start_4
    const-string p1, "WindowManager"

    .line 268
    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    :goto_5
    return-void

    .line 286
    :goto_6
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 287
    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 288
    .line 289
    .line 290
    throw p0

    .line 291
    :goto_7
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 292
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method
