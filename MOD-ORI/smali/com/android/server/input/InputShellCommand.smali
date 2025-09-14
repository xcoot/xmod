.class public final Lcom/android/server/input/InputShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MODIFIER:Ljava/util/Map;

.field public static final SOURCES:Ljava/util/Map;


# instance fields
.field public final mInputEventInjector:Ljava/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x71

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x3000

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x72

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/16 v2, 0x5000

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x39

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/16 v2, 0x12

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x3a

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/16 v2, 0x22

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x3b

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/16 v2, 0x41

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x3c

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/16 v2, 0x81

    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x75

    .line 97
    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const/high16 v2, 0x30000

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x76

    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const/high16 v2, 0x50000

    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    .line 131
    .line 132
    new-instance v0, Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0x101

    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string/jumbo v2, "keyboard"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    const/16 v1, 0x201

    .line 150
    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string/jumbo v2, "dpad"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    const/16 v1, 0x401

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const-string/jumbo v2, "gamepad"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x1002

    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    const-string/jumbo v2, "touchscreen"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    const/16 v1, 0x2002

    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string/jumbo v2, "mouse"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const/16 v1, 0x4002

    .line 198
    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const-string/jumbo v2, "stylus"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    const v1, 0x10004

    .line 210
    .line 211
    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string/jumbo v2, "trackball"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const v1, 0x100008

    .line 223
    .line 224
    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const-string/jumbo v2, "touchpad"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    const/high16 v1, 0x200000

    .line 236
    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const-string/jumbo v2, "touchnavigation"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    const v1, 0x1000010

    .line 248
    .line 249
    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string/jumbo v2, "joystick"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    const/high16 v1, 0x400000

    .line 261
    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    const-string/jumbo v2, "rotaryencoder"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    sput-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    .line 277
    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    .line 5
    .line 6
    return-void
.end method

.method public static sleep(J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    throw p1
.end method


# virtual methods
.method public final injectKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p2, 0x2

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final injectMotionEvent(IIJJFFFI)V
    .locals 16

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 4
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move/from16 v15, p10

    .line 5
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJLjava/util/Map;I)V

    return-void
.end method

