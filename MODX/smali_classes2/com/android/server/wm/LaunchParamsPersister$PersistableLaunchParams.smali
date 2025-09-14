.class public final Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public mDisplayDeviceType:I

.field public mDisplayUniqueId:Ljava/lang/String;

.field public final mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

.field public final mNewDexPersistBoundsParams:Lcom/android/server/wm/NewDexPersistBoundsParams;

.field public mOrientation:I

.field public mTimestamp:J

.field public mWindowLayoutAffinity:Ljava/lang/String;

.field public mWindowingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/android/server/wm/FreeformPersistBoundsParams;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/android/server/wm/NewDexPersistBoundsParams;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mNewDexPersistBoundsParams:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final restore(Ljava/io/File;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    move v4, v3

    .line 6
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    if-ge v4, v5, :cond_d

    .line 11
    .line 12
    invoke-interface {p2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-interface {p2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    sparse-switch v7, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    :goto_1
    move v6, v1

    .line 31
    goto :goto_2

    .line 32
    :sswitch_0
    const-string/jumbo v7, "window_layout_affinity"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v6, 0x5

    .line 43
    goto :goto_2

    .line 44
    :sswitch_1
    const-string/jumbo v7, "windowing_mode"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v6, 0x4

    .line 55
    goto :goto_2

    .line 56
    :sswitch_2
    const-string v7, "bounds"

    .line 57
    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v6, 0x3

    .line 66
    goto :goto_2

    .line 67
    :sswitch_3
    const-string/jumbo v7, "orientation"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v6, v0

    .line 78
    goto :goto_2

    .line 79
    :sswitch_4
    const-string v7, "display_unique_id"

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move v6, v2

    .line 89
    goto :goto_2

    .line 90
    :sswitch_5
    const-string v7, "display_device_type"

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_5

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move v6, v3

    .line 100
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 101
    .line 102
    .line 103
    invoke-interface {p2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    iget-object v7, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    sparse-switch v8, :sswitch_data_1

    .line 120
    .line 121
    .line 122
    :goto_3
    move v6, v1

    .line 123
    goto :goto_4

    .line 124
    :sswitch_6
    const-string v8, "freeform_bounds"

    .line 125
    .line 126
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-nez v6, :cond_6

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    move v6, v0

    .line 134
    goto :goto_4

    .line 135
    :sswitch_7
    const-string v8, "display_bounds"

    .line 136
    .line 137
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-nez v6, :cond_7

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    move v6, v2

    .line 145
    goto :goto_4

    .line 146
    :sswitch_8
    const-string/jumbo v8, "rotation"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-nez v6, :cond_8

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_8
    move v6, v3

    .line 157
    :goto_4
    packed-switch v6, :pswitch_data_1

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :pswitch_0
    invoke-static {v5}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    if-eqz v6, :cond_9

    .line 166
    .line 167
    iget-object v7, v7, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 168
    .line 169
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :pswitch_1
    invoke-static {v5}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-eqz v6, :cond_9

    .line 178
    .line 179
    iget-object v7, v7, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 180
    .line 181
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :pswitch_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    iput v6, v7, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 190
    .line 191
    :cond_9
    :goto_5
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PERSIST_BOUNDS:Z

    .line 192
    .line 193
    if-eqz v6, :cond_c

    .line 194
    .line 195
    invoke-interface {p2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    iget-object v7, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mNewDexPersistBoundsParams:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    const-string/jumbo v8, "new_dex_windowing_mode"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-nez v8, :cond_b

    .line 215
    .line 216
    const-string/jumbo v8, "new_dex_next_gen_bounds"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-nez v6, :cond_a

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_a
    invoke-static {v5}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    if-eqz v5, :cond_c

    .line 231
    .line 232
    iget-object v6, v7, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexNextGenBounds:Landroid/graphics/Rect;

    .line 233
    .line 234
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    iput v5, v7, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :pswitch_3
    iput-object v5, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :pswitch_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    iput v5, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :pswitch_5
    invoke-static {v5}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    if-eqz v5, :cond_c

    .line 260
    .line 261
    iget-object v6, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 262
    .line 263
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :pswitch_6
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    iput v5, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :pswitch_7
    iput-object v5, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :pswitch_8
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    iput v5, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    .line 282
    .line 283
    :cond_c
    :goto_6
    add-int/2addr v4, v2

    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 287
    .line 288
    .line 289
    move-result-wide p1

    .line 290
    iput-wide p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 291
    .line 292
    return-void

    .line 293
    :sswitch_data_0
    .sparse-switch
        -0x64fdec7a -> :sswitch_5
        -0x595e6ef4 -> :sswitch_4
        -0x55cd0a30 -> :sswitch_3
        -0x5272094b -> :sswitch_2
        0x2ca2e3d0 -> :sswitch_1
        0x772fa04e -> :sswitch_0
    .end sparse-switch

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :sswitch_data_1
    .sparse-switch
        -0x266f082 -> :sswitch_8
        0x4c91dcd2 -> :sswitch_7
        0x5446b0a4 -> :sswitch_6
    .end sparse-switch

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "display_unique_id"

    .line 5
    .line 6
    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "windowing_mode"

    .line 10
    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 13
    .line 14
    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "bounds"

    .line 24
    .line 25
    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string/jumbo v2, "window_layout_affinity"

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    .line 37
    .line 38
    :cond_0
    iget v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string/jumbo v2, "orientation"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "display_device_type"

    .line 61
    .line 62
    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 66
    .line 67
    iget-object v2, v0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "freeform_bounds"

    .line 74
    .line 75
    invoke-interface {p1, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    iget-object v2, v0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "display_bounds"

    .line 85
    .line 86
    invoke-interface {p1, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    .line 88
    .line 89
    iget v0, v0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string/jumbo v2, "rotation"

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PERSIST_BOUNDS:Z

    .line 102
    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mNewDexPersistBoundsParams:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 106
    .line 107
    iget v0, p0, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string/jumbo v2, "new_dex_windowing_mode"

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexNextGenBounds:Landroid/graphics/Rect;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string/jumbo v0, "new_dex_next_gen_bounds"

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v1, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    .line 130
    .line 131
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PersistableLaunchParams{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, " windowingMode="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, " displayUniqueId="

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, " bounds="

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, " launchParamsAffinity="

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, " timestamp="

    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-wide v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 96
    .line 97
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v2, " orientation="

    .line 110
    .line 111
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 127
    .line 128
    if-eqz v1, :cond_1

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, " displayDeviceType="

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PERSIST_BOUNDS:Z

    .line 155
    .line 156
    if-eqz v1, :cond_2

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mNewDexPersistBoundsParams:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 159
    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    :cond_2
    const-string p0, " }"

    .line 164
    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0
.end method
