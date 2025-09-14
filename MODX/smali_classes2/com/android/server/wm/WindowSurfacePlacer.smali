.class public final Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeferDepth:I

.field public mDeferredRequests:I

.field public mInLayout:Z

.field public mLayoutRepeatCount:I

.field public final mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

.field public mPrintLayoutCaller:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mTraversalScheduled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final performSurfacePlacement(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    .line 9
    .line 10
    add-int/2addr p1, v1

    .line 11
    iput p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 p1, 0x6

    .line 15
    move v0, p1

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    const-string v3, "WindowManager"

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v5, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 63
    .line 64
    iget-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    .line 65
    .line 66
    if-nez v4, :cond_4

    .line 67
    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 71
    .line 72
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_6

    .line 79
    .line 80
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 91
    .line 92
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 99
    .line 100
    const-string v4, "WindowManager"

    .line 101
    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v6, "Force removing: "

    .line 105
    .line 106
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const-string v3, "WindowManager"

    .line 124
    .line 125
    const-string v4, "Due to memory failure, waiting a bit for next layout"

    .line 126
    .line 127
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    new-instance v3, Ljava/lang/Object;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    monitor-enter v3

    .line 136
    const-wide/16 v4, 0xfa

    .line 137
    .line 138
    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    goto :goto_2

    .line 144
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit v3

    .line 145
    goto :goto_3

    .line 146
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw p0

    .line 148
    :cond_6
    :goto_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 149
    .line 150
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 153
    .line 154
    .line 155
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 156
    .line 157
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 158
    .line 159
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_8

    .line 166
    .line 167
    iget v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 168
    .line 169
    add-int/2addr v3, v1

    .line 170
    iput v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 171
    .line 172
    if-ge v3, p1, :cond_7

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :catch_1
    move-exception v3

    .line 179
    goto :goto_5

    .line 180
    :cond_7
    const-string v3, "WindowManager"

    .line 181
    .line 182
    const-string v4, "Performed 6 layouts in a row. Skipping"

    .line 183
    .line 184
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 188
    .line 189
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPrintLayoutCaller:Z

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_8
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 193
    .line 194
    :goto_4
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 195
    .line 196
    iget-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 197
    .line 198
    if-eqz v4, :cond_9

    .line 199
    .line 200
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-nez v3, :cond_9

    .line 207
    .line 208
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 209
    .line 210
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 211
    .line 212
    const/16 v4, 0x13

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    .line 216
    .line 217
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 218
    .line 219
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :goto_5
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 226
    .line 227
    const-string v4, "WindowManager"

    .line 228
    .line 229
    const-string v5, "Unhandled exception while laying out windows"

    .line 230
    .line 231
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .line 233
    .line 234
    :cond_9
    :goto_6
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 235
    .line 236
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 237
    .line 238
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    .line 239
    .line 240
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    .line 242
    .line 243
    add-int/lit8 v0, v0, -0x1

    .line 244
    .line 245
    iget-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 246
    .line 247
    if-eqz v3, :cond_a

    .line 248
    .line 249
    if-gtz v0, :cond_1

    .line 250
    .line 251
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 252
    .line 253
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 254
    .line 255
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 256
    .line 257
    return-void
.end method

.method public final requestTraversal()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    .line 14
    .line 15
    add-int/2addr v1, v0

    .line 16
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
