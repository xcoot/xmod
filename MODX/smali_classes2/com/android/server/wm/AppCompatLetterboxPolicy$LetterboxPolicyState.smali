.class public final Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLetterbox:Lcom/android/server/wm/Letterbox;

.field public final synthetic this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final isRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 5
    .line 6
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v0, v2, :cond_2

    .line 13
    .line 14
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    :cond_2
    :goto_0
    return-void

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_12

    .line 31
    .line 32
    if-eq v0, p1, :cond_4

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eq v0, p1, :cond_4

    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_12

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 53
    .line 54
    iget-boolean v0, p1, Lcom/android/server/wm/Letterbox;->mLastUseFullWindowSurface:Z

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, 0x0

    .line 61
    if-eq v0, v2, :cond_5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_2

    .line 77
    :cond_6
    iget-object p1, p1, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 78
    .line 79
    array-length v0, p1

    .line 80
    move v2, v3

    .line 81
    :goto_1
    if-ge v2, v0, :cond_8

    .line 82
    .line 83
    aget-object v4, p1, v2

    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_7

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_8
    move v1, v3

    .line 96
    :goto_2
    if-eqz v1, :cond_12

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iget-boolean v0, p0, Lcom/android/server/wm/Letterbox;->mLastUseFullWindowSurface:Z

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 109
    .line 110
    if-eq v0, p1, :cond_f

    .line 111
    .line 112
    iput-boolean p1, p0, Lcom/android/server/wm/Letterbox;->mLastUseFullWindowSurface:Z

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    if-eqz p1, :cond_b

    .line 116
    .line 117
    iget-object p1, v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 120
    .line 121
    .line 122
    iget-object p1, v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 123
    .line 124
    if-nez p1, :cond_9

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mInputWindow:Lcom/android/server/wm/WindowState;

    .line 127
    .line 128
    if-eqz p0, :cond_9

    .line 129
    .line 130
    invoke-virtual {v2, p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 131
    .line 132
    .line 133
    :cond_9
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 134
    .line 135
    .line 136
    array-length p0, v1

    .line 137
    :goto_3
    if-ge v3, p0, :cond_12

    .line 138
    .line 139
    aget-object p1, v1, v3

    .line 140
    .line 141
    iget-object p3, p1, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 142
    .line 143
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 144
    .line 145
    .line 146
    iget-object p3, p1, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 147
    .line 148
    if-eqz p3, :cond_a

    .line 149
    .line 150
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 151
    .line 152
    .line 153
    iput-object v0, p1, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 154
    .line 155
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_b
    array-length p1, v1

    .line 162
    :goto_4
    if-ge v3, p1, :cond_d

    .line 163
    .line 164
    aget-object v4, v1, v3

    .line 165
    .line 166
    iget-object v5, v4, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 167
    .line 168
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 169
    .line 170
    .line 171
    iget-object v5, v4, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 172
    .line 173
    if-nez v5, :cond_c

    .line 174
    .line 175
    iget-object v5, p0, Lcom/android/server/wm/Letterbox;->mInputWindow:Lcom/android/server/wm/WindowState;

    .line 176
    .line 177
    if-eqz v5, :cond_c

    .line 178
    .line 179
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 180
    .line 181
    .line 182
    :cond_c
    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 183
    .line 184
    .line 185
    add-int/lit8 v3, v3, 0x1

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_d
    iget-object p0, v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 191
    .line 192
    .line 193
    iget-object p0, v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 194
    .line 195
    if-eqz p0, :cond_e

    .line 196
    .line 197
    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 198
    .line 199
    .line 200
    iput-object v0, v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 201
    .line 202
    :cond_e
    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 203
    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-eqz p0, :cond_10

    .line 211
    .line 212
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 213
    .line 214
    .line 215
    array-length p0, v1

    .line 216
    :goto_5
    if-ge v3, p0, :cond_12

    .line 217
    .line 218
    aget-object p1, v1, v3

    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 221
    .line 222
    .line 223
    add-int/lit8 v3, v3, 0x1

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_10
    array-length p0, v1

    .line 227
    :goto_6
    if-ge v3, p0, :cond_11

    .line 228
    .line 229
    aget-object p1, v1, v3

    .line 230
    .line 231
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 232
    .line 233
    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_11
    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 238
    .line 239
    .line 240
    :cond_12
    :goto_7
    return-void
.end method
