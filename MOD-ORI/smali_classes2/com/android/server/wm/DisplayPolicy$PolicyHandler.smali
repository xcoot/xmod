.class public final Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    if-eq v0, v1, :cond_c

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-eq v0, v1, :cond_9

    .line 12
    .line 13
    const/16 v1, 0x6b

    .line 14
    .line 15
    const/16 v4, 0x66

    .line 16
    .line 17
    const/16 v5, 0x65

    .line 18
    .line 19
    const-string v6, "WindowManager"

    .line 20
    .line 21
    if-eq v0, v1, :cond_5

    .line 22
    .line 23
    const/16 v1, 0x6c

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "TouchEventView is not added"

    .line 34
    .line 35
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const-string v0, "mIsKnoxZtStarted is false"

    .line 44
    .line 45
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ne v1, v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v7, "Exception in unregistering mTouchEventView :- "

    .line 69
    .line 70
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 84
    .line 85
    :goto_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 86
    .line 87
    if-ne p1, v5, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_4
    if-ne p1, v4, :cond_f

    .line 95
    .line 96
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 102
    .line 103
    if-eq p1, v5, :cond_6

    .line 104
    .line 105
    if-ne p1, v4, :cond_f

    .line 106
    .line 107
    :cond_6
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    const-string p0, "TouchEventView is already added"

    .line 112
    .line 113
    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 119
    .line 120
    if-nez p1, :cond_8

    .line 121
    .line 122
    new-instance p1, Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    .line 129
    .line 130
    invoke-direct {p1, v0, v1}, Lcom/android/server/knox/zt/usertrust/TouchEventView;-><init>(Landroid/content/Context;Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;)V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 134
    .line 135
    :cond_8
    const-string p1, "enableTouchListener debugmode:false"

    .line 136
    .line 137
    invoke-static {v6, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->setDebugmode(Z)V

    .line 143
    .line 144
    .line 145
    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catch_1
    move-exception p1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v1, "Exception in registering mTouchEventView :- "

    .line 157
    .line 158
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    .line 178
    .line 179
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 184
    .line 185
    if-nez p1, :cond_a

    .line 186
    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 190
    .line 191
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 192
    .line 193
    if-nez v1, :cond_b

    .line 194
    .line 195
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 196
    .line 197
    .line 198
    :cond_b
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    const-class v0, Landroid/view/WindowManager;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Landroid/view/WindowManager;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 209
    .line 210
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 218
    .line 219
    if-eqz p1, :cond_d

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_d
    new-instance p1, Lcom/android/internal/widget/PointerLocationView;

    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    invoke-direct {p1, v0}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 230
    .line 231
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 232
    .line 233
    .line 234
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 235
    .line 236
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 237
    .line 238
    .line 239
    const/16 v0, 0x7df

    .line 240
    .line 241
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 242
    .line 243
    const/16 v0, 0x118

    .line 244
    .line 245
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 246
    .line 247
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 248
    .line 249
    or-int/lit8 v0, v0, 0x10

    .line 250
    .line 251
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 252
    .line 253
    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 254
    .line 255
    .line 256
    const/4 v0, 0x3

    .line 257
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 258
    .line 259
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_e

    .line 264
    .line 265
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 266
    .line 267
    const/high16 v1, 0x1000000

    .line 268
    .line 269
    or-int/2addr v0, v1

    .line 270
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 271
    .line 272
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 273
    .line 274
    or-int/lit8 v0, v0, 0x2

    .line 275
    .line 276
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 277
    .line 278
    :cond_e
    const/4 v0, -0x3

    .line 279
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 280
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v1, "PointerLocation - display "

    .line 284
    .line 285
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 289
    .line 290
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 291
    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 303
    .line 304
    or-int/2addr v0, v2

    .line 305
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 306
    .line 307
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 308
    .line 309
    const-class v2, Landroid/view/WindowManager;

    .line 310
    .line 311
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Landroid/view/WindowManager;

    .line 316
    .line 317
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 318
    .line 319
    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    .line 321
    .line 322
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 323
    .line 324
    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 325
    .line 326
    .line 327
    :cond_f
    :goto_3
    return-void
.end method
