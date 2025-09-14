.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 13
    .line 14
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/android/server/wm/Task;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, [I

    .line 59
    .line 60
    check-cast p1, Lcom/android/server/wm/Task;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    if-eq p1, v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    aget v0, p0, p1

    .line 87
    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    aput v0, p0, p1

    .line 91
    .line 92
    :cond_1
    return-void

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Landroid/graphics/Rect;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, [Z

    .line 100
    .line 101
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 102
    .line 103
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    .line 104
    .line 105
    if-nez v1, :cond_c

    .line 106
    .line 107
    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 108
    .line 109
    if-eqz v1, :cond_c

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_2

    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const/4 v2, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    move v5, v2

    .line 128
    move-object v4, v3

    .line 129
    :goto_0
    const/4 v6, 0x1

    .line 130
    if-ge v5, v1, :cond_8

    .line 131
    .line 132
    iget-object v7, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 133
    .line 134
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 139
    .line 140
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 141
    .line 142
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 143
    .line 144
    iget-boolean v9, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 145
    .line 146
    if-eqz v9, :cond_7

    .line 147
    .line 148
    iget v9, v7, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 149
    .line 150
    if-nez v9, :cond_7

    .line 151
    .line 152
    if-eq v8, v6, :cond_3

    .line 153
    .line 154
    const/4 v6, 0x2

    .line 155
    if-eq v8, v6, :cond_3

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_3
    iget-object v6, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 159
    .line 160
    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 161
    .line 162
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 167
    .line 168
    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 169
    .line 170
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    iget-boolean v9, v7, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 175
    .line 176
    if-eqz v9, :cond_5

    .line 177
    .line 178
    if-nez v4, :cond_4

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    iget-object v9, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 182
    .line 183
    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 184
    .line 185
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-gt v9, v8, :cond_7

    .line 190
    .line 191
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 192
    .line 193
    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 194
    .line 195
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-gt v8, v6, :cond_7

    .line 200
    .line 201
    :goto_1
    move-object v4, v7

    .line 202
    goto :goto_3

    .line 203
    :cond_5
    if-nez v3, :cond_6

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_6
    iget-object v9, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 207
    .line 208
    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 209
    .line 210
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-gt v9, v8, :cond_7

    .line 215
    .line 216
    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 217
    .line 218
    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 219
    .line 220
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-gt v8, v6, :cond_7

    .line 225
    .line 226
    :goto_2
    move-object v3, v7

    .line 227
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_8
    if-eqz v3, :cond_9

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_9
    move-object v3, v4

    .line 234
    :goto_4
    if-nez v3, :cond_a

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    aget-boolean p1, p0, v2

    .line 238
    .line 239
    if-nez p1, :cond_b

    .line 240
    .line 241
    aput-boolean v6, p0, v2

    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 244
    .line 245
    .line 246
    :cond_b
    sget-object p0, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 247
    .line 248
    iget-object p1, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 249
    .line 250
    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 251
    .line 252
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 253
    .line 254
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    iget v11, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 268
    .line 269
    iget v12, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 270
    .line 271
    move-object v8, p0

    .line 272
    invoke-virtual/range {v7 .. v12}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 280
    .line 281
    .line 282
    :cond_c
    :goto_5
    return-void

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
