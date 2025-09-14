.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string/jumbo v0, "pen_detachment_notification"

    .line 17
    .line 18
    .line 19
    const/4 v1, -0x2

    .line 20
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->updatePenSound(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "double_tab_launch"

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo v0, "updateSettings, mQuickLaunchCameraBehavior="

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    .line 79
    .line 80
    const-string v2, "PhoneWindowManagerExt"

    .line 81
    .line 82
    invoke-static {p1, v0, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    const/16 v2, 0x1a

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    if-eq p1, v3, :cond_3

    .line 92
    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move v4, v2

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    move v4, v0

    .line 99
    :goto_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 100
    .line 101
    iget-object v6, v5, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 102
    .line 103
    const/16 v7, 0x7d1

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    const/16 v9, 0x8

    .line 107
    .line 108
    invoke-virtual {v6, v7, v9, v4, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-eq p1, v0, :cond_6

    .line 113
    .line 114
    if-ne p1, v3, :cond_4

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    if-eq p1, v1, :cond_5

    .line 118
    .line 119
    if-nez p1, :cond_7

    .line 120
    .line 121
    :cond_5
    if-eqz v6, :cond_7

    .line 122
    .line 123
    invoke-virtual {v5, v7, v9, v4, v8}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(IIILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_6
    :goto_3
    if-nez v6, :cond_7

    .line 128
    .line 129
    new-instance p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 130
    .line 131
    invoke-direct {p1, v9, v7, v4, v3}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIII)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    :goto_4
    if-ne v4, v2, :cond_8

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 140
    .line 141
    .line 142
    :cond_8
    return-void

    .line 143
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string v0, "double_tab_launch_component"

    .line 150
    .line 151
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string/jumbo v1, "updateSettings doublePressLaunchComponent="

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-string v1, "PhoneWindowManagerExt"

    .line 171
    .line 172
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressLaunchInfo(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 179
    .line 180
    if-eqz p1, :cond_a

    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 183
    .line 184
    if-nez p1, :cond_9

    .line 185
    .line 186
    const/4 p1, 0x0

    .line 187
    goto :goto_5

    .line 188
    :cond_9
    const-string v0, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    :goto_5
    if-eqz p1, :cond_a

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateKeyCustomizationInfoTvMode()V

    .line 201
    .line 202
    .line 203
    :cond_a
    return-void

    .line 204
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const-string/jumbo v0, "pwrkey_owner_status"

    .line 211
    .line 212
    .line 213
    const/4 v1, 0x0

    .line 214
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    const/4 v0, 0x1

    .line 219
    if-ne p1, v0, :cond_b

    .line 220
    .line 221
    move v1, v0

    .line 222
    :cond_b
    const-string/jumbo p1, "updateSettings tvModeDoublePressEnabled="

    .line 223
    .line 224
    .line 225
    const-string v0, ", "

    .line 226
    .line 227
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 232
    .line 233
    const-string v2, "PhoneWindowManagerExt"

    .line 234
    .line 235
    invoke-static {v2, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 236
    .line 237
    .line 238
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 239
    .line 240
    if-ne v1, p1, :cond_c

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateKeyCustomizationInfoTvMode()V

    .line 246
    .line 247
    .line 248
    :goto_6
    return-void

    .line 249
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const-string/jumbo v0, "tvmode_state"

    .line 256
    .line 257
    .line 258
    const/4 v1, 0x0

    .line 259
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    const/4 v0, 0x1

    .line 264
    if-ne p1, v0, :cond_d

    .line 265
    .line 266
    move v1, v0

    .line 267
    :cond_d
    const-string/jumbo p1, "updateSettings tvModeEnabled="

    .line 268
    .line 269
    .line 270
    const-string v0, ", "

    .line 271
    .line 272
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 277
    .line 278
    const-string v2, "PhoneWindowManagerExt"

    .line 279
    .line 280
    invoke-static {v2, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 281
    .line 282
    .line 283
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 284
    .line 285
    if-ne v1, p1, :cond_e

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_e
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateKeyCustomizationInfoTvMode()V

    .line 291
    .line 292
    .line 293
    :goto_7
    return-void

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
