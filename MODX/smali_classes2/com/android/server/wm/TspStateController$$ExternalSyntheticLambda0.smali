.class public final synthetic Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TspStateController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TspStateController;ZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TspStateController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TspStateController;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 10
    .line 11
    const-string v4, "TspStateManager"

    .line 12
    .line 13
    if-eqz v3, :cond_9

    .line 14
    .line 15
    iget-boolean v3, v0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    if-eqz v1, :cond_a

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v5, 0x6

    .line 24
    const/4 v6, 0x5

    .line 25
    const-string v7, "]"

    .line 26
    .line 27
    const-string v8, "["

    .line 28
    .line 29
    const-string/jumbo v9, "tspstatemanager"

    .line 30
    .line 31
    .line 32
    if-eq v2, v6, :cond_3

    .line 33
    .line 34
    if-eq v2, v5, :cond_2

    .line 35
    .line 36
    iget-object v10, v0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v10, :cond_1

    .line 39
    .line 40
    const-string v7, "]window : "

    .line 41
    .line 42
    const-string v10, ": "

    .line 43
    .line 44
    invoke-static {v2, v8, v7, p0, v10}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object v8, v0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v9, v7}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    iput-object v7, v0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v9, v7}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v7, v0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 86
    .line 87
    invoke-virtual {v7, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setGripData(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v9, v7}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v7, v0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 113
    .line 114
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    invoke-virtual {v7, v8}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setNoteMode(I)I

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 123
    .line 124
    if-eqz v10, :cond_4

    .line 125
    .line 126
    const-string v10, "1"

    .line 127
    .line 128
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_4

    .line 133
    .line 134
    iget-object v10, v0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    iget v11, v10, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 145
    .line 146
    if-ne v11, v3, :cond_4

    .line 147
    .line 148
    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    .line 149
    .line 150
    if-ne v10, v1, :cond_4

    .line 151
    .line 152
    const-string/jumbo p0, "physical keyboard being exposed. ignore it."

    .line 153
    .line 154
    .line 155
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-static {v9, v7}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v7, v0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 182
    .line 183
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    invoke-virtual {v7, v8}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSipMode(I)I

    .line 188
    .line 189
    .line 190
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string/jumbo v8, "wrote command: cmd="

    .line 193
    .line 194
    .line 195
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v8, ", type="

    .line 202
    .line 203
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    if-eq v2, v6, :cond_a

    .line 217
    .line 218
    iget-object v4, v0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    iget-object v0, v0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    .line 221
    .line 222
    if-eq v2, v3, :cond_8

    .line 223
    .line 224
    if-eq v2, v1, :cond_7

    .line 225
    .line 226
    const/4 v1, 0x3

    .line 227
    if-eq v2, v1, :cond_6

    .line 228
    .line 229
    if-eq v2, v5, :cond_5

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_5
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastNoteMode:Ljava/lang/String;

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_6
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mHoleCommand:Ljava/lang/String;

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_7
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLandCommand:Ljava/lang/String;

    .line 239
    .line 240
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_8
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mPortCommand:Ljava/lang/String;

    .line 244
    .line 245
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    .line 246
    .line 247
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/wm/TspStateController$TspDebug;->updateDebugString()Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    iget-boolean v1, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    .line 252
    .line 253
    if-eqz v1, :cond_a

    .line 254
    .line 255
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    const-string/jumbo v2, "setting_last_grip_cmd"

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    const-string/jumbo v1, "setting_last_note_mode"

    .line 274
    .line 275
    .line 276
    iget-object v0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastNoteMode:Ljava/lang/String;

    .line 277
    .line 278
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_9
    const-string/jumbo p0, "mSemInputDeviceManager is null"

    .line 283
    .line 284
    .line 285
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    :cond_a
    :goto_3
    return-void
.end method
