.class public interface abstract Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Ljava/util/concurrent/CompletableFuture;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Registering drag input channel"

    .line 7
    .line 8
    const-string v1, "WindowManager"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string p1, "Duplicate register of drag input channel"

    .line 19
    .line 20
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "Drag and Drop Input Consumer"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "DragState.showInputSurface"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 79
    .line 80
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 81
    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    move-object p1, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object p1, p1, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 87
    .line 88
    :goto_0
    if-nez p1, :cond_3

    .line 89
    .line 90
    const-string p1, "Drag is in progress but there is no drag window handle."

    .line 91
    .line 92
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 103
    .line 104
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 105
    .line 106
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 115
    .line 116
    const/4 v2, 0x1

    .line 117
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 129
    .line 130
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 135
    .line 136
    const v1, 0x7fffffff

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 144
    .line 145
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 161
    .line 162
    if-eqz p1, :cond_4

    .line 163
    .line 164
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 167
    .line 168
    iget v5, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 169
    .line 170
    const/4 v3, 0x0

    .line 171
    const/4 v4, 0x0

    .line 172
    move v2, v5

    .line 173
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 178
    .line 179
    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 180
    .line 181
    iget p1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 182
    .line 183
    invoke-virtual {v0, v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 184
    .line 185
    .line 186
    :cond_4
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 192
    .line 193
    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 204
    .line 205
    .line 206
    :goto_1
    new-instance v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    invoke-direct {v0, p2, p3, p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;Lcom/android/server/wm/DragState;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0
.end method
