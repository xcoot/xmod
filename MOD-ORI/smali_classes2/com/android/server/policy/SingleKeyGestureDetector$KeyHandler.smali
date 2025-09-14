.class public final Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SingleKeyGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

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
    .locals 11

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 6
    .line 7
    iget-object v6, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;

    .line 8
    .line 9
    iget v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I

    .line 10
    .line 11
    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I

    .line 12
    .line 13
    const-string v4, "SingleKeyGesture"

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string p0, "No active rule."

    .line 18
    .line 19
    invoke-static {v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget v5, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    .line 24
    .line 25
    iget v7, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    .line 26
    .line 27
    iget v0, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    .line 28
    .line 29
    iget p1, p1, Landroid/os/Message;->what:I

    .line 30
    .line 31
    const/4 v8, 0x2

    .line 32
    const/4 v9, 0x1

    .line 33
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 34
    .line 35
    if-eqz p1, :cond_a

    .line 36
    .line 37
    if-eq p1, v9, :cond_8

    .line 38
    .line 39
    const-string v2, " on display "

    .line 40
    .line 41
    if-eq p1, v8, :cond_4

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    if-eq p1, v3, :cond_2

    .line 45
    .line 46
    const/4 p0, 0x6

    .line 47
    if-eq p1, p0, :cond_1

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onReset()V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_2
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "Detect key up "

    .line 63
    .line 64
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-wide p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 88
    .line 89
    invoke-virtual {v1, v7, v0, p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyUp(IIJ)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_4
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "Detect press "

    .line 101
    .line 102
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, ", count "

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v7, v4}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    if-ne v7, v9, :cond_7

    .line 127
    .line 128
    iget-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 129
    .line 130
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getDownTime()J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    cmp-long p1, v2, v7

    .line 135
    .line 136
    if-lez p1, :cond_6

    .line 137
    .line 138
    const-string p0, "SinglePress downTime is older than multiPress triggered time."

    .line 139
    .line 140
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    goto/16 :goto_1

    .line 144
    .line 145
    :cond_6
    iget-wide p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 146
    .line 147
    invoke-virtual {v1, p0, p1, v6, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onPress(JLandroid/view/KeyEvent;I)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_7
    iget-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 153
    .line 154
    move v4, v7

    .line 155
    move v5, v0

    .line 156
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onMultiPress(JIILandroid/view/KeyEvent;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :cond_8
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 162
    .line 163
    if-eqz p1, :cond_9

    .line 164
    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v0, "Detect very long press "

    .line 168
    .line 169
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :cond_9
    iget-wide p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onVeryLongPress()V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_a
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 194
    .line 195
    const-string v0, " type="

    .line 196
    .line 197
    if-eqz p1, :cond_b

    .line 198
    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v7, "Detect long press "

    .line 202
    .line 203
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v7, " info : "

    .line 220
    .line 221
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    .line 225
    .line 226
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    :cond_b
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    .line 237
    .line 238
    iget v7, p1, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    .line 239
    .line 240
    iget-object v10, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    .line 241
    .line 242
    if-ne v5, v7, :cond_c

    .line 243
    .line 244
    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mTypeList:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-ne p1, v9, :cond_c

    .line 251
    .line 252
    const-string p0, "The long press already have been consumed"

    .line 253
    .line 254
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    invoke-virtual {v10}, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->reset()V

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_c
    iget p1, v10, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    .line 262
    .line 263
    if-nez p1, :cond_d

    .line 264
    .line 265
    iget-object p1, v10, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mTypeList:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-nez p1, :cond_d

    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_d
    iget p1, v10, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    .line 275
    .line 276
    if-ne v5, p1, :cond_e

    .line 277
    .line 278
    iget-object p1, v10, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mTypeList:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-lt p1, v8, :cond_f

    .line 285
    .line 286
    :cond_e
    invoke-virtual {v10}, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->reset()V

    .line 287
    .line 288
    .line 289
    :cond_f
    :goto_0
    const-string p1, "addInfo, keyCode="

    .line 290
    .line 291
    invoke-static {v5, v3, p1, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iput v5, v10, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    .line 295
    .line 296
    iget-object p1, v10, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mTypeList:Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    iget-wide p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 306
    .line 307
    invoke-virtual {v1, p0, p1, v6, v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(JLandroid/view/KeyEvent;I)V

    .line 308
    .line 309
    .line 310
    :goto_1
    return-void
.end method
