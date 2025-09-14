.class public final Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 18
    .line 19
    new-instance p1, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 29
    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 40
    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_3
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 51
    .line 52
    new-instance p1, Landroid/os/Handler;

    .line 53
    .line 54
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string/jumbo v0, "universal_switch_enabled"

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string/jumbo v0, "universalSwitchState changed to:"

    .line 23
    .line 24
    .line 25
    const-string v2, "InputMethodManagerService"

    .line 26
    .line 27
    invoke-static {p1, v0, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 34
    .line 35
    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 38
    .line 39
    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string/jumbo v2, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_0

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 69
    .line 70
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 71
    .line 72
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 86
    .line 87
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 88
    .line 89
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 98
    .line 99
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    const-string p0, "Failed to return the previous IME becuase the stored info is null"

    .line 104
    .line 105
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 110
    .line 111
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v3, p1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 126
    .line 127
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 130
    .line 131
    invoke-static {v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string/jumbo v5, "restorePreviousUsedInputMethod :  UniversalSwitch, previous inputmethod : : "

    .line 138
    .line 139
    .line 140
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 144
    .line 145
    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 146
    .line 147
    const-string v6, " currentIME: "

    .line 148
    .line 149
    const-string v7, " InputMethodinfo: "

    .line 150
    .line 151
    invoke-static {v4, v5, v6, v3, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    if-eqz v3, :cond_3

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_3

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 179
    .line 180
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_3
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v0, "DexDualViewModeChangeObserver: selfChange="

    .line 191
    .line 192
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 193
    .line 194
    monitor-enter v1

    .line 195
    :try_start_0
    const-string v2, "InputMethodManagerService"

    .line 196
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v0, " mFocusedDisplayId="

    .line 206
    .line 207
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 211
    .line 212
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 213
    .line 214
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 237
    .line 238
    iget v4, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 239
    .line 240
    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->semComputeImeDisplayIdForTarget(I)I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    const/4 v4, 0x0

    .line 245
    if-eqz p1, :cond_6

    .line 246
    .line 247
    if-eqz v2, :cond_5

    .line 248
    .line 249
    if-eqz v3, :cond_4

    .line 250
    .line 251
    const-string p1, "InputMethodManagerService"

    .line 252
    .line 253
    const-string v0, "DexDualViewModeChangeObserver  Client because DualView option is change"

    .line 254
    .line 255
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 259
    .line 260
    const/4 v0, 0x1

    .line 261
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 262
    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 265
    .line 266
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :catchall_0
    move-exception p0

    .line 271
    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->restorePreviousUsedInputMethod()V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_5
    if-eqz v3, :cond_9

    .line 277
    .line 278
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 279
    .line 280
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 283
    .line 284
    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-string/jumbo v2, "com.sec.android.inputmethod.previous_inputmethod_dex"

    .line 297
    .line 298
    .line 299
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    const-string p1, "InputMethodManagerService"

    .line 303
    .line 304
    const-string v0, "DexDualViewModeChangeObserver set Default keyboard"

    .line 305
    .line 306
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 310
    .line 311
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetDefaultInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 312
    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_6
    if-eqz v0, :cond_7

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->restorePreviousUsedInputMethod()V

    .line 318
    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_7
    if-eqz v2, :cond_8

    .line 322
    .line 323
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 324
    .line 325
    invoke-virtual {p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 326
    .line 327
    .line 328
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 329
    .line 330
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msemComputeImeDisplayIdForDexTarget(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mstartInputUncheckedInnerLocked(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_8
    if-eqz v3, :cond_9

    .line 339
    .line 340
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 341
    .line 342
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 343
    .line 344
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 345
    .line 346
    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 351
    .line 352
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    const-string/jumbo v2, "com.sec.android.inputmethod.previous_inputmethod_dex"

    .line 359
    .line 360
    .line 361
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    const-string p1, "InputMethodManagerService"

    .line 365
    .line 366
    const-string v0, "DexDualViewModeChangeObserver set Default keyboard"

    .line 367
    .line 368
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 372
    .line 373
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetDefaultInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 374
    .line 375
    .line 376
    :cond_9
    :goto_1
    monitor-exit v1

    .line 377
    return-void

    .line 378
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    throw p0

    .line 380
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 381
    .line 382
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 383
    .line 384
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 389
    .line 390
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const-string v1, "access_control_keyboard_block"

    .line 397
    .line 398
    const/4 v2, 0x1

    .line 399
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 400
    .line 401
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_a

    .line 406
    .line 407
    goto :goto_3

    .line 408
    :cond_a
    const/4 v2, 0x0

    .line 409
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v1, "Access Control keyboard block changed to:"

    .line 412
    .line 413
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v1, ", mCurrentUserId="

    .line 420
    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    const-string v0, "InputMethodManagerService"

    .line 432
    .line 433
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 437
    .line 438
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 439
    .line 440
    return-void

    .line 441
    :pswitch_2
    const-string p1, "InputMethodManagerService"

    .line 442
    .line 443
    const-string v0, "Access Control changed to:"

    .line 444
    .line 445
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 446
    .line 447
    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 448
    .line 449
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 450
    .line 451
    .line 452
    move-result-object v1
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    iget v1, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 454
    .line 455
    :try_start_2
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 456
    .line 457
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 458
    .line 459
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    const-string v3, "access_control_enabled"

    .line 464
    .line 465
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-eqz v2, :cond_b

    .line 470
    .line 471
    const/4 v2, 0x1

    .line 472
    goto :goto_4

    .line 473
    :cond_b
    const/4 v2, 0x0

    .line 474
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v0, ", mCurrentUserId="

    .line 483
    .line 484
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 498
    .line 499
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    .line 501
    goto :goto_5

    .line 502
    :catch_0
    move-exception p0

    .line 503
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p0

    .line 507
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    :goto_5
    return-void

    .line 511
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 512
    .line 513
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 514
    .line 515
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 520
    .line 521
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 522
    .line 523
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    const-string/jumbo v2, "dexonpc_connection_state"

    .line 528
    .line 529
    .line 530
    const/4 v3, 0x0

    .line 531
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 532
    .line 533
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 538
    .line 539
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 540
    .line 541
    const/4 v2, 0x3

    .line 542
    if-ne v0, v2, :cond_c

    .line 543
    .line 544
    iget v2, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 545
    .line 546
    or-int/lit16 v2, v2, 0x80

    .line 547
    .line 548
    iput v2, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 549
    .line 550
    goto :goto_6

    .line 551
    :cond_c
    iget v2, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 552
    .line 553
    and-int/lit16 v2, v2, -0x81

    .line 554
    .line 555
    iput v2, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 556
    .line 557
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string v2, "DexOnPCStateChangeObserver :  onChange(), keyboardState - "

    .line 560
    .line 561
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 565
    .line 566
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 567
    .line 568
    iget v2, v2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 569
    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    const-string v2, " state "

    .line 574
    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    const-string v1, "InputMethodManagerService"

    .line 586
    .line 587
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 591
    .line 592
    .line 593
    return-void

    .line 594
    nop

    .line 595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restorePreviousUsedInputMethod()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDexSetting()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "InputMethodManagerService"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p0, "DexDualViewModeChangeObserver : isDexSetting true, so do not need restore"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string/jumbo v2, "com.sec.android.inputmethod.previous_inputmethod_dex"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v3, "DexDualViewModeChangeObserver : restorePreviousUsedInputMethod - "

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    if-eqz v0, :cond_5

    .line 52
    .line 53
    const-string v3, "-1"

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 63
    .line 64
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    const-string v4, "DexDualViewModeChangeObserver : Failed to return the previous IME becuase the stored ime is uninstalled pre imi id = "

    .line 71
    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 92
    .line 93
    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    .line 97
    invoke-static {v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 102
    .line 103
    iget v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 104
    .line 105
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const/4 v6, 0x0

    .line 110
    if-eqz v4, :cond_4

    .line 111
    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_4

    .line 123
    .line 124
    const-string v4, "Restore the Previous Used IME because KnoxDesktop Disconnected"

    .line 125
    .line 126
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 130
    .line 131
    invoke-virtual {v5, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-virtual {v1, v4, v6, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_4
    const-string v0, "DexDualViewModeChangeObserver  restorePreviousUsedInputMethod reset Client because DualView option is change"

    .line 151
    .line 152
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 156
    .line 157
    invoke-virtual {v0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 158
    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 161
    .line 162
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msemComputeImeDisplayIdForDexTarget(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mstartInputUncheckedInnerLocked(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 167
    .line 168
    .line 169
    :goto_0
    return-void

    .line 170
    :cond_5
    :goto_1
    const-string p0, "DexDualViewModeChangeObserver : Failed to return the previous IME becuase the stored info is null or do not need restore"

    .line 171
    .line 172
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    return-void
.end method
