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

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "input"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    sparse-switch v4, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :sswitch_0
    const-string/jumbo v4, "double_click"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    const/16 v3, 0x9

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :sswitch_1
    const-string/jumbo v4, "swipe_right"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_1
    const/16 v3, 0x8

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :sswitch_2
    const-string/jumbo v4, "zoom_out"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_2

    .line 57
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

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_3

    .line 69
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

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_4

    .line 81
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

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_5

    .line 93
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

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_6

    .line 105
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

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_7

    .line 117
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

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_8

    .line 129
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

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_9

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_9
    const/4 v3, 0x0

    .line 144
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 145
    .line 146
    .line 147
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    const-string p1, "Wrong Corner Action Type"

    .line 150
    .line 151
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :pswitch_0
    new-instance p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;

    .line 156
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 167
    .line 168
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    .line 169
    .line 170
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_1
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 183
    .line 184
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    .line 185
    .line 186
    iput-object p1, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mType:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 195
    .line 196
    new-instance p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 197
    .line 198
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    .line 199
    .line 200
    .line 201
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 202
    .line 203
    new-instance p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 204
    .line 205
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    .line 206
    .line 207
    .line 208
    iput-object p0, v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 209
    .line 210
    return-object v1

    .line 211
    :pswitch_2
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 217
    .line 218
    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mType:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Swipe;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 227
    .line 228
    return-object v0

    .line 229
    :pswitch_3
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    .line 230
    .line 231
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 232
    .line 233
    .line 234
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 235
    .line 236
    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    .line 237
    .line 238
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 243
    .line 244
    iput-object p1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mInputManager:Landroid/hardware/input/InputManager;

    .line 245
    .line 246
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mType:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iput-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 253
    .line 254
    return-object v0

    .line 255
    :pswitch_4
    new-instance p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    .line 256
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    .line 259
    .line 260
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 261
    .line 262
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 269
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

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
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

    .line 2
    .line 3
    const-string/jumbo v1, "swipe_right"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "zoom_out"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "media_volume_down"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "swipe_left"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "swipe_down"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v6, "drag_and_drop"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v7, "increase_brightness"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v8, "home"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v9, "drag"

    .line 28
    .line 29
    .line 30
    const-string v10, "back"

    .line 31
    .line 32
    const-string/jumbo v11, "swipe_up"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v12, "zoom_in"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v13, "reduce_brightness"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v14, "sound_vibrate_mute"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v15, "ringtone_volume_up"

    .line 45
    .line 46
    .line 47
    move-object/from16 v16, v15

    .line 48
    .line 49
    const-string v15, "accessibility_button"

    .line 50
    .line 51
    const/16 v17, 0x3

    .line 52
    .line 53
    const/16 v18, 0x2

    .line 54
    .line 55
    const/16 v19, 0x1

    .line 56
    .line 57
    const/16 v20, 0x0

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-object/from16 v21, v15

    .line 63
    .line 64
    const-string v15, "Wrong Swipe Type"

    .line 65
    .line 66
    const/16 v22, -0x1

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v23

    .line 72
    sparse-switch v23, :sswitch_data_0

    .line 73
    .line 74
    .line 75
    move-object/from16 v23, v15

    .line 76
    .line 77
    :goto_0
    move-object/from16 v15, v16

    .line 78
    .line 79
    :goto_1
    move-object/from16 v16, v10

    .line 80
    .line 81
    :goto_2
    move/from16 v10, v22

    .line 82
    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :sswitch_0
    move-object/from16 v23, v15

    .line 86
    .line 87
    const-string/jumbo v15, "open_close_quick_panel"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    if-nez v15, :cond_0

    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_0
    const/16 v15, 0x1f

    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :sswitch_1
    move-object/from16 v23, v15

    .line 103
    .line 104
    const-string/jumbo v15, "ringtone_volume_down"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    if-nez v15, :cond_1

    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_1
    const/16 v15, 0x1e

    .line 116
    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :sswitch_2
    move-object/from16 v23, v15

    .line 120
    .line 121
    const-string/jumbo v15, "pause_auto_click"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    if-nez v15, :cond_2

    .line 129
    .line 130
    goto/16 :goto_3

    .line 131
    .line 132
    :cond_2
    const/16 v15, 0x1d

    .line 133
    .line 134
    goto/16 :goto_4

    .line 135
    .line 136
    :sswitch_3
    move-object/from16 v23, v15

    .line 137
    .line 138
    const-string/jumbo v15, "resume_auto_click"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-nez v15, :cond_3

    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_3
    const/16 v15, 0x1c

    .line 150
    .line 151
    goto/16 :goto_4

    .line 152
    .line 153
    :sswitch_4
    move-object/from16 v23, v15

    .line 154
    .line 155
    const-string/jumbo v15, "double_click"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    if-nez v15, :cond_4

    .line 163
    .line 164
    goto/16 :goto_3

    .line 165
    .line 166
    :cond_4
    const/16 v15, 0x1b

    .line 167
    .line 168
    goto/16 :goto_4

    .line 169
    .line 170
    :sswitch_5
    move-object/from16 v23, v15

    .line 171
    .line 172
    const-string/jumbo v15, "media_volume_up"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v15

    .line 179
    if-nez v15, :cond_5

    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_5
    const/16 v15, 0x1a

    .line 184
    .line 185
    goto/16 :goto_4

    .line 186
    .line 187
    :sswitch_6
    move-object/from16 v23, v15

    .line 188
    .line 189
    const-string/jumbo v15, "recents"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v15

    .line 196
    if-nez v15, :cond_6

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_6
    const/16 v15, 0x19

    .line 201
    .line 202
    goto/16 :goto_4

    .line 203
    .line 204
    :sswitch_7
    move-object/from16 v23, v15

    .line 205
    .line 206
    const-string/jumbo v15, "send_sos_messages"

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v15

    .line 213
    if-nez v15, :cond_7

    .line 214
    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :cond_7
    const/16 v15, 0x18

    .line 218
    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :sswitch_8
    move-object/from16 v23, v15

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    if-nez v15, :cond_8

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_8
    const/16 v15, 0x17

    .line 232
    .line 233
    goto/16 :goto_4

    .line 234
    .line 235
    :sswitch_9
    move-object/from16 v23, v15

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    if-nez v15, :cond_9

    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :cond_9
    const/16 v15, 0x16

    .line 246
    .line 247
    goto/16 :goto_4

    .line 248
    .line 249
    :sswitch_a
    move-object/from16 v23, v15

    .line 250
    .line 251
    const-string/jumbo v15, "power_off_menu"

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v15

    .line 258
    if-nez v15, :cond_a

    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_a
    const/16 v15, 0x15

    .line 263
    .line 264
    goto/16 :goto_4

    .line 265
    .line 266
    :sswitch_b
    move-object/from16 v23, v15

    .line 267
    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    if-nez v15, :cond_b

    .line 273
    .line 274
    goto/16 :goto_3

    .line 275
    .line 276
    :cond_b
    const/16 v15, 0x14

    .line 277
    .line 278
    goto/16 :goto_4

    .line 279
    .line 280
    :sswitch_c
    move-object/from16 v23, v15

    .line 281
    .line 282
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v15

    .line 286
    if-nez v15, :cond_c

    .line 287
    .line 288
    goto/16 :goto_3

    .line 289
    .line 290
    :cond_c
    const/16 v15, 0x13

    .line 291
    .line 292
    goto/16 :goto_4

    .line 293
    .line 294
    :sswitch_d
    move-object/from16 v23, v15

    .line 295
    .line 296
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v15

    .line 300
    if-nez v15, :cond_d

    .line 301
    .line 302
    goto/16 :goto_3

    .line 303
    .line 304
    :cond_d
    const/16 v15, 0x12

    .line 305
    .line 306
    goto/16 :goto_4

    .line 307
    .line 308
    :sswitch_e
    move-object/from16 v23, v15

    .line 309
    .line 310
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v15

    .line 314
    if-nez v15, :cond_e

    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_e
    const/16 v15, 0x11

    .line 319
    .line 320
    goto/16 :goto_4

    .line 321
    .line 322
    :sswitch_f
    move-object/from16 v23, v15

    .line 323
    .line 324
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v15

    .line 328
    if-nez v15, :cond_f

    .line 329
    .line 330
    goto/16 :goto_3

    .line 331
    .line 332
    :cond_f
    const/16 v15, 0x10

    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :sswitch_10
    move-object/from16 v23, v15

    .line 337
    .line 338
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v15

    .line 342
    if-nez v15, :cond_10

    .line 343
    .line 344
    goto/16 :goto_3

    .line 345
    .line 346
    :cond_10
    const/16 v15, 0xf

    .line 347
    .line 348
    goto/16 :goto_4

    .line 349
    .line 350
    :sswitch_11
    move-object/from16 v23, v15

    .line 351
    .line 352
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v15

    .line 356
    if-nez v15, :cond_11

    .line 357
    .line 358
    goto/16 :goto_3

    .line 359
    .line 360
    :cond_11
    const/16 v15, 0xe

    .line 361
    .line 362
    goto/16 :goto_4

    .line 363
    .line 364
    :sswitch_12
    move-object/from16 v23, v15

    .line 365
    .line 366
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v15

    .line 370
    if-nez v15, :cond_12

    .line 371
    .line 372
    goto/16 :goto_3

    .line 373
    .line 374
    :cond_12
    const/16 v15, 0xd

    .line 375
    .line 376
    goto/16 :goto_4

    .line 377
    .line 378
    :sswitch_13
    move-object/from16 v23, v15

    .line 379
    .line 380
    const-string/jumbo v15, "screen_shot"

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v15

    .line 387
    if-nez v15, :cond_13

    .line 388
    .line 389
    goto/16 :goto_3

    .line 390
    .line 391
    :cond_13
    const/16 v15, 0xc

    .line 392
    .line 393
    goto/16 :goto_4

    .line 394
    .line 395
    :sswitch_14
    move-object/from16 v23, v15

    .line 396
    .line 397
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v15

    .line 401
    if-nez v15, :cond_14

    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_14
    const/16 v15, 0xb

    .line 405
    .line 406
    goto :goto_4

    .line 407
    :sswitch_15
    move-object/from16 v23, v15

    .line 408
    .line 409
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v15

    .line 413
    if-nez v15, :cond_15

    .line 414
    .line 415
    goto :goto_3

    .line 416
    :cond_15
    const/16 v15, 0xa

    .line 417
    .line 418
    goto :goto_4

    .line 419
    :sswitch_16
    move-object/from16 v23, v15

    .line 420
    .line 421
    const-string/jumbo v15, "sound_mute"

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v15

    .line 428
    if-nez v15, :cond_16

    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_16
    const/16 v15, 0x9

    .line 432
    .line 433
    goto :goto_4

    .line 434
    :sswitch_17
    move-object/from16 v23, v15

    .line 435
    .line 436
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v15

    .line 440
    if-nez v15, :cond_17

    .line 441
    .line 442
    goto :goto_3

    .line 443
    :cond_17
    const/16 v15, 0x8

    .line 444
    .line 445
    goto :goto_4

    .line 446
    :sswitch_18
    move-object/from16 v23, v15

    .line 447
    .line 448
    const-string/jumbo v15, "screen_off"

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v15

    .line 455
    if-nez v15, :cond_18

    .line 456
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

    .line 461
    .line 462
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v15

    .line 466
    if-nez v15, :cond_19

    .line 467
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

    .line 472
    .line 473
    const-string/jumbo v15, "screen_rotation"

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v15

    .line 480
    if-nez v15, :cond_1a

    .line 481
    .line 482
    :goto_3
    goto/16 :goto_0

    .line 483
    .line 484
    :cond_1a
    const/4 v15, 0x5

    .line 485
    :goto_4
    move-object/from16 v24, v16

    .line 486
    .line 487
    move-object/from16 v16, v10

    .line 488
    .line 489
    move v10, v15

    .line 490
    move-object/from16 v15, v24

    .line 491
    .line 492
    goto/16 :goto_6

    .line 493
    .line 494
    :sswitch_1b
    move-object/from16 v23, v15

    .line 495
    .line 496
    move-object/from16 v15, v16

    .line 497
    .line 498
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v16

    .line 502
    if-nez v16, :cond_1b

    .line 503
    .line 504
    goto/16 :goto_1

    .line 505
    .line 506
    :cond_1b
    move-object/from16 v16, v10

    .line 507
    .line 508
    const/4 v10, 0x4

    .line 509
    goto :goto_6

    .line 510
    :sswitch_1c
    move-object/from16 v23, v15

    .line 511
    .line 512
    move-object/from16 v15, v16

    .line 513
    .line 514
    move-object/from16 v16, v10

    .line 515
    .line 516
    const-string/jumbo v10, "click_and_hold"

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v10

    .line 523
    if-nez v10, :cond_1c

    .line 524
    .line 525
    goto :goto_5

    .line 526
    :cond_1c
    move/from16 v10, v17

    .line 527
    .line 528
    goto :goto_6

    .line 529
    :sswitch_1d
    move-object/from16 v23, v15

    .line 530
    .line 531
    move-object/from16 v15, v16

    .line 532
    .line 533
    move-object/from16 v16, v10

    .line 534
    .line 535
    const-string/jumbo v10, "talk_to_bixby"

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v10

    .line 542
    if-nez v10, :cond_1d

    .line 543
    .line 544
    goto :goto_5

    .line 545
    :cond_1d
    move/from16 v10, v18

    .line 546
    .line 547
    goto :goto_6

    .line 548
    :sswitch_1e
    move-object/from16 v23, v15

    .line 549
    .line 550
    move-object/from16 v15, v16

    .line 551
    .line 552
    move-object/from16 v16, v10

    .line 553
    .line 554
    move-object/from16 v10, v21

    .line 555
    .line 556
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v21

    .line 560
    if-nez v21, :cond_1e

    .line 561
    .line 562
    move-object/from16 v21, v10

    .line 563
    .line 564
    goto/16 :goto_2

    .line 565
    .line 566
    :cond_1e
    move-object/from16 v21, v10

    .line 567
    .line 568
    move/from16 v10, v19

    .line 569
    .line 570
    goto :goto_6

    .line 571
    :sswitch_1f
    move-object/from16 v23, v15

    .line 572
    .line 573
    move-object/from16 v15, v16

    .line 574
    .line 575
    move-object/from16 v16, v10

    .line 576
    .line 577
    const-string/jumbo v10, "open_close_notifications"

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v10

    .line 584
    if-nez v10, :cond_1f

    .line 585
    .line 586
    :goto_5
    goto/16 :goto_2

    .line 587
    .line 588
    :cond_1f
    move/from16 v10, v20

    .line 589
    .line 590
    :goto_6
    packed-switch v10, :pswitch_data_0

    .line 591
    .line 592
    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 594
    .line 595
    const-string v1, "Wrong Corner Action Type"

    .line 596
    .line 597
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    throw v0

    .line 601
    :pswitch_0
    const v0, 0x104011f

    .line 602
    .line 603
    .line 604
    return v0

    .line 605
    :pswitch_1
    const v0, 0x1040120

    .line 606
    .line 607
    .line 608
    return v0

    .line 609
    :pswitch_2
    const v0, 0x1040124

    .line 610
    .line 611
    .line 612
    return v0

    .line 613
    :pswitch_3
    const v0, 0x1040117

    .line 614
    .line 615
    .line 616
    return v0

    .line 617
    :pswitch_4
    const v0, 0x104012a

    .line 618
    .line 619
    .line 620
    return v0

    .line 621
    :pswitch_5
    const v0, 0x1040121

    .line 622
    .line 623
    .line 624
    return v0

    .line 625
    :pswitch_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    if-nez v1, :cond_21

    .line 630
    .line 631
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_20

    .line 636
    .line 637
    const v0, 0x1040119

    .line 638
    .line 639
    .line 640
    goto :goto_7

    .line 641
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 642
    .line 643
    move-object/from16 v2, v23

    .line 644
    .line 645
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    throw v0

    .line 649
    :cond_21
    const v0, 0x1040118

    .line 650
    .line 651
    .line 652
    :goto_7
    return v0

    .line 653
    :pswitch_7
    const v0, 0x1040129

    .line 654
    .line 655
    .line 656
    return v0

    .line 657
    :pswitch_8
    move-object/from16 v2, v23

    .line 658
    .line 659
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    sparse-switch v3, :sswitch_data_1

    .line 664
    .line 665
    .line 666
    :goto_8
    move/from16 v17, v22

    .line 667
    .line 668
    goto :goto_9

    .line 669
    :sswitch_20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    if-nez v0, :cond_25

    .line 674
    .line 675
    goto :goto_8

    .line 676
    :sswitch_21
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    if-nez v0, :cond_22

    .line 681
    .line 682
    goto :goto_8

    .line 683
    :cond_22
    move/from16 v17, v18

    .line 684
    .line 685
    goto :goto_9

    .line 686
    :sswitch_22
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    if-nez v0, :cond_23

    .line 691
    .line 692
    goto :goto_8

    .line 693
    :cond_23
    move/from16 v17, v19

    .line 694
    .line 695
    goto :goto_9

    .line 696
    :sswitch_23
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    if-nez v0, :cond_24

    .line 701
    .line 702
    goto :goto_8

    .line 703
    :cond_24
    move/from16 v17, v20

    .line 704
    .line 705
    :cond_25
    :goto_9
    packed-switch v17, :pswitch_data_1

    .line 706
    .line 707
    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 709
    .line 710
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    throw v0

    .line 714
    :pswitch_9
    const v0, 0x104012f

    .line 715
    .line 716
    .line 717
    goto :goto_a

    .line 718
    :pswitch_a
    const v0, 0x104012e

    .line 719
    .line 720
    .line 721
    goto :goto_a

    .line 722
    :pswitch_b
    const v0, 0x104012d

    .line 723
    .line 724
    .line 725
    goto :goto_a

    .line 726
    :pswitch_c
    const v0, 0x1040130

    .line 727
    .line 728
    .line 729
    :goto_a
    return v0

    .line 730
    :pswitch_d
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result v1

    .line 734
    if-nez v1, :cond_27

    .line 735
    .line 736
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result v0

    .line 740
    if-eqz v0, :cond_26

    .line 741
    .line 742
    const v0, 0x1040133

    .line 743
    .line 744
    .line 745
    goto :goto_b

    .line 746
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 747
    .line 748
    const-string v1, "Wrong Zoom Type"

    .line 749
    .line 750
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    throw v0

    .line 754
    :cond_27
    const v0, 0x1040132

    .line 755
    .line 756
    .line 757
    :goto_b
    return v0

    .line 758
    :pswitch_e
    const v0, 0x104012b

    .line 759
    .line 760
    .line 761
    return v0

    .line 762
    :pswitch_f
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-nez v1, :cond_29

    .line 767
    .line 768
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    if-eqz v0, :cond_28

    .line 773
    .line 774
    const v0, 0x104011b

    .line 775
    .line 776
    .line 777
    goto :goto_c

    .line 778
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 779
    .line 780
    const-string v1, "Wrong Brightness Action Type"

    .line 781
    .line 782
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    throw v0

    .line 786
    :cond_29
    const v0, 0x1040123

    .line 787
    .line 788
    .line 789
    :goto_c
    return v0

    .line 790
    :pswitch_10
    const v0, 0x1040127

    .line 791
    .line 792
    .line 793
    return v0

    .line 794
    :pswitch_11
    const v0, 0x1040128

    .line 795
    .line 796
    .line 797
    return v0

    .line 798
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    sparse-switch v1, :sswitch_data_2

    .line 803
    .line 804
    .line 805
    :goto_d
    move/from16 v15, v22

    .line 806
    .line 807
    goto :goto_e

    .line 808
    :sswitch_24
    const-string/jumbo v1, "ringtone_volume_down"

    .line 809
    .line 810
    .line 811
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    if-nez v0, :cond_2a

    .line 816
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

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    if-nez v0, :cond_2b

    .line 828
    .line 829
    goto :goto_d

    .line 830
    :cond_2b
    move/from16 v15, v17

    .line 831
    .line 832
    goto :goto_e

    .line 833
    :sswitch_26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 834
    .line 835
    .line 836
    move-result v0

    .line 837
    if-nez v0, :cond_2c

    .line 838
    .line 839
    goto :goto_d

    .line 840
    :cond_2c
    move/from16 v15, v18

    .line 841
    .line 842
    goto :goto_e

    .line 843
    :sswitch_27
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-nez v0, :cond_2d

    .line 848
    .line 849
    goto :goto_d

    .line 850
    :cond_2d
    move/from16 v15, v19

    .line 851
    .line 852
    goto :goto_e

    .line 853
    :sswitch_28
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    if-nez v0, :cond_2e

    .line 858
    .line 859
    goto :goto_d

    .line 860
    :cond_2e
    move/from16 v15, v20

    .line 861
    .line 862
    :goto_e
    packed-switch v15, :pswitch_data_2

    .line 863
    .line 864
    .line 865
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 866
    .line 867
    const-string v1, "Wrong Sound Action Type"

    .line 868
    .line 869
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    throw v0

    .line 873
    :pswitch_13
    const v0, 0x1040125

    .line 874
    .line 875
    .line 876
    goto :goto_f

    .line 877
    :pswitch_14
    const v0, 0x104011d

    .line 878
    .line 879
    .line 880
    goto :goto_f

    .line 881
    :pswitch_15
    const v0, 0x104011c

    .line 882
    .line 883
    .line 884
    goto :goto_f

    .line 885
    :pswitch_16
    const v0, 0x104012c

    .line 886
    .line 887
    .line 888
    goto :goto_f

    .line 889
    :pswitch_17
    const v0, 0x1040126

    .line 890
    .line 891
    .line 892
    :goto_f
    return v0

    .line 893
    :pswitch_18
    const v0, 0x1040116

    .line 894
    .line 895
    .line 896
    return v0

    .line 897
    :pswitch_19
    const v0, 0x1040131

    .line 898
    .line 899
    .line 900
    return v0

    .line 901
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 902
    .line 903
    .line 904
    move-result v1

    .line 905
    sparse-switch v1, :sswitch_data_3

    .line 906
    .line 907
    .line 908
    :goto_10
    move/from16 v17, v22

    .line 909
    .line 910
    goto :goto_11

    .line 911
    :sswitch_29
    const-string/jumbo v1, "recents"

    .line 912
    .line 913
    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    move-result v0

    .line 918
    if-nez v0, :cond_32

    .line 919
    .line 920
    goto :goto_10

    .line 921
    :sswitch_2a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    if-nez v0, :cond_2f

    .line 926
    .line 927
    goto :goto_10

    .line 928
    :cond_2f
    move/from16 v17, v18

    .line 929
    .line 930
    goto :goto_11

    .line 931
    :sswitch_2b
    move-object/from16 v1, v16

    .line 932
    .line 933
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-nez v0, :cond_30

    .line 938
    .line 939
    goto :goto_10

    .line 940
    :cond_30
    move/from16 v17, v19

    .line 941
    .line 942
    goto :goto_11

    .line 943
    :sswitch_2c
    move-object/from16 v1, v21

    .line 944
    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    move-result v0

    .line 949
    if-nez v0, :cond_31

    .line 950
    .line 951
    goto :goto_10

    .line 952
    :cond_31
    move/from16 v17, v20

    .line 953
    .line 954
    :cond_32
    :goto_11
    packed-switch v17, :pswitch_data_3

    .line 955
    .line 956
    .line 957
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 958
    .line 959
    const-string v1, "Wrong NavigationBar Action Type"

    .line 960
    .line 961
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    throw v0

    .line 965
    :pswitch_1b
    const v0, 0x1040122

    .line 966
    .line 967
    .line 968
    goto :goto_12

    .line 969
    :pswitch_1c
    const v0, 0x104011a

    .line 970
    .line 971
    .line 972
    goto :goto_12

    .line 973
    :pswitch_1d
    const v0, 0x1040115

    .line 974
    .line 975
    .line 976
    goto :goto_12

    .line 977
    :pswitch_1e
    const v0, 0x1040114

    .line 978
    .line 979
    .line 980
    :goto_12
    return v0

    .line 981
    :pswitch_1f
    const v0, 0x104011e

    .line 982
    .line 983
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

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
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

    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    :sswitch_data_1
    .sparse-switch
        -0x54cce40 -> :sswitch_23
        0x1aa61287 -> :sswitch_22
        0x1aa98dec -> :sswitch_21
        0x3ade90d7 -> :sswitch_20
    .end sparse-switch

    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    :sswitch_data_2
    .sparse-switch
        -0x55236e7d -> :sswitch_28
        -0x18e94be7 -> :sswitch_27
        0x1af46ecc -> :sswitch_26
        0x4505db45 -> :sswitch_25
        0x65f68d8a -> :sswitch_24
    .end sparse-switch

    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    :sswitch_data_3
    .sparse-switch
        -0x74e910bd -> :sswitch_2c
        0x2e04e7 -> :sswitch_2b
        0x30f4df -> :sswitch_2a
        0x40828578 -> :sswitch_29
    .end sparse-switch

    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
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
