.class public final Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 14
    .line 15
    const/16 p1, 0x437

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 22
    .line 23
    const/16 p1, 0x3f7

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 30
    .line 31
    const/16 p1, 0xbb

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 38
    .line 39
    const/16 p1, 0x4f

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 46
    .line 47
    const/16 p1, 0x450

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMaxMultiPressCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const/16 p0, 0xa

    .line 12
    .line 13
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public makeBasicIntent(Z)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.intent.action.AI_ASSIST"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "is_long_press"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v1, "is_alt_press"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    new-instance p1, Landroid/content/ComponentName;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-class v1, Lcom/android/internal/app/ResolverActivity;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p1, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    :cond_0
    return-object v0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyDown(Landroid/view/KeyEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 30
    .line 31
    invoke-virtual {v1, p1, v3, p0}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :pswitch_2
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 64
    .line 65
    const/4 v2, 0x3

    .line 66
    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 67
    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v2, 0x2

    .line 73
    if-ne v1, v2, :cond_2

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 76
    .line 77
    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 78
    .line 79
    invoke-virtual {v1, p1, v3, p0}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V

    .line 80
    .line 81
    .line 82
    :cond_2
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 83
    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_3

    .line 95
    .line 96
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void

    .line 106
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 107
    .line 108
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    .line 115
    .line 116
    const-string v2, "PhoneWindowManagerExt"

    .line 117
    .line 118
    if-nez v1, :cond_5

    .line 119
    .line 120
    const-string p0, "Ignoring AI Hot Key - device is not supported"

    .line 121
    .line 122
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto/16 :goto_4

    .line 126
    .line 127
    :cond_5
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    .line 128
    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    const-string p0, "Ignoring AI Hot Key - AI Key is disabled"

    .line 132
    .line 133
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->externalKeyboardPolicy()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    const-string p0, "Ignoring AI Hot Key - externalKeyboardPolicy"

    .line 145
    .line 146
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :cond_7
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 154
    .line 155
    iget-boolean v1, v1, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 156
    .line 157
    if-eqz v1, :cond_8

    .line 158
    .line 159
    goto/16 :goto_4

    .line 160
    .line 161
    :cond_8
    const/4 v1, 0x1

    .line 162
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPreferredActivity()Landroid/content/ComponentName;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    const-string v4, "1"

    .line 173
    .line 174
    const/4 v5, 0x2

    .line 175
    if-eqz p1, :cond_9

    .line 176
    .line 177
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 178
    .line 179
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    const-string v6, "aihotkey"

    .line 182
    .line 183
    invoke-static {p1, v6}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->makeBasicIntent(Z)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string/jumbo v1, "show ResolverActivity with alt, "

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v5, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAIActivity(ILandroid/content/Intent;)V

    .line 209
    .line 210
    .line 211
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 212
    .line 213
    if-eqz p0, :cond_f

    .line 214
    .line 215
    const-string p0, "PKBD0068"

    .line 216
    .line 217
    invoke-static {p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_4

    .line 221
    .line 222
    :cond_9
    const/4 p1, 0x0

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->makeBasicIntent(Z)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getVisibleAiTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string v6, "PKBD0067"

    .line 232
    .line 233
    if-eqz p1, :cond_b

    .line 234
    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string/jumbo v0, "remove taskId "

    .line 238
    .line 239
    .line 240
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 244
    .line 245
    invoke-static {p0, v0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 253
    .line 254
    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .line 256
    .line 257
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 258
    .line 259
    if-eqz p0, :cond_f

    .line 260
    .line 261
    new-instance p0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v0, "2"

    .line 264
    .line 265
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 269
    .line 270
    if-eqz p1, :cond_a

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    goto :goto_0

    .line 277
    :cond_a
    const/4 p1, 0x0

    .line 278
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {v6, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :catch_0
    move-exception p0

    .line 290
    new-instance p1, Ljava/lang/RuntimeException;

    .line 291
    .line 292
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    throw p1

    .line 296
    :cond_b
    if-eqz v3, :cond_d

    .line 297
    .line 298
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    const-class v7, Lcom/android/internal/app/ResolverActivity;

    .line 303
    .line 304
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_c

    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string/jumbo v5, "start ai activity directly, "

    .line 318
    .line 319
    .line 320
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAIActivity(ILandroid/content/Intent;)V

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_d
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string/jumbo v1, "shown ResolverActivity, "

    .line 340
    .line 341
    .line 342
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v5, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAIActivity(ILandroid/content/Intent;)V

    .line 356
    .line 357
    .line 358
    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 359
    .line 360
    if-eqz p0, :cond_f

    .line 361
    .line 362
    if-eqz v3, :cond_e

    .line 363
    .line 364
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p0

    .line 368
    const-class p1, Lcom/android/internal/app/ResolverActivity;

    .line 369
    .line 370
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p0

    .line 378
    if-nez p0, :cond_e

    .line 379
    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    goto :goto_3

    .line 397
    :cond_e
    const-string p0, "0"

    .line 398
    .line 399
    :goto_3
    invoke-static {v6, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    :cond_f
    :goto_4
    return-void

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyUp(Landroid/view/KeyEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x2

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 27
    .line 28
    invoke-virtual {v1, p1, v3, p0}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 58
    .line 59
    const/4 v2, 0x3

    .line 60
    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x2

    .line 67
    if-ne v1, v2, :cond_2

    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 70
    .line 71
    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 72
    .line 73
    invoke-virtual {v1, p1, v3, p0}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V

    .line 74
    .line 75
    .line 76
    :cond_2
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 77
    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(JLandroid/view/KeyEvent;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(JLandroid/view/KeyEvent;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 12
    .line 13
    sget-boolean p2, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 14
    .line 15
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iget-object p2, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 23
    .line 24
    invoke-virtual {p2, v0, p0}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 42
    .line 43
    invoke-virtual {p0, p3, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverLongActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 48
    .line 49
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(Landroid/view/KeyEvent;)Z

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_2
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 55
    .line 56
    sget-boolean p2, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 57
    .line 58
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    iget-object p2, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 63
    .line 64
    const/4 v0, 0x4

    .line 65
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 66
    .line 67
    invoke-virtual {p2, v0, p0}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 85
    .line 86
    invoke-virtual {p0, p3, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverLongActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 91
    .line 92
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(Landroid/view/KeyEvent;)Z

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void

    .line 96
    :pswitch_3
    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 102
    .line 103
    invoke-virtual {p1, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(Landroid/view/KeyEvent;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnRecent()V

    .line 114
    .line 115
    .line 116
    :goto_2
    return-void

    .line 117
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 118
    .line 119
    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_5
    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 127
    .line 128
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 129
    .line 130
    iget p4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 131
    .line 132
    const/4 v0, 0x4

    .line 133
    invoke-virtual {p2, p4, v0}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    const-string p4, "PhoneWindowManagerExt"

    .line 138
    .line 139
    if-eqz p2, :cond_5

    .line 140
    .line 141
    const-string/jumbo p0, "skip long press home, requestedSystemKey"

    .line 142
    .line 143
    .line 144
    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_5
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 149
    .line 150
    invoke-virtual {p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(Landroid/view/KeyEvent;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_6

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_6
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-nez p2, :cond_7

    .line 164
    .line 165
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 166
    .line 167
    new-instance p2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;

    .line 168
    .line 169
    const/4 p4, 0x1

    .line 170
    invoke-direct {p2, p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string p2, "keyguardOn, isShowing="

    .line 180
    .line 181
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p2, " isInputRestricted="

    .line 194
    .line 195
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 199
    .line 200
    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 201
    .line 202
    if-nez p2, :cond_8

    .line 203
    .line 204
    const/4 p2, 0x0

    .line 205
    goto :goto_3

    .line 206
    :cond_8
    iget-object p3, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 207
    .line 208
    if-eqz p3, :cond_9

    .line 209
    .line 210
    iget-object v0, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 211
    .line 212
    iget-object p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 213
    .line 214
    iget-boolean p3, p3, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 215
    .line 216
    iput-boolean p3, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 217
    .line 218
    :cond_9
    iget-object p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 219
    .line 220
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 221
    .line 222
    :goto_3
    invoke-static {p4, p0, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 223
    .line 224
    .line 225
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 226
    .line 227
    if-eqz p0, :cond_a

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->showingSearcleToastIfNeeded()V

    .line 230
    .line 231
    .line 232
    :cond_a
    :goto_4
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiPress(JIILandroid/view/KeyEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onMultiPress(JIILandroid/view/KeyEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 17
    .line 18
    const/4 p2, 0x2

    .line 19
    if-ne p3, p2, :cond_5

    .line 20
    .line 21
    iget-object p4, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    invoke-virtual {p4, p0, v0}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    const-string p0, "PhoneWindowManagerExt"

    .line 34
    .line 35
    const-string/jumbo p1, "skip double press home, requestedSystemKey"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object p4, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 43
    .line 44
    invoke-virtual {p4, v0, p0}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    const/4 v1, 0x4

    .line 49
    if-ne p4, v1, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-boolean p4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 53
    .line 54
    const-string v1, "NAVIB1002"

    .line 55
    .line 56
    if-eqz p4, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isQuickLaunchCameraEnabled(I)Z

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    if-eqz p4, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchPowerDoublePressCamera()V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastDoubleClick(I)V

    .line 74
    .line 75
    .line 76
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 77
    .line 78
    if-eqz p0, :cond_6

    .line 79
    .line 80
    const-string p0, "Quick launch camera"

    .line 81
    .line 82
    invoke-static {v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 87
    .line 88
    const/4 p4, 0x3

    .line 89
    invoke-virtual {p0, v0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    const/16 p4, 0x452

    .line 94
    .line 95
    if-ne p0, p4, :cond_5

    .line 96
    .line 97
    iget-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    .line 106
    .line 107
    .line 108
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 109
    .line 110
    if-eqz p0, :cond_6

    .line 111
    .line 112
    iget-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    .line 119
    .line 120
    iget-boolean p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 121
    .line 122
    if-eqz p0, :cond_4

    .line 123
    .line 124
    const-string p0, "Disable one handed operation"

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const-string p0, "Enable one handed operation"

    .line 128
    .line 129
    :goto_0
    invoke-static {v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    iget-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 134
    .line 135
    invoke-virtual {p0, p5, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchMultiPressAction(Landroid/view/KeyEvent;I)V

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_1
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPress(JLandroid/view/KeyEvent;I)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 7
    .line 8
    const/4 p2, 0x3

    .line 9
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 16
    .line 17
    invoke-virtual {p1, p2, p0}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p3, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverPressActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    const/4 p4, -0x1

    .line 55
    if-ne p2, p4, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 p4, 0x0

    .line 59
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(ILandroid/view/KeyEvent;IZ)Z

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void

    .line 63
    :pswitch_0
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 64
    .line 65
    const/4 p2, 0x3

    .line 66
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-object p1, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 71
    .line 72
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 73
    .line 74
    invoke-virtual {p1, p2, p0}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p3, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverPressActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    const/4 p4, -0x1

    .line 112
    if-ne p2, p4, :cond_5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    const/4 p4, 0x0

    .line 116
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(ILandroid/view/KeyEvent;IZ)Z

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void

    .line 120
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 129
    .line 130
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    const/4 v0, 0x3

    .line 140
    invoke-virtual {p2, v0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    const/4 v1, -0x1

    .line 145
    const/4 v2, 0x0

    .line 146
    if-ne v0, v1, :cond_6

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    invoke-virtual {p2, v0, p3, p4, v2}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(ILandroid/view/KeyEvent;IZ)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    :goto_2
    if-eqz v2, :cond_7

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    const/high16 p3, 0x10000000

    .line 161
    .line 162
    and-int/2addr p2, p3

    .line 163
    if-eqz p2, :cond_8

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 167
    .line 168
    invoke-virtual {p1, p0, p3, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 169
    .line 170
    .line 171
    :goto_3
    return-void

    .line 172
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 173
    .line 174
    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    const-string p2, "PhoneWindowManagerExt"

    .line 183
    .line 184
    if-eqz p1, :cond_9

    .line 185
    .line 186
    const-string p0, "Ignoring HOME; event canceled."

    .line 187
    .line 188
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_9
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 193
    .line 194
    iget-object p4, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 195
    .line 196
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 197
    .line 198
    const/4 v0, 0x3

    .line 199
    invoke-virtual {p4, p0, v0}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-eqz p0, :cond_a

    .line 204
    .line 205
    const-string/jumbo p0, "skip single press home, requestedSystemKey"

    .line 206
    .line 207
    .line 208
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_a
    iget-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 213
    .line 214
    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->postShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 215
    .line 216
    .line 217
    :goto_4
    return-void

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportLongPress()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_1
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :pswitch_2
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :pswitch_3
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :pswitch_4
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :pswitch_5
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
