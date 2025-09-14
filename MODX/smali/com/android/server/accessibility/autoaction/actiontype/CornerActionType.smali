.class public abstract Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    const-string/jumbo v1, "input"

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v4

    .line 14
    sparse-switch v4, :sswitch_data_0

    .line 17
    goto/16 :goto_0

    .line 19
    :sswitch_0
    const-string/jumbo v4, "double_click"

    .line 22
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 28
    goto/16 :goto_0

    .line 30
    :cond_0
    const/16 v3, 0x9

    .line 32
    goto/16 :goto_0

    .line 34
    :sswitch_1
    const-string/jumbo v4, "swipe_right"

    .line 37
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 43
    goto/16 :goto_0

    .line 45
    :cond_1
    const/16 v3, 0x8

    .line 47
    goto/16 :goto_0

    .line 49
    :sswitch_2
    const-string/jumbo v4, "zoom_out"

    .line 52
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v3, 0x7

    .line 60
    goto :goto_0

    .line 61
    :sswitch_3
    const-string/jumbo v4, "swipe_left"

    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_3

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v3, 0x6

    .line 72
    goto :goto_0

    .line 73
    :sswitch_4
    const-string/jumbo v4, "swipe_down"

    .line 76
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_4

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 v3, 0x5

    .line 84
    goto :goto_0

    .line 85
    :sswitch_5
    const-string/jumbo v4, "drag_and_drop"

    .line 88
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_5

    .line 94
    goto :goto_0

    .line 95
    :cond_5
    const/4 v3, 0x4

    .line 96
    goto :goto_0

    .line 97
    :sswitch_6
    const-string/jumbo v4, "drag"

    .line 100
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_6

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    const/4 v3, 0x3

    .line 108
    goto :goto_0

    .line 109
    :sswitch_7
    const-string/jumbo v4, "swipe_up"

    .line 112
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_7

    .line 118
    goto :goto_0

    .line 119
    :cond_7
    const/4 v3, 0x2

    .line 120
    goto :goto_0

    .line 121
    :sswitch_8
    const-string/jumbo v4, "zoom_in"

    .line 124
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_8

    .line 130
    goto :goto_0

    .line 131
    :cond_8
    move v3, v0

    .line 132
    goto :goto_0

    .line 133
    :sswitch_9
    const-string/jumbo v4, "click_and_hold"

    .line 136
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_9

    .line 142
    goto :goto_0

    .line 143
    :cond_9
    const/4 v3, 0x0

    .line 144
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 147
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 149
    const-string p1, "Wrong Corner Action Type"

    .line 151
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p0

    .line 155
    :pswitch_0
    new-instance p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 162
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 168
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    .line 170
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 176
    return-object p0

    .line 177
    :pswitch_1
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 179
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 184
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    .line 186
    iput-object p1, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 188
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    .line 190
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 193
    move-result-object p0

    .line 194
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 196
    new-instance p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 198
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    .line 201
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 203
    new-instance p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    .line 208
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 210
    return-object v1

    .line 211
    :pswitch_2
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    .line 213
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 218
    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    .line 220
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    .line 222
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 225
    move-result-object p0

    .line 226
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 228
    return-object v0

    .line 229
    :pswitch_3
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    .line 231
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 236
    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 244
    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 246
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mType:Ljava/lang/String;

    .line 248
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 251
    move-result-object p0

    .line 252
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 254
    return-object v0

    .line 255
    :pswitch_4
    new-instance p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 262
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 267
    move-result-object p1

    .line 268
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 270
    return-object p0

    .line 271
    :sswitch_data_0
    .sparse-switch
        -0x643f1902 -> :sswitch_9
        -0x68ea6ef -> :sswitch_8
        -0x54cce40 -> :sswitch_7
        0x2f2d34 -> :sswitch_6
        0x19319b02 -> :sswitch_5
        0x1aa61287 -> :sswitch_4
        0x1aa98dec -> :sswitch_3
        0x34b9e0e2 -> :sswitch_2
        0x3ade90d7 -> :sswitch_1
        0x51e7c39a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getTitleResId(Ljava/lang/String;)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string/jumbo v1, "swipe_right"

    .line 6
    const-string/jumbo v2, "zoom_out"

    .line 9
    const-string/jumbo v3, "media_volume_down"

    .line 12
    const-string/jumbo v4, "swipe_left"

    .line 15
    const-string/jumbo v5, "swipe_down"

    .line 18
    const-string/jumbo v6, "drag_and_drop"

    .line 21
    const-string/jumbo v7, "increase_brightness"

    .line 24
    const-string/jumbo v8, "home"

    .line 27
    const-string/jumbo v9, "drag"

    .line 30
    const-string v10, "back"

    .line 32
    const-string/jumbo v11, "swipe_up"

    .line 35
    const-string/jumbo v12, "zoom_in"

    .line 38
    const-string/jumbo v13, "reduce_brightness"

    .line 41
    const-string/jumbo v14, "sound_vibrate_mute"

    .line 44
    const-string/jumbo v15, "ringtone_volume_up"

    .line 47
    move-object/from16 v16, v15

    .line 49
    const-string v15, "accessibility_button"

    .line 51
    const/16 v17, 0x3

    .line 53
    const/16 v18, 0x2

    .line 55
    const/16 v19, 0x1

    .line 57
    const/16 v20, 0x0

    .line 59
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    move-object/from16 v21, v15

    .line 64
    const-string v15, "Wrong Swipe Type"

    .line 66
    const/16 v22, -0x1

    .line 68
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 71
    move-result v23

    .line 72
    sparse-switch v23, :sswitch_data_0

    .line 75
    move-object/from16 v23, v15

    .line 77
    :goto_0
    move-object/from16 v15, v16

    .line 79
    :goto_1
    move-object/from16 v16, v10

    .line 81
    :goto_2
    move/from16 v10, v22

    .line 83
    goto/16 :goto_6

    .line 85
    :sswitch_0
    move-object/from16 v23, v15

    .line 87
    const-string/jumbo v15, "open_close_quick_panel"

    .line 90
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v15

    .line 94
    if-nez v15, :cond_0

    .line 96
    goto/16 :goto_3

    .line 98
    :cond_0
    const/16 v15, 0x1f

    .line 100
    goto/16 :goto_4

    .line 102
    :sswitch_1
    move-object/from16 v23, v15

    .line 104
    const-string/jumbo v15, "ringtone_volume_down"

    .line 107
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v15

    .line 111
    if-nez v15, :cond_1

    .line 113
    goto/16 :goto_3

    .line 115
    :cond_1
    const/16 v15, 0x1e

    .line 117
    goto/16 :goto_4

    .line 119
    :sswitch_2
    move-object/from16 v23, v15

    .line 121
    const-string/jumbo v15, "pause_auto_click"

    .line 124
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v15

    .line 128
    if-nez v15, :cond_2

    .line 130
    goto/16 :goto_3

    .line 132
    :cond_2
    const/16 v15, 0x1d

    .line 134
    goto/16 :goto_4

    .line 136
    :sswitch_3
    move-object/from16 v23, v15

    .line 138
    const-string/jumbo v15, "resume_auto_click"

    .line 141
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v15

    .line 145
    if-nez v15, :cond_3

    .line 147
    goto/16 :goto_3

    .line 149
    :cond_3
    const/16 v15, 0x1c

    .line 151
    goto/16 :goto_4

    .line 153
    :sswitch_4
    move-object/from16 v23, v15

    .line 155
    const-string/jumbo v15, "double_click"

    .line 158
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v15

    .line 162
    if-nez v15, :cond_4

    .line 164
    goto/16 :goto_3

    .line 166
    :cond_4
    const/16 v15, 0x1b

    .line 168
    goto/16 :goto_4

    .line 170
    :sswitch_5
    move-object/from16 v23, v15

    .line 172
    const-string/jumbo v15, "media_volume_up"

    .line 175
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v15

    .line 179
    if-nez v15, :cond_5

    .line 181
    goto/16 :goto_3

    .line 183
    :cond_5
    const/16 v15, 0x1a

    .line 185
    goto/16 :goto_4

    .line 187
    :sswitch_6
    move-object/from16 v23, v15

    .line 189
    const-string/jumbo v15, "recents"

    .line 192
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v15

    .line 196
    if-nez v15, :cond_6

    .line 198
    goto/16 :goto_3

    .line 200
    :cond_6
    const/16 v15, 0x19

    .line 202
    goto/16 :goto_4

    .line 204
    :sswitch_7
    move-object/from16 v23, v15

    .line 206
    const-string/jumbo v15, "send_sos_messages"

    .line 209
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v15

    .line 213
    if-nez v15, :cond_7

    .line 215
    goto/16 :goto_3

    .line 217
    :cond_7
    const/16 v15, 0x18

    .line 219
    goto/16 :goto_4

    .line 221
    :sswitch_8
    move-object/from16 v23, v15

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result v15

    .line 227
    if-nez v15, :cond_8

    .line 229
    goto/16 :goto_3

    .line 231
    :cond_8
    const/16 v15, 0x17

    .line 233
    goto/16 :goto_4

    .line 235
    :sswitch_9
    move-object/from16 v23, v15

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v15

    .line 241
    if-nez v15, :cond_9

    .line 243
    goto/16 :goto_3

    .line 245
    :cond_9
    const/16 v15, 0x16

    .line 247
    goto/16 :goto_4

    .line 249
    :sswitch_a
    move-object/from16 v23, v15

    .line 251
    const-string/jumbo v15, "power_off_menu"

    .line 254
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    move-result v15

    .line 258
    if-nez v15, :cond_a

    .line 260
    goto/16 :goto_3

    .line 262
    :cond_a
    const/16 v15, 0x15

    .line 264
    goto/16 :goto_4

    .line 266
    :sswitch_b
    move-object/from16 v23, v15

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    move-result v15

    .line 272
    if-nez v15, :cond_b

    .line 274
    goto/16 :goto_3

    .line 276
    :cond_b
    const/16 v15, 0x14

    .line 278
    goto/16 :goto_4

    .line 280
    :sswitch_c
    move-object/from16 v23, v15

    .line 282
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    move-result v15

    .line 286
    if-nez v15, :cond_c

    .line 288
    goto/16 :goto_3

    .line 290
    :cond_c
    const/16 v15, 0x13

    .line 292
    goto/16 :goto_4

    .line 294
    :sswitch_d
    move-object/from16 v23, v15

    .line 296
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    move-result v15

    .line 300
    if-nez v15, :cond_d

    .line 302
    goto/16 :goto_3

    .line 304
    :cond_d
    const/16 v15, 0x12

    .line 306
    goto/16 :goto_4

    .line 308
    :sswitch_e
    move-object/from16 v23, v15

    .line 310
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    move-result v15

    .line 314
    if-nez v15, :cond_e

    .line 316
    goto/16 :goto_3

    .line 318
    :cond_e
    const/16 v15, 0x11

    .line 320
    goto/16 :goto_4

    .line 322
    :sswitch_f
    move-object/from16 v23, v15

    .line 324
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    move-result v15

    .line 328
    if-nez v15, :cond_f

    .line 330
    goto/16 :goto_3

    .line 332
    :cond_f
    const/16 v15, 0x10

    .line 334
    goto/16 :goto_4

    .line 336
    :sswitch_10
    move-object/from16 v23, v15

    .line 338
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    move-result v15

    .line 342
    if-nez v15, :cond_10

    .line 344
    goto/16 :goto_3

    .line 346
    :cond_10
    const/16 v15, 0xf

    .line 348
    goto/16 :goto_4

    .line 350
    :sswitch_11
    move-object/from16 v23, v15

    .line 352
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    move-result v15

    .line 356
    if-nez v15, :cond_11

    .line 358
    goto/16 :goto_3

    .line 360
    :cond_11
    const/16 v15, 0xe

    .line 362
    goto/16 :goto_4

    .line 364
    :sswitch_12
    move-object/from16 v23, v15

    .line 366
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    move-result v15

    .line 370
    if-nez v15, :cond_12

    .line 372
    goto/16 :goto_3

    .line 374
    :cond_12
    const/16 v15, 0xd

    .line 376
    goto/16 :goto_4

    .line 378
    :sswitch_13
    move-object/from16 v23, v15

    .line 380
    const-string/jumbo v15, "screen_shot"

    .line 383
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    move-result v15

    .line 387
    if-nez v15, :cond_13

    .line 389
    goto/16 :goto_3

    .line 391
    :cond_13
    const/16 v15, 0xc

    .line 393
    goto/16 :goto_4

    .line 395
    :sswitch_14
    move-object/from16 v23, v15

    .line 397
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    move-result v15

    .line 401
    if-nez v15, :cond_14

    .line 403
    goto :goto_3

    .line 404
    :cond_14
    const/16 v15, 0xb

    .line 406
    goto :goto_4

    .line 407
    :sswitch_15
    move-object/from16 v23, v15

    .line 409
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    move-result v15

    .line 413
    if-nez v15, :cond_15

    .line 415
    goto :goto_3

    .line 416
    :cond_15
    const/16 v15, 0xa

    .line 418
    goto :goto_4

    .line 419
    :sswitch_16
    move-object/from16 v23, v15

    .line 421
    const-string/jumbo v15, "sound_mute"

    .line 424
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    move-result v15

    .line 428
    if-nez v15, :cond_16

    .line 430
    goto :goto_3

    .line 431
    :cond_16
    const/16 v15, 0x9

    .line 433
    goto :goto_4

    .line 434
    :sswitch_17
    move-object/from16 v23, v15

    .line 436
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    move-result v15

    .line 440
    if-nez v15, :cond_17

    .line 442
    goto :goto_3

    .line 443
    :cond_17
    const/16 v15, 0x8

    .line 445
    goto :goto_4

    .line 446
    :sswitch_18
    move-object/from16 v23, v15

    .line 448
    const-string/jumbo v15, "screen_off"

    .line 451
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    move-result v15

    .line 455
    if-nez v15, :cond_18

    .line 457
    goto :goto_3

    .line 458
    :cond_18
    const/4 v15, 0x7

    .line 459
    goto :goto_4

    .line 460
    :sswitch_19
    move-object/from16 v23, v15

    .line 462
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    move-result v15

    .line 466
    if-nez v15, :cond_19

    .line 468
    goto :goto_3

    .line 469
    :cond_19
    const/4 v15, 0x6

    .line 470
    goto :goto_4

    .line 471
    :sswitch_1a
    move-object/from16 v23, v15

    .line 473
    const-string/jumbo v15, "screen_rotation"

    .line 476
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    move-result v15

    .line 480
    if-nez v15, :cond_1a

    .line 482
    :goto_3
    goto/16 :goto_0

    .line 484
    :cond_1a
    const/4 v15, 0x5

    .line 485
    :goto_4
    move-object/from16 v24, v16

    .line 487
    move-object/from16 v16, v10

    .line 489
    move v10, v15

    .line 490
    move-object/from16 v15, v24

    .line 492
    goto/16 :goto_6

    .line 494
    :sswitch_1b
    move-object/from16 v23, v15

    .line 496
    move-object/from16 v15, v16

    .line 498
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    move-result v16

    .line 502
    if-nez v16, :cond_1b

    .line 504
    goto/16 :goto_1

    .line 506
    :cond_1b
    move-object/from16 v16, v10

    .line 508
    const/4 v10, 0x4

    .line 509
    goto :goto_6

    .line 510
    :sswitch_1c
    move-object/from16 v23, v15

    .line 512
    move-object/from16 v15, v16

    .line 514
    move-object/from16 v16, v10

    .line 516
    const-string/jumbo v10, "click_and_hold"

    .line 519
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    move-result v10

    .line 523
    if-nez v10, :cond_1c

    .line 525
    goto :goto_5

    .line 526
    :cond_1c
    move/from16 v10, v17

    .line 528
    goto :goto_6

    .line 529
    :sswitch_1d
    move-object/from16 v23, v15

    .line 531
    move-object/from16 v15, v16

    .line 533
    move-object/from16 v16, v10

    .line 535
    const-string/jumbo v10, "talk_to_bixby"

    .line 538
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    move-result v10

    .line 542
    if-nez v10, :cond_1d

    .line 544
    goto :goto_5

    .line 545
    :cond_1d
    move/from16 v10, v18

    .line 547
    goto :goto_6

    .line 548
    :sswitch_1e
    move-object/from16 v23, v15

    .line 550
    move-object/from16 v15, v16

    .line 552
    move-object/from16 v16, v10

    .line 554
    move-object/from16 v10, v21

    .line 556
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    move-result v21

    .line 560
    if-nez v21, :cond_1e

    .line 562
    move-object/from16 v21, v10

    .line 564
    goto/16 :goto_2

    .line 566
    :cond_1e
    move-object/from16 v21, v10

    .line 568
    move/from16 v10, v19

    .line 570
    goto :goto_6

    .line 571
    :sswitch_1f
    move-object/from16 v23, v15

    .line 573
    move-object/from16 v15, v16

    .line 575
    move-object/from16 v16, v10

    .line 577
    const-string/jumbo v10, "open_close_notifications"

    .line 580
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    move-result v10

    .line 584
    if-nez v10, :cond_1f

    .line 586
    :goto_5
    goto/16 :goto_2

    .line 588
    :cond_1f
    move/from16 v10, v20

    .line 590
    :goto_6
    packed-switch v10, :pswitch_data_0

    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 595
    const-string v1, "Wrong Corner Action Type"

    .line 597
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 600
    throw v0

    .line 601
    :pswitch_0
    const v0, 0x104011f

    .line 604
    return v0

    .line 605
    :pswitch_1
    const v0, 0x1040120

    .line 608
    return v0

    .line 609
    :pswitch_2
    const v0, 0x1040124

    .line 612
    return v0

    .line 613
    :pswitch_3
    const v0, 0x1040117

    .line 616
    return v0

    .line 617
    :pswitch_4
    const v0, 0x104012a

    .line 620
    return v0

    .line 621
    :pswitch_5
    const v0, 0x1040121

    .line 624
    return v0

    .line 625
    :pswitch_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    move-result v1

    .line 629
    if-nez v1, :cond_21

    .line 631
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_20

    .line 637
    const v0, 0x1040119

    .line 640
    goto :goto_7

    .line 641
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 643
    move-object/from16 v2, v23

    .line 645
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 648
    throw v0

    .line 649
    :cond_21
    const v0, 0x1040118

    .line 652
    :goto_7
    return v0

    .line 653
    :pswitch_7
    const v0, 0x1040129

    .line 656
    return v0

    .line 657
    :pswitch_8
    move-object/from16 v2, v23

    .line 659
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 662
    move-result v3

    .line 663
    sparse-switch v3, :sswitch_data_1

    .line 666
    :goto_8
    move/from16 v17, v22

    .line 668
    goto :goto_9

    .line 669
    :sswitch_20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    move-result v0

    .line 673
    if-nez v0, :cond_25

    .line 675
    goto :goto_8

    .line 676
    :sswitch_21
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    move-result v0

    .line 680
    if-nez v0, :cond_22

    .line 682
    goto :goto_8

    .line 683
    :cond_22
    move/from16 v17, v18

    .line 685
    goto :goto_9

    .line 686
    :sswitch_22
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    move-result v0

    .line 690
    if-nez v0, :cond_23

    .line 692
    goto :goto_8

    .line 693
    :cond_23
    move/from16 v17, v19

    .line 695
    goto :goto_9

    .line 696
    :sswitch_23
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    move-result v0

    .line 700
    if-nez v0, :cond_24

    .line 702
    goto :goto_8

    .line 703
    :cond_24
    move/from16 v17, v20

    .line 705
    :cond_25
    :goto_9
    packed-switch v17, :pswitch_data_1

    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 710
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 713
    throw v0

    .line 714
    :pswitch_9
    const v0, 0x104012f

    .line 717
    goto :goto_a

    .line 718
    :pswitch_a
    const v0, 0x104012e

    .line 721
    goto :goto_a

    .line 722
    :pswitch_b
    const v0, 0x104012d

    .line 725
    goto :goto_a

    .line 726
    :pswitch_c
    const v0, 0x1040130

    .line 729
    :goto_a
    return v0

    .line 730
    :pswitch_d
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    move-result v1

    .line 734
    if-nez v1, :cond_27

    .line 736
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    move-result v0

    .line 740
    if-eqz v0, :cond_26

    .line 742
    const v0, 0x1040133

    .line 745
    goto :goto_b

    .line 746
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 748
    const-string v1, "Wrong Zoom Type"

    .line 750
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 753
    throw v0

    .line 754
    :cond_27
    const v0, 0x1040132

    .line 757
    :goto_b
    return v0

    .line 758
    :pswitch_e
    const v0, 0x104012b

    .line 761
    return v0

    .line 762
    :pswitch_f
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    move-result v1

    .line 766
    if-nez v1, :cond_29

    .line 768
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 771
    move-result v0

    .line 772
    if-eqz v0, :cond_28

    .line 774
    const v0, 0x104011b

    .line 777
    goto :goto_c

    .line 778
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 780
    const-string v1, "Wrong Brightness Action Type"

    .line 782
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 785
    throw v0

    .line 786
    :cond_29
    const v0, 0x1040123

    .line 789
    :goto_c
    return v0

    .line 790
    :pswitch_10
    const v0, 0x1040127

    .line 793
    return v0

    .line 794
    :pswitch_11
    const v0, 0x1040128

    .line 797
    return v0

    .line 798
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 801
    move-result v1

    .line 802
    sparse-switch v1, :sswitch_data_2

    .line 805
    :goto_d
    move/from16 v15, v22

    .line 807
    goto :goto_e

    .line 808
    :sswitch_24
    const-string/jumbo v1, "ringtone_volume_down"

    .line 811
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 814
    move-result v0

    .line 815
    if-nez v0, :cond_2a

    .line 817
    goto :goto_d

    .line 818
    :cond_2a
    const/4 v15, 0x4

    .line 819
    goto :goto_e

    .line 820
    :sswitch_25
    const-string/jumbo v1, "media_volume_up"

    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 826
    move-result v0

    .line 827
    if-nez v0, :cond_2b

    .line 829
    goto :goto_d

    .line 830
    :cond_2b
    move/from16 v15, v17

    .line 832
    goto :goto_e

    .line 833
    :sswitch_26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 836
    move-result v0

    .line 837
    if-nez v0, :cond_2c

    .line 839
    goto :goto_d

    .line 840
    :cond_2c
    move/from16 v15, v18

    .line 842
    goto :goto_e

    .line 843
    :sswitch_27
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 846
    move-result v0

    .line 847
    if-nez v0, :cond_2d

    .line 849
    goto :goto_d

    .line 850
    :cond_2d
    move/from16 v15, v19

    .line 852
    goto :goto_e

    .line 853
    :sswitch_28
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 856
    move-result v0

    .line 857
    if-nez v0, :cond_2e

    .line 859
    goto :goto_d

    .line 860
    :cond_2e
    move/from16 v15, v20

    .line 862
    :goto_e
    packed-switch v15, :pswitch_data_2

    .line 865
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 867
    const-string v1, "Wrong Sound Action Type"

    .line 869
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 872
    throw v0

    .line 873
    :pswitch_13
    const v0, 0x1040125

    .line 876
    goto :goto_f

    .line 877
    :pswitch_14
    const v0, 0x104011d

    .line 880
    goto :goto_f

    .line 881
    :pswitch_15
    const v0, 0x104011c

    .line 884
    goto :goto_f

    .line 885
    :pswitch_16
    const v0, 0x104012c

    .line 888
    goto :goto_f

    .line 889
    :pswitch_17
    const v0, 0x1040126

    .line 892
    :goto_f
    return v0

    .line 893
    :pswitch_18
    const v0, 0x1040116

    .line 896
    return v0

    .line 897
    :pswitch_19
    const v0, 0x1040131

    .line 900
    return v0

    .line 901
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 904
    move-result v1

    .line 905
    sparse-switch v1, :sswitch_data_3

    .line 908
    :goto_10
    move/from16 v17, v22

    .line 910
    goto :goto_11

    .line 911
    :sswitch_29
    const-string/jumbo v1, "recents"

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 917
    move-result v0

    .line 918
    if-nez v0, :cond_32

    .line 920
    goto :goto_10

    .line 921
    :sswitch_2a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 924
    move-result v0

    .line 925
    if-nez v0, :cond_2f

    .line 927
    goto :goto_10

    .line 928
    :cond_2f
    move/from16 v17, v18

    .line 930
    goto :goto_11

    .line 931
    :sswitch_2b
    move-object/from16 v1, v16

    .line 933
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 936
    move-result v0

    .line 937
    if-nez v0, :cond_30

    .line 939
    goto :goto_10

    .line 940
    :cond_30
    move/from16 v17, v19

    .line 942
    goto :goto_11

    .line 943
    :sswitch_2c
    move-object/from16 v1, v21

    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 948
    move-result v0

    .line 949
    if-nez v0, :cond_31

    .line 951
    goto :goto_10

    .line 952
    :cond_31
    move/from16 v17, v20

    .line 954
    :cond_32
    :goto_11
    packed-switch v17, :pswitch_data_3

    .line 957
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 959
    const-string v1, "Wrong NavigationBar Action Type"

    .line 961
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 964
    throw v0

    .line 965
    :pswitch_1b
    const v0, 0x1040122

    .line 968
    goto :goto_12

    .line 969
    :pswitch_1c
    const v0, 0x104011a

    .line 972
    goto :goto_12

    .line 973
    :pswitch_1d
    const v0, 0x1040115

    .line 976
    goto :goto_12

    .line 977
    :pswitch_1e
    const v0, 0x1040114

    .line 980
    :goto_12
    return v0

    .line 981
    :pswitch_1f
    const v0, 0x104011e

    .line 984
    return v0

    .line 985
    :sswitch_data_0
    .sparse-switch
        -0x7ec2e294 -> :sswitch_1f
        -0x74e910bd -> :sswitch_1e
        -0x682f8f69 -> :sswitch_1d
        -0x643f1902 -> :sswitch_1c
        -0x55236e7d -> :sswitch_1b
        -0x5173c60f -> :sswitch_1a
        -0x18e94be7 -> :sswitch_19
        -0x18db78e4 -> :sswitch_18
        -0x1479af36 -> :sswitch_17
        -0x146c6cb7 -> :sswitch_16
        -0x68ea6ef -> :sswitch_15
        -0x54cce40 -> :sswitch_14
        -0x291c913 -> :sswitch_13
        0x2e04e7 -> :sswitch_12
        0x2f2d34 -> :sswitch_11
        0x30f4df -> :sswitch_10
        0x1443e66e -> :sswitch_f
        0x19319b02 -> :sswitch_e
        0x1aa61287 -> :sswitch_d
        0x1aa98dec -> :sswitch_c
        0x1af46ecc -> :sswitch_b
        0x2d9a2c29 -> :sswitch_a
        0x34b9e0e2 -> :sswitch_9
        0x3ade90d7 -> :sswitch_8
        0x3f33e64b -> :sswitch_7
        0x40828578 -> :sswitch_6
        0x4505db45 -> :sswitch_5
        0x51e7c39a -> :sswitch_4
        0x5696664a -> :sswitch_3
        0x61dac0e1 -> :sswitch_2
        0x65f68d8a -> :sswitch_1
        0x670f86b6 -> :sswitch_0
    .end sparse-switch

    .line 1115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_1a
        :pswitch_6
        :pswitch_1a
        :pswitch_f
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_12
        :pswitch_5
        :pswitch_d
        :pswitch_8
        :pswitch_4
        :pswitch_1a
        :pswitch_12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_12
        :pswitch_0
    .end packed-switch

    .line 1183
    :sswitch_data_1
    .sparse-switch
        -0x54cce40 -> :sswitch_23
        0x1aa61287 -> :sswitch_22
        0x1aa98dec -> :sswitch_21
        0x3ade90d7 -> :sswitch_20
    .end sparse-switch

    .line 1201
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1213
    :sswitch_data_2
    .sparse-switch
        -0x55236e7d -> :sswitch_28
        -0x18e94be7 -> :sswitch_27
        0x1af46ecc -> :sswitch_26
        0x4505db45 -> :sswitch_25
        0x65f68d8a -> :sswitch_24
    .end sparse-switch

    .line 1235
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 1249
    :sswitch_data_3
    .sparse-switch
        -0x74e910bd -> :sswitch_2c
        0x2e04e7 -> :sswitch_2b
        0x30f4df -> :sswitch_2a
        0x40828578 -> :sswitch_29
    .end sparse-switch

    .line 1267
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public abstract performCornerAction(I)V
.end method

.method public setMotionEventForDragAction(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method
