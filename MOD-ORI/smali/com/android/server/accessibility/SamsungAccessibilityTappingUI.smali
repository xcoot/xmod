.class public final Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mDisplay:Landroid/view/Display;

.field public final mHandler:Landroid/os/Handler;

.field public final mIgnoreImageView:Landroid/widget/ImageView;

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public final mProgressImageView:Landroid/widget/ImageView;

.field public final mStandbyImageView:Landroid/widget/ImageView;

.field public final mTapImageView:Landroid/widget/ImageView;

.field public final mUiThread:Ljava/lang/Thread;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final navigationBarHeight:I

.field public final size:I

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mUiThread:Ljava/lang/Thread;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const v1, 0x10500d2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->size:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v1, 0x2

    .line 48
    if-ne p1, v1, :cond_0

    .line 49
    .line 50
    const/high16 p1, 0x3f000000    # 0.5f

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 54
    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-string/jumbo v2, "window"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/view/WindowManager;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 67
    .line 68
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mDisplay:Landroid/view/Display;

    .line 73
    .line 74
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 75
    .line 76
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 80
    .line 81
    const/4 v2, -0x2

    .line 82
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 83
    .line 84
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 85
    .line 86
    const/16 v2, 0x7d6

    .line 87
    .line 88
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 89
    .line 90
    const/16 v2, 0x708

    .line 91
    .line 92
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 93
    .line 94
    const/4 v2, -0x3

    .line 95
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 96
    .line 97
    const/16 v2, 0x33

    .line 98
    .line 99
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    .line 101
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 102
    .line 103
    const/high16 v3, 0x20000

    .line 104
    .line 105
    or-int/2addr v2, v3

    .line 106
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const v2, 0x1090070

    .line 118
    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 136
    .line 137
    const/16 v2, 0x8

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 143
    .line 144
    const v3, 0x1020628

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Landroid/widget/ImageView;

    .line 152
    .line 153
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    .line 154
    .line 155
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 156
    .line 157
    const v3, 0x1020626

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Landroid/widget/ImageView;

    .line 165
    .line 166
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 169
    .line 170
    const v3, 0x1020622

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroid/widget/ImageView;

    .line 178
    .line 179
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 182
    .line 183
    const v3, 0x1020624

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Landroid/widget/ImageView;

    .line 191
    .line 192
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    .line 210
    .line 211
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    .line 215
    .line 216
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    .line 220
    .line 221
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    .line 225
    .line 226
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    .line 230
    .line 231
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 237
    .line 238
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 239
    .line 240
    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    const v1, 0x1110227

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-eqz p1, :cond_1

    .line 257
    .line 258
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const v0, 0x10502c9

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    :cond_1
    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    .line 272
    .line 273
    :cond_2
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mUiThread:Ljava/lang/Thread;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
