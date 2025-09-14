.class public final Lcom/android/server/wm/DisplayFrames;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ID_DISPLAY_CUTOUT_BOTTOM:I

.field public static final ID_DISPLAY_CUTOUT_LEFT:I

.field public static final ID_DISPLAY_CUTOUT_RIGHT:I

.field public static final ID_DISPLAY_CUTOUT_TOP:I


# instance fields
.field public final mDisplayCutoutSafe:Landroid/graphics/Rect;

.field public mHeight:I

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mRotation:I

.field public final mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

.field public final mUnrestricted:Landroid/graphics/Rect;

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_LEFT:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_TOP:I

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_RIGHT:I

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_BOTTOM:I

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;Lcom/android/server/wm/UdcCutoutPolicy;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 4
    iput-object p7, p0, Lcom/android/server/wm/DisplayFrames;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 5
    iput-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 6
    iget v2, p2, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayFrames;->update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z

    return-void
.end method


# virtual methods
.method public final update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p2

    .line 6
    .line 7
    move/from16 v11, p3

    .line 8
    .line 9
    move-object/from16 v12, p4

    .line 10
    .line 11
    move-object/from16 v13, p5

    .line 12
    .line 13
    move-object/from16 v14, p6

    .line 14
    .line 15
    iget-object v15, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget-object v7, v0, Lcom/android/server/wm/DisplayFrames;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    iget-object v1, v7, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 25
    .line 26
    iget-object v2, v7, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    .line 27
    .line 28
    invoke-virtual {v1, v9, v2}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 33
    .line 34
    iget-object v5, v1, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 35
    .line 36
    iget-object v1, v7, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    new-instance v3, Landroid/view/DisplayInfo;

    .line 41
    .line 42
    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 43
    .line 44
    .line 45
    iput v9, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 46
    .line 47
    iput v10, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 48
    .line 49
    iput v11, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 50
    .line 51
    new-instance v4, Lcom/android/server/wm/DisplayFrames;

    .line 52
    .line 53
    new-instance v2, Landroid/view/InsetsState;

    .line 54
    .line 55
    invoke-direct {v2, v15, v6}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 56
    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    move-object v1, v4

    .line 61
    move-object/from16 v17, v4

    .line 62
    .line 63
    move-object v4, v5

    .line 64
    move-object/from16 v5, p5

    .line 65
    .line 66
    move-object/from16 v6, p6

    .line 67
    .line 68
    move-object v14, v7

    .line 69
    move-object/from16 v7, p7

    .line 70
    .line 71
    move-object/from16 v18, v8

    .line 72
    .line 73
    move-object/from16 v8, v16

    .line 74
    .line 75
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DisplayFrames;-><init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;Lcom/android/server/wm/UdcCutoutPolicy;)V

    .line 76
    .line 77
    .line 78
    move-object/from16 v1, v17

    .line 79
    .line 80
    iput-object v1, v14, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 81
    .line 82
    const/4 v14, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move-object v14, v7

    .line 85
    move-object/from16 v18, v8

    .line 86
    .line 87
    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 88
    .line 89
    const/4 v8, 0x1

    .line 90
    invoke-virtual {v1, v15, v8}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v14, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 94
    .line 95
    move/from16 v2, p1

    .line 96
    .line 97
    move/from16 v3, p2

    .line 98
    .line 99
    move/from16 v4, p3

    .line 100
    .line 101
    move-object/from16 v6, p5

    .line 102
    .line 103
    move-object/from16 v7, p6

    .line 104
    .line 105
    move v14, v8

    .line 106
    move-object/from16 v8, p7

    .line 107
    .line 108
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/DisplayFrames;->update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    move v14, v6

    .line 113
    move-object/from16 v18, v8

    .line 114
    .line 115
    :goto_0
    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    if-ne v1, v9, :cond_2

    .line 119
    .line 120
    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    .line 121
    .line 122
    if-ne v1, v10, :cond_2

    .line 123
    .line 124
    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    .line 125
    .line 126
    if-ne v1, v11, :cond_2

    .line 127
    .line 128
    iget-object v1, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1, v12}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_2

    .line 139
    .line 140
    invoke-virtual {v15}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1, v13}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    invoke-virtual {v15}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    move-object/from16 v3, p6

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_3

    .line 161
    .line 162
    return v2

    .line 163
    :cond_2
    move-object/from16 v3, p6

    .line 164
    .line 165
    :cond_3
    iput v9, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 166
    .line 167
    iput v10, v0, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    .line 168
    .line 169
    iput v11, v0, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 172
    .line 173
    invoke-virtual {v0, v2, v2, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v15, v0}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v15, v12}, Landroid/view/InsetsState;->setDisplayCutout(Landroid/view/DisplayCutout;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v15, v13}, Landroid/view/InsetsState;->setRoundedCorners(Landroid/view/RoundedCorners;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v15, v3}, Landroid/view/InsetsState;->setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V

    .line 186
    .line 187
    .line 188
    move-object/from16 v1, p7

    .line 189
    .line 190
    invoke-virtual {v15, v1}, Landroid/view/InsetsState;->setDisplayShape(Landroid/view/DisplayShape;)V

    .line 191
    .line 192
    .line 193
    move-object/from16 v1, v18

    .line 194
    .line 195
    invoke-virtual {v15, v1}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    .line 196
    .line 197
    .line 198
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 199
    .line 200
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 201
    .line 202
    sget v4, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_LEFT:I

    .line 203
    .line 204
    if-le v2, v3, :cond_4

    .line 205
    .line 206
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-virtual {v15, v4, v2}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 215
    .line 216
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 217
    .line 218
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 219
    .line 220
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 221
    .line 222
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2, v0}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_4
    invoke-virtual {v15, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 231
    .line 232
    .line 233
    :goto_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 234
    .line 235
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 236
    .line 237
    sget v4, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_TOP:I

    .line 238
    .line 239
    if-le v2, v3, :cond_5

    .line 240
    .line 241
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-virtual {v15, v4, v2}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 250
    .line 251
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 252
    .line 253
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 254
    .line 255
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 256
    .line 257
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v2, v0}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_5
    invoke-virtual {v15, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 266
    .line 267
    .line 268
    :goto_2
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 269
    .line 270
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 271
    .line 272
    sget v4, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_RIGHT:I

    .line 273
    .line 274
    if-ge v2, v3, :cond_6

    .line 275
    .line 276
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    invoke-virtual {v15, v4, v2}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 285
    .line 286
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 287
    .line 288
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 289
    .line 290
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 291
    .line 292
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2, v0}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_6
    invoke-virtual {v15, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 301
    .line 302
    .line 303
    :goto_3
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 304
    .line 305
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 306
    .line 307
    sget v4, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_BOTTOM:I

    .line 308
    .line 309
    if-ge v2, v3, :cond_7

    .line 310
    .line 311
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-virtual {v15, v4, v2}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 320
    .line 321
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 322
    .line 323
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 324
    .line 325
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 326
    .line 327
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v1, v0}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 332
    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_7
    invoke-virtual {v15, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 336
    .line 337
    .line 338
    :goto_4
    return v14
.end method
