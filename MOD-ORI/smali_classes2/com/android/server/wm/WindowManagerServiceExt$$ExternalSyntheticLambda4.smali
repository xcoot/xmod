.class public final synthetic Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(IIILandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda4;->f$3:Landroid/os/IBinder;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    new-instance v3, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    .line 20
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const-string v7, "ScreenshotAnimation"

    .line 31
    .line 32
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x0

    .line 37
    if-nez v6, :cond_b

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v8, "SmartCapture"

    .line 48
    .line 49
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_0

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_1

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_1
    and-int/lit8 v6, v5, 0x10

    .line 66
    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-nez v6, :cond_3

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_3
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    .line 83
    .line 84
    if-eqz v6, :cond_4

    .line 85
    .line 86
    const/16 v6, 0xa2c

    .line 87
    .line 88
    if-ne v4, v6, :cond_4

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_4
    const/4 v4, 0x1

    .line 93
    if-ne v2, v4, :cond_5

    .line 94
    .line 95
    new-instance v2, Landroid/graphics/Region;

    .line 96
    .line 97
    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    .line 116
    .line 117
    iget v2, p1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 118
    .line 119
    if-ne v2, v4, :cond_6

    .line 120
    .line 121
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 122
    .line 123
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 124
    .line 125
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    add-int/2addr v2, v8

    .line 128
    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 129
    .line 130
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 131
    .line 132
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 133
    .line 134
    add-int/2addr v2, v8

    .line 135
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 136
    .line 137
    iget v2, v3, Landroid/graphics/Rect;->right:I

    .line 138
    .line 139
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 140
    .line 141
    sub-int/2addr v2, v8

    .line 142
    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 143
    .line 144
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 145
    .line 146
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 147
    .line 148
    sub-int/2addr v2, v6

    .line 149
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_6
    const/4 v6, 0x2

    .line 153
    if-eq v2, v6, :cond_7

    .line 154
    .line 155
    const/4 v6, 0x3

    .line 156
    if-ne v2, v6, :cond_8

    .line 157
    .line 158
    :cond_7
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 159
    .line 160
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 161
    .line 162
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 163
    .line 164
    add-int/2addr v2, v8

    .line 165
    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 166
    .line 167
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 170
    .line 171
    add-int/2addr v2, v8

    .line 172
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 173
    .line 174
    iget v2, v3, Landroid/graphics/Rect;->right:I

    .line 175
    .line 176
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 177
    .line 178
    sub-int/2addr v2, v8

    .line 179
    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 180
    .line 181
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 182
    .line 183
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 184
    .line 185
    sub-int/2addr v2, v6

    .line 186
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 187
    .line 188
    :cond_8
    :goto_0
    and-int/lit8 v2, v5, 0x28

    .line 189
    .line 190
    if-nez v2, :cond_9

    .line 191
    .line 192
    move v2, v4

    .line 193
    goto :goto_1

    .line 194
    :cond_9
    move v2, v7

    .line 195
    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_a

    .line 200
    .line 201
    if-eqz v2, :cond_b

    .line 202
    .line 203
    :cond_a
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 204
    .line 205
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-eq p1, p0, :cond_b

    .line 210
    .line 211
    move v7, v4

    .line 212
    :cond_b
    :goto_2
    return v7
.end method
