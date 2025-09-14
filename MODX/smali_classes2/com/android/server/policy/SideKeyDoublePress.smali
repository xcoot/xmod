.class public abstract Lcom/android/server/policy/SideKeyDoublePress;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;


# direct methods
.method public static getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;
    .locals 11

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    const/4 v7, 0x0

    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    return-object v7

    .line 15
    :cond_0
    sget-object v6, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 16
    .line 17
    const-string v8, "SideKeyDoublePress"

    .line 18
    .line 19
    if-eqz v6, :cond_2

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    if-eqz v9, :cond_1

    .line 29
    .line 30
    const-string v6, "appName is empty."

    .line 31
    .line 32
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move v6, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v6, v6, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    :goto_0
    if-eqz v6, :cond_2

    .line 44
    .line 45
    sget-object p0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/4 v6, -0x1

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    sparse-switch v9, :sswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :sswitch_0
    const-string/jumbo v9, "secureFolder/secureFolder"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-nez v9, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v6, v0

    .line 71
    goto :goto_1

    .line 72
    :sswitch_1
    const-string/jumbo v9, "torch/torch"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-nez v9, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move v6, v1

    .line 83
    goto :goto_1

    .line 84
    :sswitch_2
    const-string/jumbo v9, "wakeBixby_openApps/wakeBixby_openApps"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-nez v9, :cond_5

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    move v6, v2

    .line 95
    goto :goto_1

    .line 96
    :sswitch_3
    const-string v9, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 97
    .line 98
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-nez v9, :cond_6

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    move v6, v3

    .line 106
    goto :goto_1

    .line 107
    :sswitch_4
    const-string/jumbo v9, "samsungpay://simplepay/sidekey"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-nez v9, :cond_7

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    move v6, v4

    .line 118
    goto :goto_1

    .line 119
    :sswitch_5
    const-string v9, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    .line 120
    .line 121
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-nez v9, :cond_8

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_8
    move v6, v5

    .line 129
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;

    .line 133
    .line 134
    invoke-direct {v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iput v4, v0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAction:I

    .line 138
    .line 139
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 140
    .line 141
    return-object v0

    .line 142
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS_SECURE_FOLDER:Z

    .line 143
    .line 144
    if-eqz v0, :cond_b

    .line 145
    .line 146
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v2, "com.samsung.android.aliveprivacy"

    .line 151
    .line 152
    const-wide/16 v9, 0x40

    .line 153
    .line 154
    invoke-interface {v0, v2, v9, v10, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v2, "isPackageInstalledAsUser exception -"

    .line 163
    .line 164
    invoke-static {v0, v2, v8}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_9
    move v4, v5

    .line 168
    :goto_2
    if-nez v4, :cond_a

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_a
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 172
    .line 173
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 177
    .line 178
    return-object v0

    .line 179
    :cond_b
    :goto_3
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 180
    .line 181
    return-object v7

    .line 182
    :pswitch_1
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TORCH:Z

    .line 183
    .line 184
    if-eqz v1, :cond_c

    .line 185
    .line 186
    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 187
    .line 188
    invoke-direct {v7, p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 189
    .line 190
    .line 191
    :cond_c
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 192
    .line 193
    return-object v7

    .line 194
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    .line 195
    .line 196
    if-eqz v0, :cond_d

    .line 197
    .line 198
    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 199
    .line 200
    invoke-direct {v7, p0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    :cond_d
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 204
    .line 205
    return-object v7

    .line 206
    :pswitch_3
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 207
    .line 208
    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 212
    .line 213
    return-object v0

    .line 214
    :pswitch_4
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 215
    .line 216
    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 220
    .line 221
    return-object v0

    .line 222
    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 223
    .line 224
    if-eqz v0, :cond_e

    .line 225
    .line 226
    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 227
    .line 228
    invoke-direct {v7, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    :cond_e
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 232
    .line 233
    return-object v7

    .line 234
    nop

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x49b8cf78 -> :sswitch_5
        -0x2ed4269d -> :sswitch_4
        0x5a5f84 -> :sswitch_3
        0x5a741d0f -> :sswitch_2
        0x6a598029 -> :sswitch_1
        0x760519cf -> :sswitch_0
    .end sparse-switch

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_7

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/content/Intent;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-static {v1}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    instance-of v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    iget p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->setAction(I)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iput-object p0, v1, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 73
    .line 74
    invoke-virtual {v1, v0, p2}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->preCondition(Landroid/content/Intent;Z)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_5

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->updateTargetComponent(Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string/jumbo p1, "show_on_keyguard"

    .line 95
    .line 96
    .line 97
    const/4 p2, 0x0

    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_6

    .line 103
    .line 104
    new-instance p0, Landroid/content/Intent;

    .line 105
    .line 106
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string p1, "ignoreKeyguardState"

    .line 110
    .line 111
    const/4 p2, 0x1

    .line 112
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    const-string p1, "ignoreUnlock"

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    :goto_1
    invoke-virtual {v1, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->showCoverToast(Landroid/content/Intent;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "launch, showCoverToast="

    .line 132
    .line 133
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, " "

    .line 140
    .line 141
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    const-string v2, "SideKeyDoublePress"

    .line 152
    .line 153
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1, v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->startTargetApp(ZLandroid/content/Intent;Landroid/content/Intent;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_2
    return-void
.end method