.method public final injectMotionEvent(IIJJLjava/util/Map;I)V
    .locals 18

    move/from16 v14, p1

    const/4 v0, 0x1

    .line 6
    new-array v6, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 7
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v6, v2

    .line 8
    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/16 v17, 0x2

    sparse-switch v14, :sswitch_data_0

    move v3, v2

    goto :goto_0

    :sswitch_0
    move/from16 v3, v17

    goto :goto_0

    :sswitch_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    move v3, v0

    .line 9
    :goto_0
    iput v3, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 10
    new-array v7, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 11
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v0, v7, v2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 13
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    aget-object v3, v7, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move/from16 v1, p8

    if-ne v1, v0, :cond_1

    and-int/lit8 v0, v14, 0x2

    if-eqz v0, :cond_1

    move v15, v2

    goto :goto_2

    :cond_1
    move v15, v1

    .line 15
    :goto_2
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 16
    array-length v1, v0

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    .line 17
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v14}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v12, v4

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move v12, v2

    :goto_4
    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move/from16 v4, p2

    move/from16 v14, p1

    .line 19
    invoke-static/range {v0 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    move-object/from16 v1, p0

    .line 20
    iget-object v1, v1, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    .line 21
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 22
    invoke-interface {v1, v0, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x4002 -> :sswitch_0
        0xc002 -> :sswitch_0
        0x10004 -> :sswitch_1
        0x20004 -> :sswitch_1
        0x100008 -> :sswitch_2
        0x200000 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 21

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v12, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object/from16 v20, v1

    .line 29
    .line 30
    move v1, v0

    .line 31
    move-object/from16 v0, v20

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v12

    .line 35
    :goto_0
    const-string v2, "-d"

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, -0x1

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "INVALID_DISPLAY"

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string v2, "DEFAULT_DISPLAY"

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    move v3, v12

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ne v0, v3, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :cond_4
    move-object v13, v0

    .line 83
    move v14, v3

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string v1, "Error: Invalid arguments for display ID."

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :goto_2
    :try_start_1
    const-string/jumbo v0, "text"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v11, v1, v14}, Lcom/android/server/input/InputShellCommand;->runText(II)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_5
    const-string/jumbo v0, "keyevent"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    invoke-virtual {v11, v1, v14}, Lcom/android/server/input/InputShellCommand;->runKeyEvent(II)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_6
    const-string/jumbo v0, "tap"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const/16 v2, 0x1002

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    if-nez v1, :cond_7

    .line 133
    .line 134
    move v15, v2

    .line 135
    goto :goto_3

    .line 136
    :cond_7
    move v15, v1

    .line 137
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 142
    .line 143
    .line 144
    move-result v16

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 150
    .line 151
    .line 152
    move-result v17

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide v18

    .line 157
    const/4 v2, 0x0

    .line 158
    const/high16 v9, 0x3f800000    # 1.0f

    .line 159
    .line 160
    move-object/from16 v0, p0

    .line 161
    .line 162
    move v1, v15

    .line 163
    move-wide/from16 v3, v18

    .line 164
    .line 165
    move-wide/from16 v5, v18

    .line 166
    .line 167
    move/from16 v7, v16

    .line 168
    .line 169
    move/from16 v8, v17

    .line 170
    .line 171
    move v10, v14

    .line 172
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 173
    .line 174
    .line 175
    const/4 v2, 0x1

    .line 176
    const/4 v9, 0x0

    .line 177
    move-object/from16 v0, p0

    .line 178
    .line 179
    move v1, v15

    .line 180
    move-wide/from16 v3, v18

    .line 181
    .line 182
    move-wide/from16 v5, v18

    .line 183
    .line 184
    move/from16 v7, v16

    .line 185
    .line 186
    move/from16 v8, v17

    .line 187
    .line 188
    move v10, v14

    .line 189
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_5

    .line 193
    .line 194
    :cond_8
    const-string/jumbo v0, "swipe"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    if-nez v1, :cond_9

    .line 204
    .line 205
    move v1, v2

    .line 206
    :cond_9
    invoke-virtual {v11, v1, v14, v12}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_5

    .line 210
    .line 211
    :cond_a
    const-string/jumbo v0, "draganddrop"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_c

    .line 219
    .line 220
    if-nez v1, :cond_b

    .line 221
    .line 222
    move v1, v2

    .line 223
    :cond_b
    const/4 v0, 0x1

    .line 224
    invoke-virtual {v11, v1, v14, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_5

    .line 228
    .line 229
    :cond_c
    const-string/jumbo v0, "press"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    const v2, 0x10004

    .line 237
    .line 238
    .line 239
    if-eqz v0, :cond_e

    .line 240
    .line 241
    if-nez v1, :cond_d

    .line 242
    .line 243
    move v15, v2

    .line 244
    goto :goto_4

    .line 245
    :cond_d
    move v15, v1

    .line 246
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v16

    .line 250
    const/4 v2, 0x0

    .line 251
    const/high16 v9, 0x3f800000    # 1.0f

    .line 252
    .line 253
    const/16 v18, 0x0

    .line 254
    .line 255
    move-object/from16 v0, p0

    .line 256
    .line 257
    move v1, v15

    .line 258
    move-wide/from16 v3, v16

    .line 259
    .line 260
    move-wide/from16 v5, v16

    .line 261
    .line 262
    move/from16 v7, v18

    .line 263
    .line 264
    move/from16 v8, v18

    .line 265
    .line 266
    move v10, v14

    .line 267
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 268
    .line 269
    .line 270
    const/4 v2, 0x1

    .line 271
    const/4 v9, 0x0

    .line 272
    move-object/from16 v0, p0

    .line 273
    .line 274
    move v1, v15

    .line 275
    move-wide/from16 v3, v16

    .line 276
    .line 277
    move-wide/from16 v5, v16

    .line 278
    .line 279
    move/from16 v7, v18

    .line 280
    .line 281
    move/from16 v8, v18

    .line 282
    .line 283
    move v10, v14

    .line 284
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_e
    const-string/jumbo v0, "roll"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_10

    .line 296
    .line 297
    if-nez v1, :cond_f

    .line 298
    .line 299
    move v1, v2

    .line 300
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 317
    .line 318
    .line 319
    move-result-wide v5

    .line 320
    const/4 v2, 0x2

    .line 321
    const/4 v9, 0x0

    .line 322
    move-object/from16 v0, p0

    .line 323
    .line 324
    move-wide v3, v5

    .line 325
    move v10, v14

    .line 326
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 327
    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_10
    const-string/jumbo v0, "scroll"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_11

    .line 338
    .line 339
    invoke-virtual {v11, v1, v14}, Lcom/android/server/input/InputShellCommand;->runScroll(II)V

    .line 340
    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_11
    const-string/jumbo v0, "motionevent"

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_12

    .line 351
    .line 352
    invoke-virtual {v11, v1, v14}, Lcom/android/server/input/InputShellCommand;->runMotionEvent(II)V

    .line 353
    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_12
    const-string/jumbo v0, "keycombination"

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_13

    .line 364
    .line 365
    invoke-virtual {v11, v1, v14}, Lcom/android/server/input/InputShellCommand;->runKeyCombination(II)V

    .line 366
    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_13
    invoke-virtual {v11, v13}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    .line 371
    .line 372
    :goto_5
    return v12

    .line 373
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 374
    .line 375
    const-string v1, "Error: Invalid arguments for command: "

    .line 376
    .line 377
    invoke-static {v1, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v0
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    const-string v0, "Usage: input [<source>] [-d DISPLAY_ID] <command> [<arg>...]"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 11
    .line 12
    .line 13
    const-string v0, "The sources are: "

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "      "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_0
    const-string v0, "[axis_value] represents an option specifying the value of a given axis "

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "      The syntax is as follows: --axis <axis_name>,<axis_value>"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "            where <axis_name> is the name of the axis as defined in "

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "            MotionEvent without the AXIS_ prefix (e.g. SCROLL, X)"

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "      Sample [axis_values] entry: `--axis Y,3`, `--axis SCROLL,-2`"

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 90
    .line 91
    .line 92
    const-string v0, "-d: specify the display ID.\n      (Default: %d for key event, %d for motion event if not specified.)"

    .line 93
    .line 94
    const/4 v1, -0x1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 112
    .line 113
    .line 114
    const-string v0, "The commands and default sources are:"

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "      text <string> (Default: keyboard)"

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v0, "      keyevent [--longpress|--duration <duration to hold key down in ms>] [--doubletap] [--async] [--delay <duration between keycodes in ms>] <key code number or name> ... (Default: keyboard)"

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v0, "      tap <x> <y> (Default: touchscreen)"

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "      draganddrop <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v0, "      press (Default: trackball)"

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "      roll <dx> <dy> (Default: trackball)"

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v0, "      motionevent <DOWN|UP|MOVE|CANCEL> <x> <y> (Default: touchscreen)"

    .line 155
    .line 156
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v0, "      scroll (Default: rotaryencoder). Has the following syntax:"

    .line 160
    .line 161
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v0, "            scroll <x> <y> [axis_value] (for pointer-based sources)"

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v0, "            scroll [axis_value] (for non-pointer-based sources)"

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v0, "            Axis options: SCROLL, HSCROLL, VSCROLL"

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "            None or one or multiple axis value options can be specified."

    .line 180
    .line 181
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v0, "            To specify multiple axes, use one axis option for per axis."

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v0, "            Example: `scroll --axis VSCROLL,2 --axis SCROLL,-2.4`"

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v0, "      keycombination [-t duration(ms)] <key code 1> <key code 2> ... (Default: keyboard, the key order is important here.)"

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :goto_1
    if-eqz p0, :cond_1

    .line 204
    .line 205
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :catchall_1
    move-exception p0

    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    :cond_1
    :goto_2
    throw v0
.end method

.method public final runKeyCombination(II)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "-t"

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-long v1, v1

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-wide/from16 v29, v1

    .line 29
    .line 30
    move-object v1, v3

    .line 31
    move-wide/from16 v2, v29

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    :goto_0
    new-instance v4, Landroid/util/IntArray;

    .line 37
    .line 38
    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    .line 39
    .line 40
    .line 41
    :goto_1
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Landroid/util/IntArray;->add(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string v2, "Unknown keycode: "

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v5, 0x2

    .line 74
    if-lt v1, v5, :cond_6

    .line 75
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v19

    .line 80
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    new-array v5, v1, [Landroid/view/KeyEvent;

    .line 85
    .line 86
    const/16 v21, 0x0

    .line 87
    .line 88
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    move/from16 v14, v21

    .line 93
    .line 94
    move/from16 v22, v14

    .line 95
    .line 96
    :goto_2
    if-ge v14, v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {v4, v14}, Landroid/util/IntArray;->get(I)I

    .line 99
    .line 100
    .line 101
    move-result v23

    .line 102
    new-instance v13, Landroid/view/KeyEvent;

    .line 103
    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v17, 0x0

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    const/16 v18, 0x0

    .line 110
    .line 111
    const/16 v24, -0x1

    .line 112
    .line 113
    move-object v6, v13

    .line 114
    move-wide/from16 v7, v19

    .line 115
    .line 116
    move-wide/from16 v9, v19

    .line 117
    .line 118
    move/from16 v12, v23

    .line 119
    .line 120
    move-object/from16 v25, v13

    .line 121
    .line 122
    move/from16 v13, v18

    .line 123
    .line 124
    move/from16 v26, v14

    .line 125
    .line 126
    move/from16 v14, v22

    .line 127
    .line 128
    move-object/from16 v27, v15

    .line 129
    .line 130
    move/from16 v15, v24

    .line 131
    .line 132
    move/from16 v18, p1

    .line 133
    .line 134
    invoke-direct/range {v6 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 135
    .line 136
    .line 137
    move/from16 v6, p2

    .line 138
    .line 139
    move-object/from16 v7, v25

    .line 140
    .line 141
    invoke-virtual {v7, v6}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 142
    .line 143
    .line 144
    aput-object v7, v5, v26

    .line 145
    .line 146
    sget-object v7, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    .line 147
    .line 148
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    move-object/from16 v15, v27

    .line 153
    .line 154
    invoke-interface {v7, v8, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    check-cast v7, Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    or-int v22, v22, v7

    .line 165
    .line 166
    add-int/lit8 v14, v26, 0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_3
    move/from16 v4, v21

    .line 170
    .line 171
    :goto_3
    const/4 v14, 0x1

    .line 172
    if-ge v4, v1, :cond_4

    .line 173
    .line 174
    aget-object v6, v5, v4

    .line 175
    .line 176
    invoke-virtual {v0, v6, v14}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_4
    invoke-static {v2, v3}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 183
    .line 184
    .line 185
    move/from16 v2, v21

    .line 186
    .line 187
    :goto_4
    if-ge v2, v1, :cond_5

    .line 188
    .line 189
    aget-object v3, v5, v2

    .line 190
    .line 191
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    new-instance v4, Landroid/view/KeyEvent;

    .line 196
    .line 197
    const/16 v16, 0x0

    .line 198
    .line 199
    const/16 v17, 0x0

    .line 200
    .line 201
    const/4 v11, 0x1

    .line 202
    const/4 v13, 0x0

    .line 203
    const/16 v18, -0x1

    .line 204
    .line 205
    move-object v6, v4

    .line 206
    move-wide/from16 v7, v19

    .line 207
    .line 208
    move-wide/from16 v9, v19

    .line 209
    .line 210
    move v12, v3

    .line 211
    move/from16 v14, v22

    .line 212
    .line 213
    move-object/from16 v28, v15

    .line 214
    .line 215
    move/from16 v15, v18

    .line 216
    .line 217
    move/from16 v18, p1

    .line 218
    .line 219
    invoke-direct/range {v6 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 220
    .line 221
    .line 222
    const/4 v6, 0x1

    .line 223
    invoke-virtual {v0, v4, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 224
    .line 225
    .line 226
    sget-object v4, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    .line 227
    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    move-object/from16 v7, v28

    .line 233
    .line 234
    invoke-interface {v4, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Ljava/lang/Integer;

    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    not-int v3, v3

    .line 245
    and-int v22, v22, v3

    .line 246
    .line 247
    add-int/lit8 v2, v2, 0x1

    .line 248
    .line 249
    move v14, v6

    .line 250
    move-object v15, v7

    .line 251
    goto :goto_4

    .line 252
    :cond_5
    return-void

    .line 253
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 254
    .line 255
    const-string/jumbo v1, "keycombination requires at least 2 keycodes"

    .line 256
    .line 257
    .line 258
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v0
.end method

.method public final runKeyEvent(II)V
    .locals 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    move v4, v1

    .line 9
    move v5, v4

    .line 10
    move v6, v5

    .line 11
    move-wide v7, v2

    .line 12
    move-wide v9, v7

    .line 13
    :cond_0
    const-string v11, "--"

    .line 14
    .line 15
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v11

    .line 19
    const/4 v12, 0x1

    .line 20
    if-nez v11, :cond_1

    .line 21
    .line 22
    :goto_0
    move v13, v5

    .line 23
    move v14, v6

    .line 24
    move-wide v15, v7

    .line 25
    goto :goto_8

    .line 26
    :cond_1
    if-nez v4, :cond_3

    .line 27
    .line 28
    const-string v4, "--longpress"

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v4, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    move v4, v12

    .line 40
    :goto_2
    if-nez v5, :cond_5

    .line 41
    .line 42
    const-string v5, "--async"

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_4

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    move v5, v1

    .line 52
    goto :goto_4

    .line 53
    :cond_5
    :goto_3
    move v5, v12

    .line 54
    :goto_4
    if-nez v6, :cond_7

    .line 55
    .line 56
    const-string v6, "--doubletap"

    .line 57
    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_6

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_6
    move v6, v1

    .line 66
    goto :goto_6

    .line 67
    :cond_7
    :goto_5
    move v6, v12

    .line 68
    :goto_6
    const-string v11, "--delay"

    .line 69
    .line 70
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    if-eqz v11, :cond_8

    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    goto :goto_7

    .line 85
    :cond_8
    const-string v11, "--duration"

    .line 86
    .line 87
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_9

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v9

    .line 101
    :cond_9
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :goto_8
    cmp-long v5, v9, v2

    .line 109
    .line 110
    if-lez v5, :cond_b

    .line 111
    .line 112
    if-nez v4, :cond_a

    .line 113
    .line 114
    goto :goto_9

    .line 115
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "--duration and --longpress cannot be used at the same time."

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    const-string/jumbo v1, "keyevent args should only contain either durationMs or longPress"

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_b
    :goto_9
    if-eqz v4, :cond_c

    .line 134
    .line 135
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    int-to-long v9, v4

    .line 140
    :cond_c
    move-wide/from16 v17, v9

    .line 141
    .line 142
    :goto_a
    if-nez v12, :cond_d

    .line 143
    .line 144
    cmp-long v4, v15, v2

    .line 145
    .line 146
    if-lez v4, :cond_d

    .line 147
    .line 148
    invoke-static/range {v15 .. v16}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 149
    .line 150
    .line 151
    :cond_d
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    move-object/from16 v5, p0

    .line 156
    .line 157
    move-wide/from16 v6, v17

    .line 158
    .line 159
    move/from16 v8, p1

    .line 160
    .line 161
    move v9, v0

    .line 162
    move/from16 v10, p2

    .line 163
    .line 164
    move v11, v13

    .line 165
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(JIIIZ)V

    .line 166
    .line 167
    .line 168
    if-eqz v14, :cond_e

    .line 169
    .line 170
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    int-to-long v4, v4

    .line 175
    invoke-static {v4, v5}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 176
    .line 177
    .line 178
    move-object/from16 v5, p0

    .line 179
    .line 180
    move-wide/from16 v6, v17

    .line 181
    .line 182
    move/from16 v8, p1

    .line 183
    .line 184
    move v9, v0

    .line 185
    move/from16 v10, p2

    .line 186
    .line 187
    move v11, v13

    .line 188
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(JIIIZ)V

    .line 189
    .line 190
    .line 191
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-nez v0, :cond_f

    .line 196
    .line 197
    return-void

    .line 198
    :cond_f
    move v12, v1

    .line 199
    goto :goto_a
.end method

.method public final runMotionEvent(II)V
    .locals 16

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/16 v4, 0x1002

    .line 8
    .line 9
    move v6, v4

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move/from16 v6, p1

    .line 12
    .line 13
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 v7, -0x1

    .line 25
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    sparse-switch v8, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :sswitch_0
    const-string v8, "CANCEL"

    .line 34
    .line 35
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v7, v0

    .line 43
    goto :goto_1

    .line 44
    :sswitch_1
    const-string v8, "MOVE"

    .line 45
    .line 46
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v7, v2

    .line 54
    goto :goto_1

    .line 55
    :sswitch_2
    const-string v8, "DOWN"

    .line 56
    .line 57
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move v7, v3

    .line 65
    goto :goto_1

    .line 66
    :sswitch_3
    const-string v8, "UP"

    .line 67
    .line 68
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move v7, v1

    .line 76
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v1, "Unknown action: "

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :pswitch_0
    move v7, v0

    .line 92
    goto :goto_2

    .line 93
    :pswitch_1
    move v7, v2

    .line 94
    goto :goto_2

    .line 95
    :pswitch_2
    move v7, v1

    .line 96
    goto :goto_2

    .line 97
    :pswitch_3
    move v7, v3

    .line 98
    :goto_2
    const/4 v0, 0x0

    .line 99
    if-eqz v7, :cond_7

    .line 100
    .line 101
    if-eq v7, v2, :cond_7

    .line 102
    .line 103
    if-ne v7, v3, :cond_5

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-eqz v1, :cond_6

    .line 115
    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    :goto_3
    move v12, v1

    .line 127
    move v13, v3

    .line 128
    goto :goto_5

    .line 129
    :cond_6
    move v12, v0

    .line 130
    move v13, v12

    .line 131
    goto :goto_5

    .line 132
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    goto :goto_3

    .line 149
    :goto_5
    if-eqz v7, :cond_9

    .line 150
    .line 151
    if-ne v7, v2, :cond_8

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_8
    :goto_6
    move v14, v0

    .line 155
    goto :goto_8

    .line 156
    :cond_9
    :goto_7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide v10

    .line 163
    move-object/from16 v5, p0

    .line 164
    .line 165
    move-wide v8, v10

    .line 166
    move/from16 v15, p2

    .line 167
    .line 168
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    nop

    .line 173
    :sswitch_data_0
    .sparse-switch
        0xa9b -> :sswitch_3
        0x201ca2 -> :sswitch_2
        0x2433d1 -> :sswitch_1
        0x760d227a -> :sswitch_0
    .end sparse-switch

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runScroll(II)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const/high16 p1, 0x400000

    .line 5
    .line 6
    :cond_0
    move v2, p1

    .line 7
    and-int/lit8 p1, v2, 0x2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    move p1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move p1, v1

    .line 16
    :goto_0
    new-instance v8, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v8, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v8, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    const/16 p1, 0xa

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/16 v4, 0x9

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/16 v5, 0x1a

    .line 74
    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {p1, v4, v5}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_7

    .line 88
    .line 89
    const-string v5, "--axis"

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_6

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v5, ","

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    array-length v6, v5

    .line 108
    if-ne v6, v0, :cond_5

    .line 109
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v6, "AXIS_"

    .line 113
    .line 114
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    aget-object v6, v5, v1

    .line 118
    .line 119
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    const/4 v7, -0x1

    .line 131
    if-eq v6, v7, :cond_4

    .line 132
    .line 133
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_3

    .line 142
    .line 143
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    aget-object v5, v5, v3

    .line 148
    .line 149
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v5, Ljava/lang/Integer;

    .line 164
    .line 165
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v4, Ljava/lang/Float;

    .line 168
    .line 169
    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string p1, "Unsupported axis: "

    .line 176
    .line 177
    invoke-static {p1, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 186
    .line 187
    const-string p1, "Invalid axis name: "

    .line 188
    .line 189
    invoke-static {p1, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    const-string p1, "Invalid --axis option value: "

    .line 200
    .line 201
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p0

    .line 209
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    const-string p1, "Unsupported option: "

    .line 212
    .line 213
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p0

    .line 221
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 222
    .line 223
    .line 224
    move-result-wide v6

    .line 225
    const/16 v3, 0x8

    .line 226
    .line 227
    move-object v1, p0

    .line 228
    move-wide v4, v6

    .line 229
    move v9, p2

    .line 230
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJLjava/util/Map;I)V

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public final runText(II)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x101

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v2, v0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v2, v4, :cond_4

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/16 v4, 0x73

    .line 30
    .line 31
    if-ne v3, v4, :cond_1

    .line 32
    .line 33
    const/16 v3, 0x20

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    move v3, v0

    .line 44
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/16 v5, 0x25

    .line 49
    .line 50
    if-ne v4, v5, :cond_3

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v2, -0x1

    .line 65
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move v2, v0

    .line 74
    :goto_1
    array-length v3, v1

    .line 75
    if-ge v2, v3, :cond_6

    .line 76
    .line 77
    aget-object v3, v1, v2

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getSource()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eq p1, v4, :cond_5

    .line 84
    .line 85
    invoke-virtual {v3, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-virtual {v3, p2}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v3, v0}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    return-void
.end method

.method public final sendKeyEvent(JIIIZ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move/from16 v3, p6

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v17

    .line 11
    new-instance v15, Landroid/view/KeyEvent;

    .line 12
    .line 13
    const/4 v12, 0x0

    .line 14
    const/4 v13, -0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v14, 0x0

    .line 18
    const/16 v16, 0x0

    .line 19
    .line 20
    move-object v4, v15

    .line 21
    move-wide/from16 v5, v17

    .line 22
    .line 23
    move-wide/from16 v7, v17

    .line 24
    .line 25
    move/from16 v10, p4

    .line 26
    .line 27
    move-object/from16 v19, v15

    .line 28
    .line 29
    move/from16 v15, v16

    .line 30
    .line 31
    move/from16 v16, p3

    .line 32
    .line 33
    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 34
    .line 35
    .line 36
    move/from16 v4, p5

    .line 37
    .line 38
    move-object/from16 v5, v19

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v5, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    int-to-long v6, v4

    .line 51
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    const-wide/16 v8, 0x0

    .line 56
    .line 57
    cmp-long v4, v6, v8

    .line 58
    .line 59
    const/4 v10, 0x1

    .line 60
    if-lez v4, :cond_0

    .line 61
    .line 62
    invoke-static {v6, v7}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    int-to-long v11, v4

    .line 70
    cmp-long v4, v1, v11

    .line 71
    .line 72
    if-ltz v4, :cond_0

    .line 73
    .line 74
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    int-to-long v11, v4

    .line 79
    add-long v11, v17, v11

    .line 80
    .line 81
    const/16 v4, 0x80

    .line 82
    .line 83
    invoke-static {v5, v11, v12, v10, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v0, v4, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 88
    .line 89
    .line 90
    sub-long/2addr v1, v6

    .line 91
    cmp-long v4, v1, v8

    .line 92
    .line 93
    if-lez v4, :cond_0

    .line 94
    .line 95
    invoke-static {v1, v2}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-static {v5, v10}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final sendSwipe(IIZ)V
    .locals 24

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 14
    .line 15
    .line 16
    move-result v12

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 22
    .line 23
    .line 24
    move-result v20

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 30
    .line 31
    .line 32
    move-result v21

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, -0x1

    .line 45
    :goto_0
    if-gez v1, :cond_1

    .line 46
    .line 47
    const/16 v1, 0x12c

    .line 48
    .line 49
    :cond_1
    move v13, v1

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v16

    .line 54
    const/4 v3, 0x0

    .line 55
    const/high16 v10, 0x3f800000    # 1.0f

    .line 56
    .line 57
    move-object/from16 v1, p0

    .line 58
    .line 59
    move/from16 v2, p1

    .line 60
    .line 61
    move-wide/from16 v4, v16

    .line 62
    .line 63
    move-wide/from16 v6, v16

    .line 64
    .line 65
    move v8, v0

    .line 66
    move v9, v12

    .line 67
    move/from16 v11, p2

    .line 68
    .line 69
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 70
    .line 71
    .line 72
    if-eqz p3, :cond_2

    .line 73
    .line 74
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    int-to-long v1, v1

    .line 79
    invoke-static {v1, v2}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    int-to-long v3, v13

    .line 87
    add-long v14, v16, v3

    .line 88
    .line 89
    move-wide v6, v1

    .line 90
    :goto_1
    cmp-long v1, v6, v14

    .line 91
    .line 92
    if-gez v1, :cond_3

    .line 93
    .line 94
    sub-long v1, v6, v16

    .line 95
    .line 96
    long-to-float v1, v1

    .line 97
    int-to-float v2, v13

    .line 98
    div-float/2addr v1, v2

    .line 99
    sub-float v2, v20, v0

    .line 100
    .line 101
    mul-float/2addr v2, v1

    .line 102
    add-float v8, v2, v0

    .line 103
    .line 104
    sub-float v2, v21, v12

    .line 105
    .line 106
    mul-float/2addr v2, v1

    .line 107
    add-float v9, v2, v12

    .line 108
    .line 109
    const/high16 v10, 0x3f800000    # 1.0f

    .line 110
    .line 111
    const/4 v3, 0x2

    .line 112
    move-object/from16 v1, p0

    .line 113
    .line 114
    move/from16 v2, p1

    .line 115
    .line 116
    move-wide/from16 v4, v16

    .line 117
    .line 118
    move/from16 v11, p2

    .line 119
    .line 120
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const/4 v15, 0x1

    .line 129
    const/16 v22, 0x0

    .line 130
    .line 131
    move-object/from16 v13, p0

    .line 132
    .line 133
    move/from16 v14, p1

    .line 134
    .line 135
    move-wide/from16 v18, v6

    .line 136
    .line 137
    move/from16 v23, p2

    .line 138
    .line 139
    invoke-virtual/range {v13 .. v23}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
