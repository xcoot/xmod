.class public final Lcom/android/server/wm/DisplayWindowSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettingsProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setIgnoreOrientationRequestOverrideIfNeeded()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setIgnoreOrientationRequest(Z)Z

    .line 32
    .line 33
    .line 34
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 35
    .line 36
    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 38
    .line 39
    return-void
.end method

.method public final applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->setWindowingMode(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v1, v2

    .line 33
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v3, v2

    .line 43
    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v4, v2

    .line 53
    :goto_2
    iget-object v5, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 54
    .line 55
    iput v4, v5, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 56
    .line 57
    iget-boolean v4, v5, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_4
    const-string v4, " for "

    .line 65
    .line 66
    const-string v7, "WindowManager"

    .line 67
    .line 68
    iget-object v8, v5, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    if-eq v1, v6, :cond_5

    .line 73
    .line 74
    new-instance v9, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v10, "Trying to restore an invalid user rotation mode "

    .line 77
    .line 78
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move v1, v2

    .line 98
    :cond_5
    if-ltz v3, :cond_6

    .line 99
    .line 100
    const/4 v9, 0x3

    .line 101
    if-le v3, v9, :cond_7

    .line 102
    .line 103
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v10, "Trying to restore an invalid user rotation "

    .line 106
    .line 107
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move v3, v2

    .line 127
    :cond_7
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation;->getDemoUserRotationOverride()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_8

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_8
    iget-object v7, v8, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 135
    .line 136
    invoke-virtual {v7}, Landroid/view/Display;->getType()I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    const/4 v9, 0x2

    .line 141
    if-eq v8, v9, :cond_b

    .line 142
    .line 143
    invoke-virtual {v7}, Landroid/view/Display;->getType()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    const/4 v9, 0x4

    .line 148
    if-ne v8, v9, :cond_9

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_9
    invoke-virtual {v7}, Landroid/view/Display;->getType()I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    const/4 v9, 0x5

    .line 156
    if-ne v8, v9, :cond_a

    .line 157
    .line 158
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation;->getDemoUserRotationPackage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-nez v9, :cond_a

    .line 167
    .line 168
    invoke-virtual {v7}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_a

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_a
    move v4, v2

    .line 180
    :cond_b
    :goto_3
    if-eqz v4, :cond_c

    .line 181
    .line 182
    move v3, v4

    .line 183
    move v1, v6

    .line 184
    :cond_c
    iput v1, v5, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 185
    .line 186
    iput v3, v5, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 187
    .line 188
    :goto_4
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 189
    .line 190
    if-eqz v1, :cond_d

    .line 191
    .line 192
    move v1, v6

    .line 193
    goto :goto_5

    .line 194
    :cond_d
    move v1, v2

    .line 195
    :goto_5
    iget v3, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 196
    .line 197
    if-eqz v3, :cond_e

    .line 198
    .line 199
    iget v3, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 200
    .line 201
    if-eqz v3, :cond_e

    .line 202
    .line 203
    move v3, v6

    .line 204
    goto :goto_6

    .line 205
    :cond_e
    move v3, v2

    .line 206
    :goto_6
    iput-boolean v1, p1, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 207
    .line 208
    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    .line 209
    .line 210
    iget-object v4, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 211
    .line 212
    if-eqz v4, :cond_f

    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    goto :goto_7

    .line 219
    :cond_f
    move v4, v2

    .line 220
    :goto_7
    iput-boolean v4, p1, Lcom/android/server/wm/DisplayContent;->mIgnoreDisplayCutout:Z

    .line 221
    .line 222
    if-eqz v3, :cond_10

    .line 223
    .line 224
    iget v4, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 225
    .line 226
    :goto_8
    move v8, v4

    .line 227
    goto :goto_9

    .line 228
    :cond_10
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 229
    .line 230
    goto :goto_8

    .line 231
    :goto_9
    if-eqz v3, :cond_11

    .line 232
    .line 233
    iget v3, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 234
    .line 235
    :goto_a
    move v9, v3

    .line 236
    goto :goto_b

    .line 237
    :cond_11
    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 238
    .line 239
    goto :goto_a

    .line 240
    :goto_b
    if-eqz v1, :cond_12

    .line 241
    .line 242
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 243
    .line 244
    :goto_c
    move v10, v1

    .line 245
    goto :goto_d

    .line 246
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInitialDisplayDensity()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    goto :goto_c

    .line 251
    :goto_d
    iget v11, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 252
    .line 253
    iget v12, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 254
    .line 255
    move-object v7, p1

    .line 256
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 260
    .line 261
    if-eqz v1, :cond_13

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    goto :goto_e

    .line 268
    :cond_13
    move v1, v2

    .line 269
    :goto_e
    if-ne v1, v6, :cond_14

    .line 270
    .line 271
    move v1, v6

    .line 272
    goto :goto_f

    .line 273
    :cond_14
    move v1, v2

    .line 274
    :goto_f
    iput-boolean v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 275
    .line 276
    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 277
    .line 278
    if-eqz v0, :cond_15

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    goto :goto_10

    .line 285
    :cond_15
    move v0, v2

    .line 286
    :goto_10
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 287
    .line 288
    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    .line 289
    .line 290
    and-int/lit16 v1, v1, 0x1000

    .line 291
    .line 292
    if-nez v1, :cond_16

    .line 293
    .line 294
    move v1, v6

    .line 295
    goto :goto_11

    .line 296
    :cond_16
    move v1, v2

    .line 297
    :goto_11
    if-eqz v1, :cond_17

    .line 298
    .line 299
    if-eqz v0, :cond_18

    .line 300
    .line 301
    :cond_17
    move v2, v6

    .line 302
    :cond_18
    iput-boolean v2, p1, Lcom/android/server/wm/DisplayContent;->mDontMoveToTop:Z

    .line 303
    .line 304
    if-eqz p2, :cond_19

    .line 305
    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 307
    .line 308
    .line 309
    :cond_19
    return-void
.end method

.method public final getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I
    .locals 3

    .line 1
    iget p1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    if-nez p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move p1, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    move p1, v0

    .line 38
    :cond_3
    :goto_1
    return p1
.end method

.method public final onDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method public final setForcedDensity(Landroid/view/DisplayInfo;II)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/view/DisplayInfo;->displayId:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "display_density_forced"

    .line 23
    .line 24
    invoke-static {v1, v2, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iput p2, p3, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 34
    .line 35
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setForcedSize(Lcom/android/server/wm/DisplayContent;II)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ","

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const-string v0, ""

    .line 32
    .line 33
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "display_size_forced"

    .line 42
    .line 43
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 55
    .line 56
    iput p3, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final setNullableIgnoreOrientationRequest(Lcom/android/server/wm/DisplayContent;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_2
    return v1
.end method
