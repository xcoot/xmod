.class public final Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;
.super Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final preCondition(Landroid/content/Intent;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 18
    .line 19
    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 20
    .line 21
    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 22
    .line 23
    iget v4, v0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAction:I

    .line 24
    .line 25
    const-string v5, "can not get applicatino info"

    .line 26
    .line 27
    const-wide v6, 0x100000200L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-string v8, "PhoneWindowManagerExt"

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x3

    .line 36
    const/4 v11, 0x2

    .line 37
    const/4 v12, 0x0

    .line 38
    const/4 v13, 0x1

    .line 39
    if-ne v4, v13, :cond_5

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    const-string v2, "getApplicationState: intent or component is null"

    .line 48
    .line 49
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    move v12, v11

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v14, "getApplicationState: package: "

    .line 64
    .line 65
    const-string v15, " / "

    .line 66
    .line 67
    invoke-static {v14, v4, v15}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 72
    .line 73
    iget v15, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 74
    .line 75
    invoke-static {v14, v15, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v14, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 79
    .line 80
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    invoke-interface {v15, v4, v6, v7, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-object v14, v9

    .line 93
    :goto_1
    if-nez v14, :cond_1

    .line 94
    .line 95
    const-string v2, "getApplicationState: appInfo is null"

    .line 96
    .line 97
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-boolean v14, v14, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    .line 102
    .line 103
    if-eqz v14, :cond_2

    .line 104
    .line 105
    move v12, v10

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    iget v14, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 108
    .line 109
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 110
    .line 111
    .line 112
    move-result-object v15

    .line 113
    invoke-interface {v15, v4, v14}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 117
    if-eq v4, v11, :cond_4

    .line 118
    .line 119
    if-eq v4, v10, :cond_4

    .line 120
    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget v14, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 126
    .line 127
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    const-wide/16 v6, 0x200

    .line 132
    .line 133
    invoke-interface {v15, v4, v6, v7, v14}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    goto :goto_2

    .line 138
    :catch_1
    move-object v4, v9

    .line 139
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v7, "getApplicationState: component:"

    .line 142
    .line 143
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    if-nez v4, :cond_3

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 168
    .line 169
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-interface {v6, v4, v2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    .line 174
    .line 175
    .line 176
    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 177
    if-eq v2, v11, :cond_4

    .line 178
    .line 179
    if-eq v2, v10, :cond_4

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :catch_2
    :cond_4
    move v12, v13

    .line 183
    :cond_5
    :goto_3
    const-string/jumbo v2, "target app state : "

    .line 184
    .line 185
    .line 186
    invoke-static {v12, v2, v8}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    if-ne v12, v11, :cond_6

    .line 190
    .line 191
    iget-object v0, v0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 192
    .line 193
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    const v2, 0x1040e70

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return v13

    .line 206
    :cond_6
    if-ne v12, v13, :cond_8

    .line 207
    .line 208
    iget-object v0, v0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 209
    .line 210
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    const-wide v6, 0x100000200L

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    invoke-interface {v4, v1, v6, v7, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 222
    .line 223
    .line 224
    move-result-object v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 225
    goto :goto_4

    .line 226
    :catch_3
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-object v1, v9

    .line 230
    :goto_4
    if-nez v1, :cond_7

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_7
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    const v4, 0x1040e71

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    :goto_5
    invoke-virtual {v0, v2, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return v13

    .line 268
    :cond_8
    if-ne v12, v10, :cond_9

    .line 269
    .line 270
    iget-object v0, v0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 271
    .line 272
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    const v2, 0x1040e6f

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return v13

    .line 285
    :cond_9
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->preCondition(Landroid/content/Intent;Z)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    return v0
.end method

.method public final setAction(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAction:I

    .line 8
    .line 9
    :cond_1
    return-void
.end method

.method public final startTargetApp(ZLandroid/content/Intent;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAction:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_2

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 26
    .line 27
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 32
    .line 33
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 34
    .line 35
    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    const/high16 v3, 0xc000000

    .line 40
    .line 41
    move-object v2, p2

    .line 42
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 p1, 0x3

    .line 51
    if-ne v1, p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 58
    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 67
    .line 68
    const-string p2, "/"

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    array-length p3, p2

    .line 77
    const/4 v0, 0x2

    .line 78
    if-lt p3, v0, :cond_4

    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    aget-object p0, p2, p0

    .line 82
    .line 83
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const-string p1, "HWB1002"

    .line 87
    .line 88
    invoke-static {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-void
.end method
