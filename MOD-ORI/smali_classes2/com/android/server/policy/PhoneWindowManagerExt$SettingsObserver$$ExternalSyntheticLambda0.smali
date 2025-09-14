.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

.field public final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 13
    .line 14
    const/4 v0, -0x2

    .line 15
    const-string v1, "ai_key_disable"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    move v2, v0

    .line 26
    :cond_0
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 32
    .line 33
    check-cast p1, Ljava/lang/Boolean;

    .line 34
    .line 35
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 36
    .line 37
    const-string/jumbo v0, "premium_tap_for_watch_face_switch_on_off"

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-ne p0, v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x0

    .line 49
    :goto_0
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 55
    .line 56
    check-cast p1, Ljava/lang/Boolean;

    .line 57
    .line 58
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 61
    .line 62
    const/4 v0, -0x3

    .line 63
    const-string/jumbo v1, "xcover_top_key_on_lockscreen"

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const/4 v0, 0x1

    .line 72
    if-ne p0, v0, :cond_2

    .line 73
    .line 74
    move v2, v0

    .line 75
    :cond_2
    iput-boolean v2, p1, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 81
    .line 82
    check-cast p1, Ljava/lang/Boolean;

    .line 83
    .line 84
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 87
    .line 88
    const/4 v0, -0x3

    .line 89
    const-string v1, "active_key_on_lockscreen"

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    const/4 v0, 0x1

    .line 97
    if-ne p0, v0, :cond_3

    .line 98
    .line 99
    move v2, v0

    .line 100
    :cond_3
    iput-boolean v2, p1, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 106
    .line 107
    check-cast p1, Ljava/lang/Boolean;

    .line 108
    .line 109
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 110
    .line 111
    const/4 v0, -0x2

    .line 112
    const-string v1, "double_tab_to_wake_up"

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    const/4 v0, 0x1

    .line 120
    if-ne p0, v0, :cond_4

    .line 121
    .line 122
    move v2, v0

    .line 123
    :cond_4
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 129
    .line 130
    check-cast p1, Ljava/lang/Boolean;

    .line 131
    .line 132
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 133
    .line 134
    const/4 v0, -0x2

    .line 135
    const-string v1, "access_control_volume_button"

    .line 136
    .line 137
    const/4 v2, 0x1

    .line 138
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-ne p0, v2, :cond_5

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    const/4 v2, 0x0

    .line 146
    :goto_1
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 152
    .line 153
    check-cast p1, Ljava/lang/Boolean;

    .line 154
    .line 155
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 156
    .line 157
    const/4 v0, -0x2

    .line 158
    const-string v1, "access_control_power_button"

    .line 159
    .line 160
    const/4 v2, 0x1

    .line 161
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-ne p0, v2, :cond_6

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    const/4 v2, 0x0

    .line 169
    :goto_2
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    .line 170
    .line 171
    return-void

    .line 172
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 173
    .line 174
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 175
    .line 176
    check-cast p1, Ljava/lang/Boolean;

    .line 177
    .line 178
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 179
    .line 180
    const/4 v0, -0x2

    .line 181
    const-string v1, "access_control_enabled"

    .line 182
    .line 183
    const/4 v2, 0x0

    .line 184
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    const/4 v0, 0x1

    .line 189
    if-ne p0, v0, :cond_7

    .line 190
    .line 191
    move v2, v0

    .line 192
    :cond_7
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 198
    .line 199
    check-cast p1, Ljava/lang/Boolean;

    .line 200
    .line 201
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 202
    .line 203
    const/4 v0, -0x2

    .line 204
    const-string v1, "anykey_mode"

    .line 205
    .line 206
    const/4 v2, 0x0

    .line 207
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    const/4 v0, 0x1

    .line 212
    if-ne p0, v0, :cond_8

    .line 213
    .line 214
    move v2, v0

    .line 215
    :cond_8
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 219
    .line 220
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 221
    .line 222
    check-cast p1, Ljava/lang/Boolean;

    .line 223
    .line 224
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 225
    .line 226
    const/4 v0, -0x2

    .line 227
    const-string v1, "default_assist_vibration_feedback"

    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    const/4 v0, 0x1

    .line 235
    if-ne p0, v0, :cond_9

    .line 236
    .line 237
    move v2, v0

    .line 238
    :cond_9
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 242
    .line 243
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 244
    .line 245
    check-cast p1, Ljava/lang/Boolean;

    .line 246
    .line 247
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 248
    .line 249
    const/4 v0, -0x2

    .line 250
    const-string v1, "haptic_feedback_enabled"

    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    const/4 v0, 0x1

    .line 258
    if-ne p0, v0, :cond_a

    .line 259
    .line 260
    move v2, v0

    .line 261
    :cond_a
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 265
    .line 266
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 267
    .line 268
    check-cast p1, Ljava/lang/Boolean;

    .line 269
    .line 270
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 271
    .line 272
    const/4 v0, -0x2

    .line 273
    const-string/jumbo v1, "screen_off_memo"

    .line 274
    .line 275
    .line 276
    const/4 v2, 0x0

    .line 277
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    const/4 v0, 0x1

    .line 282
    if-ne p0, v0, :cond_b

    .line 283
    .line 284
    move v2, v0

    .line 285
    :cond_b
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    .line 286
    .line 287
    return-void

    .line 288
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 291
    .line 292
    check-cast p1, Ljava/lang/Boolean;

    .line 293
    .line 294
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 295
    .line 296
    const/4 v0, -0x2

    .line 297
    const-string/jumbo v1, "spen_feedback_sound"

    .line 298
    .line 299
    .line 300
    const/4 v2, 0x0

    .line 301
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 302
    .line 303
    .line 304
    move-result p0

    .line 305
    const/4 v0, 0x1

    .line 306
    if-ne p0, v0, :cond_c

    .line 307
    .line 308
    move v2, v0

    .line 309
    :cond_c
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 310
    .line 311
    return-void

    .line 312
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 313
    .line 314
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 315
    .line 316
    check-cast p1, Ljava/lang/Boolean;

    .line 317
    .line 318
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 319
    .line 320
    const/4 v0, -0x2

    .line 321
    const-string/jumbo v1, "pen_attach_detach_vibration"

    .line 322
    .line 323
    .line 324
    const/4 v2, 0x1

    .line 325
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 326
    .line 327
    .line 328
    move-result p0

    .line 329
    if-ne p0, v2, :cond_d

    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_d
    const/4 v2, 0x0

    .line 333
    :goto_3
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    .line 334
    .line 335
    return-void

    .line 336
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 337
    .line 338
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 339
    .line 340
    check-cast p1, Ljava/lang/Boolean;

    .line 341
    .line 342
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 343
    .line 344
    const-string/jumbo v0, "show_keyboard_button"

    .line 345
    .line 346
    .line 347
    const/4 v1, 0x1

    .line 348
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 349
    .line 350
    .line 351
    move-result p0

    .line 352
    if-ne p0, v1, :cond_e

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_e
    const/4 v1, 0x0

    .line 356
    :goto_4
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mShowKeyboardBtnEnabled:Z

    .line 357
    .line 358
    return-void

    .line 359
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 360
    .line 361
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 362
    .line 363
    check-cast p1, Ljava/lang/Boolean;

    .line 364
    .line 365
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 366
    .line 367
    const/4 v0, -0x2

    .line 368
    const-string/jumbo v1, "skt_phone20_relax_mode"

    .line 369
    .line 370
    .line 371
    const/4 v2, 0x0

    .line 372
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 373
    .line 374
    .line 375
    move-result p0

    .line 376
    const/4 v0, 0x1

    .line 377
    if-ne p0, v0, :cond_f

    .line 378
    .line 379
    move v2, v0

    .line 380
    :cond_f
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    .line 381
    .line 382
    return-void

    .line 383
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 384
    .line 385
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 386
    .line 387
    check-cast p1, Ljava/lang/Boolean;

    .line 388
    .line 389
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 390
    .line 391
    const-string/jumbo v0, "navigation_bar_button_to_hide_keyboard"

    .line 392
    .line 393
    .line 394
    const/4 v1, 0x1

    .line 395
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 396
    .line 397
    .line 398
    move-result p0

    .line 399
    if-ne p0, v1, :cond_10

    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_10
    const/4 v1, 0x0

    .line 403
    :goto_5
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavBarImeBtnEnabled:Z

    .line 404
    .line 405
    return-void

    .line 406
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 407
    .line 408
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 409
    .line 410
    check-cast p1, Ljava/lang/Boolean;

    .line 411
    .line 412
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 413
    .line 414
    const/4 v0, -0x2

    .line 415
    const-string/jumbo v1, "volumekey_mode"

    .line 416
    .line 417
    .line 418
    const/4 v2, 0x0

    .line 419
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 420
    .line 421
    .line 422
    move-result p0

    .line 423
    const/4 v0, 0x1

    .line 424
    if-ne p0, v0, :cond_11

    .line 425
    .line 426
    move v2, v0

    .line 427
    :cond_11
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    .line 428
    .line 429
    return-void

    .line 430
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 431
    .line 432
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 433
    .line 434
    check-cast p1, Ljava/lang/Boolean;

    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    const-string p1, "bold_text"

    .line 440
    .line 441
    const/4 v1, 0x0

    .line 442
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 443
    .line 444
    .line 445
    move-result p0

    .line 446
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 447
    .line 448
    iget v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    .line 449
    .line 450
    if-eq p0, v2, :cond_12

    .line 451
    .line 452
    iput p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    .line 453
    .line 454
    iget-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 455
    .line 456
    const/4 p1, 0x2

    .line 457
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    .line 459
    .line 460
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 461
    .line 462
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 463
    .line 464
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    .line 474
    .line 475
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 476
    .line 477
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 478
    .line 479
    .line 480
    move-result p0

    .line 481
    if-eqz p0, :cond_12

    .line 482
    .line 483
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 484
    .line 485
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 486
    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    .line 497
    .line 498
    :cond_12
    return-void

    .line 499
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 500
    .line 501
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 502
    .line 503
    check-cast p1, Ljava/lang/Boolean;

    .line 504
    .line 505
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    const-string/jumbo p1, "show_button_background"

    .line 509
    .line 510
    .line 511
    const/4 v1, 0x0

    .line 512
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 513
    .line 514
    .line 515
    move-result p0

    .line 516
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 517
    .line 518
    iget v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    .line 519
    .line 520
    if-eq p0, v2, :cond_13

    .line 521
    .line 522
    iput p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    .line 523
    .line 524
    iget-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 525
    .line 526
    const/4 p1, 0x2

    .line 527
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    .line 529
    .line 530
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 531
    .line 532
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 533
    .line 534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 543
    .line 544
    .line 545
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 546
    .line 547
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 548
    .line 549
    .line 550
    move-result p0

    .line 551
    if-eqz p0, :cond_13

    .line 552
    .line 553
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 554
    .line 555
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 556
    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    .line 567
    .line 568
    :cond_13
    return-void

    .line 569
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 570
    .line 571
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 572
    .line 573
    check-cast p1, Ljava/lang/Boolean;

    .line 574
    .line 575
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    const/high16 p1, 0x3f800000    # 1.0f

    .line 579
    .line 580
    const/4 v1, -0x2

    .line 581
    const-string v2, "cursor_thickness"

    .line 582
    .line 583
    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 584
    .line 585
    .line 586
    move-result p0

    .line 587
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 588
    .line 589
    iget v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mCursorThicknessScale:F

    .line 590
    .line 591
    cmpl-float v1, p0, v1

    .line 592
    .line 593
    if-eqz v1, :cond_14

    .line 594
    .line 595
    iput p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mCursorThicknessScale:F

    .line 596
    .line 597
    iget-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 598
    .line 599
    const/4 p1, 0x2

    .line 600
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    .line 602
    .line 603
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 604
    .line 605
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 606
    .line 607
    const/4 v1, 0x0

    .line 608
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 617
    .line 618
    .line 619
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 620
    .line 621
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 622
    .line 623
    .line 624
    move-result p0

    .line 625
    if-eqz p0, :cond_14

    .line 626
    .line 627
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 628
    .line 629
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 630
    .line 631
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 636
    .line 637
    .line 638
    move-result-object p1

    .line 639
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 640
    .line 641
    .line 642
    :cond_14
    return-void

    .line 643
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 644
    .line 645
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 646
    .line 647
    check-cast p1, Ljava/lang/Boolean;

    .line 648
    .line 649
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 650
    .line 651
    const-string/jumbo v0, "premium_watch_switch_onoff"

    .line 652
    .line 653
    .line 654
    const/4 v1, 0x1

    .line 655
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 656
    .line 657
    .line 658
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    return-void

    .line 662
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 663
    .line 664
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 665
    .line 666
    check-cast p1, Ljava/lang/Boolean;

    .line 667
    .line 668
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 669
    .line 670
    const/4 v0, -0x2

    .line 671
    const-string v1, "issuetracker_logged_in"

    .line 672
    .line 673
    const/4 v2, 0x0

    .line 674
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 675
    .line 676
    .line 677
    move-result p0

    .line 678
    const/4 v0, 0x1

    .line 679
    if-ne p0, v0, :cond_15

    .line 680
    .line 681
    move v2, v0

    .line 682
    :cond_15
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    .line 683
    .line 684
    return-void

    .line 685
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 686
    .line 687
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 688
    .line 689
    check-cast p1, Ljava/lang/Boolean;

    .line 690
    .line 691
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 692
    .line 693
    const/4 v0, -0x2

    .line 694
    const-string v1, "development_custom_bugreport_writer"

    .line 695
    .line 696
    const/4 v2, 0x0

    .line 697
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 698
    .line 699
    .line 700
    move-result p0

    .line 701
    const/4 v0, 0x1

    .line 702
    if-ne p0, v0, :cond_16

    .line 703
    .line 704
    move v2, v0

    .line 705
    :cond_16
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCustomBugreportWriterEnabled:Z

    .line 706
    .line 707
    return-void

    .line 708
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 709
    .line 710
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 711
    .line 712
    check-cast p1, Ljava/lang/Boolean;

    .line 713
    .line 714
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 715
    .line 716
    const-string v0, "assistant"

    .line 717
    .line 718
    const/4 v1, -0x2

    .line 719
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object p0

    .line 723
    iput-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    .line 724
    .line 725
    return-void

    .line 726
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 727
    .line 728
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 729
    .line 730
    check-cast p1, Ljava/lang/Boolean;

    .line 731
    .line 732
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    const-string p1, "default_input_method"

    .line 736
    .line 737
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object p0

    .line 741
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 742
    .line 743
    const-string v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 744
    .line 745
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result p0

    .line 749
    iput-boolean p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    .line 750
    .line 751
    return-void

    .line 752
    nop

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
