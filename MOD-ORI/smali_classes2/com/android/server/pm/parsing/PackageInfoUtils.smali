.class public abstract Lcom/android/server/pm/parsing/PackageInfoUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SYSTEM_DATA_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 14
    .line 15
    const-string/jumbo v2, "system"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public static appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x40000

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHardwareAccelerated()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const/high16 v2, 0x20000000

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v2, v1

    .line 22
    :goto_1
    or-int/2addr v0, v2

    .line 23
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupAllowed()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    const v2, 0x8000

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v2, v1

    .line 34
    :goto_2
    or-int/2addr v0, v2

    .line 35
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isKillAfterRestoreAllowed()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    const/high16 v2, 0x10000

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move v2, v1

    .line 45
    :goto_3
    or-int/2addr v0, v2

    .line 46
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRestoreAnyVersion()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    const/high16 v2, 0x20000

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move v2, v1

    .line 56
    :goto_4
    or-int/2addr v0, v2

    .line 57
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFullBackupOnly()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    const/high16 v2, 0x4000000

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_5
    move v2, v1

    .line 67
    :goto_5
    or-int/2addr v0, v2

    .line 68
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    const/16 v2, 0x8

    .line 75
    .line 76
    goto :goto_6

    .line 77
    :cond_6
    move v2, v1

    .line 78
    :goto_6
    or-int/2addr v0, v2

    .line 79
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_7

    .line 84
    .line 85
    const/4 v2, 0x2

    .line 86
    goto :goto_7

    .line 87
    :cond_7
    move v2, v1

    .line 88
    :goto_7
    or-int/2addr v0, v2

    .line 89
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_8

    .line 94
    .line 95
    const/16 v2, 0x4000

    .line 96
    .line 97
    goto :goto_8

    .line 98
    :cond_8
    move v2, v1

    .line 99
    :goto_8
    or-int/2addr v0, v2

    .line 100
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_9

    .line 105
    .line 106
    const/4 v2, 0x4

    .line 107
    goto :goto_9

    .line 108
    :cond_9
    move v2, v1

    .line 109
    :goto_9
    or-int/2addr v0, v2

    .line 110
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTaskReparentingAllowed()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_a

    .line 115
    .line 116
    const/16 v2, 0x20

    .line 117
    .line 118
    goto :goto_a

    .line 119
    :cond_a
    move v2, v1

    .line 120
    :goto_a
    or-int/2addr v0, v2

    .line 121
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataAllowed()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_b

    .line 126
    .line 127
    const/16 v2, 0x40

    .line 128
    .line 129
    goto :goto_b

    .line 130
    :cond_b
    move v2, v1

    .line 131
    :goto_b
    or-int/2addr v0, v2

    .line 132
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeHeap()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_c

    .line 137
    .line 138
    const/high16 v2, 0x100000

    .line 139
    .line 140
    goto :goto_c

    .line 141
    :cond_c
    move v2, v1

    .line 142
    :goto_c
    or-int/2addr v0, v2

    .line 143
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCleartextTrafficAllowed()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_d

    .line 148
    .line 149
    const/high16 v2, 0x8000000

    .line 150
    .line 151
    goto :goto_d

    .line 152
    :cond_d
    move v2, v1

    .line 153
    :goto_d
    or-int/2addr v0, v2

    .line 154
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRtlSupported()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_e

    .line 159
    .line 160
    const/high16 v2, 0x400000

    .line 161
    .line 162
    goto :goto_e

    .line 163
    :cond_e
    move v2, v1

    .line 164
    :goto_e
    or-int/2addr v0, v2

    .line 165
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTestOnly()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_f

    .line 170
    .line 171
    const/16 v2, 0x100

    .line 172
    .line 173
    goto :goto_f

    .line 174
    :cond_f
    move v2, v1

    .line 175
    :goto_f
    or-int/2addr v0, v2

    .line 176
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_10

    .line 181
    .line 182
    const/high16 v2, -0x80000000

    .line 183
    .line 184
    goto :goto_10

    .line 185
    :cond_10
    move v2, v1

    .line 186
    :goto_10
    or-int/2addr v0, v2

    .line 187
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_11

    .line 192
    .line 193
    const/high16 v2, 0x10000000

    .line 194
    .line 195
    goto :goto_11

    .line 196
    :cond_11
    move v2, v1

    .line 197
    :goto_11
    or-int/2addr v0, v2

    .line 198
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isGame()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_12

    .line 203
    .line 204
    const/high16 v2, 0x2000000

    .line 205
    .line 206
    goto :goto_12

    .line 207
    :cond_12
    move v2, v1

    .line 208
    :goto_12
    or-int/2addr v0, v2

    .line 209
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_13

    .line 214
    .line 215
    const/16 v2, 0x200

    .line 216
    .line 217
    goto :goto_13

    .line 218
    :cond_13
    move v2, v1

    .line 219
    :goto_13
    or-int/2addr v0, v2

    .line 220
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_14

    .line 225
    .line 226
    const/16 v2, 0x400

    .line 227
    .line 228
    goto :goto_14

    .line 229
    :cond_14
    move v2, v1

    .line 230
    :goto_14
    or-int/2addr v0, v2

    .line 231
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_15

    .line 236
    .line 237
    const/16 v2, 0x800

    .line 238
    .line 239
    goto :goto_15

    .line 240
    :cond_15
    move v2, v1

    .line 241
    :goto_15
    or-int/2addr v0, v2

    .line 242
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_16

    .line 247
    .line 248
    const/high16 v2, 0x80000

    .line 249
    .line 250
    goto :goto_16

    .line 251
    :cond_16
    move v2, v1

    .line 252
    :goto_16
    or-int/2addr v0, v2

    .line 253
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_17

    .line 258
    .line 259
    const/16 v2, 0x1000

    .line 260
    .line 261
    goto :goto_17

    .line 262
    :cond_17
    move v2, v1

    .line 263
    :goto_17
    or-int/2addr v0, v2

    .line 264
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_18

    .line 269
    .line 270
    const/16 v2, 0x2000

    .line 271
    .line 272
    goto :goto_18

    .line 273
    :cond_18
    move v2, v1

    .line 274
    :goto_18
    or-int/2addr v0, v2

    .line 275
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    or-int/2addr v0, v2

    .line 280
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFactoryTest()Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    if-eqz p0, :cond_19

    .line 285
    .line 286
    const/16 p0, 0x10

    .line 287
    .line 288
    goto :goto_19

    .line 289
    :cond_19
    move p0, v1

    .line 290
    :goto_19
    or-int/2addr p0, v0

    .line 291
    if-eqz p1, :cond_1b

    .line 292
    .line 293
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-eqz p1, :cond_1a

    .line 298
    .line 299
    const/16 v1, 0x80

    .line 300
    .line 301
    :cond_1a
    or-int/2addr p0, v1

    .line 302
    :cond_1b
    return p0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x4000

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResourceOverlay()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const/high16 v2, 0x10000000

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v2, v1

    .line 22
    :goto_1
    or-int/2addr v0, v2

    .line 23
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    const v2, 0x8000

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v2, v1

    .line 34
    :goto_2
    or-int/2addr v0, v2

    .line 35
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHasDomainUrls()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    const/16 v2, 0x10

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move v2, v1

    .line 45
    :goto_3
    or-int/2addr v0, v2

    .line 46
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileableByShell()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    const/high16 v2, 0x800000

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move v2, v1

    .line 56
    :goto_4
    or-int/2addr v0, v2

    .line 57
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupInForeground()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    const/16 v2, 0x2000

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_5
    move v2, v1

    .line 67
    :goto_5
    or-int/2addr v0, v2

    .line 68
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    const/high16 v2, 0x2000000

    .line 75
    .line 76
    goto :goto_6

    .line 77
    :cond_6
    move v2, v1

    .line 78
    :goto_6
    or-int/2addr v0, v2

    .line 79
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_7

    .line 84
    .line 85
    const/16 v2, 0x20

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_7
    move v2, v1

    .line 89
    :goto_7
    or-int/2addr v0, v2

    .line 90
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_8

    .line 95
    .line 96
    const/16 v2, 0x40

    .line 97
    .line 98
    goto :goto_8

    .line 99
    :cond_8
    move v2, v1

    .line 100
    :goto_8
    or-int/2addr v0, v2

    .line 101
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPartiallyDirectBootAware()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_9

    .line 106
    .line 107
    const/16 v2, 0x100

    .line 108
    .line 109
    goto :goto_9

    .line 110
    :cond_9
    move v2, v1

    .line 111
    :goto_9
    or-int/2addr v0, v2

    .line 112
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataOnFailedRestoreAllowed()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_a

    .line 117
    .line 118
    const/high16 v2, 0x4000000

    .line 119
    .line 120
    goto :goto_a

    .line 121
    :cond_a
    move v2, v1

    .line 122
    :goto_a
    or-int/2addr v0, v2

    .line 123
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowAudioPlaybackCapture()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_b

    .line 128
    .line 129
    const/high16 v2, 0x8000000

    .line 130
    .line 131
    goto :goto_b

    .line 132
    :cond_b
    move v2, v1

    .line 133
    :goto_b
    or-int/2addr v0, v2

    .line 134
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_c

    .line 139
    .line 140
    const/high16 v2, 0x20000000

    .line 141
    .line 142
    goto :goto_c

    .line 143
    :cond_c
    move v2, v1

    .line 144
    :goto_c
    or-int/2addr v0, v2

    .line 145
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_d

    .line 150
    .line 151
    const/high16 v2, 0x400000

    .line 152
    .line 153
    goto :goto_d

    .line 154
    :cond_d
    move v2, v1

    .line 155
    :goto_d
    or-int/2addr v0, v2

    .line 156
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUserDataFragile()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_e

    .line 161
    .line 162
    const/high16 v2, 0x1000000

    .line 163
    .line 164
    goto :goto_e

    .line 165
    :cond_e
    move v2, v1

    .line 166
    :goto_e
    or-int/2addr v0, v2

    .line 167
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSaveStateDisallowed()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_f

    .line 172
    .line 173
    const/4 v2, 0x2

    .line 174
    goto :goto_f

    .line 175
    :cond_f
    move v2, v1

    .line 176
    :goto_f
    or-int/2addr v0, v2

    .line 177
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeableActivityViaSdkVersion()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_10

    .line 182
    .line 183
    const/16 v2, 0x1000

    .line 184
    .line 185
    goto :goto_10

    .line 186
    :cond_10
    move v2, v1

    .line 187
    :goto_10
    or-int/2addr v0, v2

    .line 188
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowNativeHeapPointerTagging()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_11

    .line 193
    .line 194
    const/high16 v2, -0x80000000

    .line 195
    .line 196
    goto :goto_11

    .line 197
    :cond_11
    move v2, v1

    .line 198
    :goto_11
    or-int/2addr v0, v2

    .line 199
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystemExt(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_12

    .line 204
    .line 205
    const/high16 v2, 0x200000

    .line 206
    .line 207
    goto :goto_12

    .line 208
    :cond_12
    move v2, v1

    .line 209
    :goto_12
    or-int/2addr v0, v2

    .line 210
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_13

    .line 215
    .line 216
    const/16 v2, 0x8

    .line 217
    .line 218
    goto :goto_13

    .line 219
    :cond_13
    move v2, v1

    .line 220
    :goto_13
    or-int/2addr v0, v2

    .line 221
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_14

    .line 226
    .line 227
    const/high16 v2, 0x20000

    .line 228
    .line 229
    goto :goto_14

    .line 230
    :cond_14
    move v2, v1

    .line 231
    :goto_14
    or-int/2addr v0, v2

    .line 232
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isVendor(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_15

    .line 237
    .line 238
    const/high16 v2, 0x40000

    .line 239
    .line 240
    goto :goto_15

    .line 241
    :cond_15
    move v2, v1

    .line 242
    :goto_15
    or-int/2addr v0, v2

    .line 243
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isProduct(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_16

    .line 248
    .line 249
    const/high16 v2, 0x80000

    .line 250
    .line 251
    goto :goto_16

    .line 252
    :cond_16
    move v2, v1

    .line 253
    :goto_16
    or-int/2addr v0, v2

    .line 254
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOdm(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_17

    .line 259
    .line 260
    const/high16 v2, 0x40000000    # 2.0f

    .line 261
    .line 262
    goto :goto_17

    .line 263
    :cond_17
    move v2, v1

    .line 264
    :goto_17
    or-int/2addr v0, v2

    .line 265
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_18

    .line 270
    .line 271
    const/high16 v1, 0x100000

    .line 272
    .line 273
    :cond_18
    or-int/2addr v0, v1

    .line 274
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getResizeableActivity()Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    if-eqz p0, :cond_1a

    .line 279
    .line 280
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    if-eqz p0, :cond_19

    .line 285
    .line 286
    or-int/lit16 v0, v0, 0x400

    .line 287
    .line 288
    goto :goto_18

    .line 289
    :cond_19
    or-int/lit16 v0, v0, 0x800

    .line 290
    .line 291
    :cond_1a
    :goto_18
    return v0
.end method

.method public static assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p2, Ljava/lang/CharSequence;

    .line 41
    .line 42
    iput-object p2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 43
    .line 44
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Landroid/content/pm/ComponentInfo;->icon:I

    .line 53
    .line 54
    return-void
.end method

.method public static assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/internal/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getBanner()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLabelRes()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLogo()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public static checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v0, p3, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v0, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-static {p2, p0, p1}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_2

    const-wide p2, 0x120402000L

    and-long/2addr p0, p2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z
    .locals 4

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide p0, 0x120402000L

    and-long/2addr p0, p2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez p5, :cond_2

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    move-object v6, p7

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :cond_2
    if-nez p5, :cond_3

    return-object v0

    .line 4
    :cond_3
    new-instance p0, Landroid/content/pm/ActivityInfo;

    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 5
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result p4

    iput-boolean p4, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 8
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 9
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 10
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 11
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 12
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 13
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 14
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 15
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 16
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 17
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 18
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 19
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 20
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 21
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 22
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 23
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 24
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result p4

    invoke-virtual {p0, p4}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 25
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result p4

    invoke-virtual {p0, p4}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 26
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result p4

    iput-boolean p4, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 27
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 28
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 29
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 30
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p4

    iput-object p4, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 31
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getAttributionTags()[Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const-wide/16 v1, 0x80

    and-long/2addr p2, v1

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-eqz p2, :cond_5

    .line 32
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 33
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 34
    :cond_5
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 35
    :goto_1
    iput-object p5, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequireContentUriPermissionFromCaller()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 38
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 39
    invoke-static {p0, p1, p7, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p5, p3, p1, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_17

    .line 10
    .line 11
    const-wide/32 v1, 0x100000

    .line 12
    .line 13
    .line 14
    and-long/2addr v1, p1

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :goto_0
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto/16 :goto_c

    .line 31
    .line 32
    :cond_2
    move-object v1, p0

    .line 33
    check-cast v1, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    .line 40
    .line 41
    .line 42
    move-object p1, p0

    .line 43
    check-cast p1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 44
    .line 45
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iput v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 62
    .line 63
    const-string v3, "android"

    .line 64
    .line 65
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    sget-object p0, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_3
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_4

    .line 82
    .line 83
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-nez p3, :cond_4

    .line 88
    .line 89
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->nullableDataDir()Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-eqz p3, :cond_4

    .line 94
    .line 95
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_4
    if-nez p4, :cond_5

    .line 100
    .line 101
    new-instance p3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    iput-object p3, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 121
    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result p4

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v4, p4, -0x2

    .line 166
    .line 167
    sub-int/2addr p4, v2

    .line 168
    invoke-virtual {v3, v4, p4, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    iput-object p4, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p4

    .line 185
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result p4

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    add-int/lit8 p1, p4, -0x2

    .line 199
    .line 200
    sub-int/2addr p4, v2

    .line 201
    invoke-virtual {v3, p1, p4, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 213
    .line 214
    :goto_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-eqz p0, :cond_6

    .line 219
    .line 220
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 221
    .line 222
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_6
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 226
    .line 227
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 228
    .line 229
    :goto_2
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    iget-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 234
    .line 235
    iput-boolean p1, v1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 236
    .line 237
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 238
    .line 239
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 240
    .line 241
    new-instance p2, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    const/4 p3, 0x0

    .line 247
    move p4, p3

    .line 248
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-ge p4, v2, :cond_7

    .line 253
    .line 254
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    .line 259
    .line 260
    iget-object v2, v2, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 261
    .line 262
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    add-int/lit8 p4, p4, 0x1

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    if-eqz p0, :cond_8

    .line 273
    .line 274
    move-object p0, v0

    .line 275
    goto :goto_4

    .line 276
    :cond_8
    new-array p0, p3, [Ljava/lang/String;

    .line 277
    .line 278
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    check-cast p0, [Ljava/lang/String;

    .line 283
    .line 284
    :goto_4
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->sdkLibIndependence()Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    if-nez p0, :cond_a

    .line 291
    .line 292
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    if-eqz p0, :cond_9

    .line 297
    .line 298
    move-object p2, v0

    .line 299
    :cond_9
    iput-object p2, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 300
    .line 301
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    if-eqz p0, :cond_b

    .line 309
    .line 310
    move-object p0, v0

    .line 311
    goto :goto_5

    .line 312
    :cond_b
    move-object p0, p2

    .line 313
    :goto_5
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 314
    .line 315
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibraries()[Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibrariesOptional()[Z

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    .line 324
    .line 325
    .line 326
    move-result p4

    .line 327
    if-nez p4, :cond_e

    .line 328
    .line 329
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result p4

    .line 333
    if-nez p4, :cond_e

    .line 334
    .line 335
    array-length p4, p0

    .line 336
    array-length v2, p1

    .line 337
    if-ne p4, v2, :cond_e

    .line 338
    .line 339
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    :cond_c
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result p4

    .line 347
    if-eqz p4, :cond_e

    .line 348
    .line 349
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object p4

    .line 353
    check-cast p4, Landroid/content/pm/SharedLibraryInfo;

    .line 354
    .line 355
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    const/4 v3, 0x3

    .line 360
    if-ne v2, v3, :cond_c

    .line 361
    .line 362
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-ltz v2, :cond_c

    .line 371
    .line 372
    aget-boolean v2, p1, v2

    .line 373
    .line 374
    if-eqz v2, :cond_c

    .line 375
    .line 376
    if-nez v0, :cond_d

    .line 377
    .line 378
    new-instance v0, Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .line 382
    .line 383
    :cond_d
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_e
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    .line 388
    .line 389
    :goto_7
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getCategoryOverride()I

    .line 390
    .line 391
    .line 392
    move-result p0

    .line 393
    const/4 p1, -0x1

    .line 394
    if-eq p0, p1, :cond_f

    .line 395
    .line 396
    iput p0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 397
    .line 398
    :cond_f
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 399
    .line 400
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    iget p4, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 405
    .line 406
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-nez v0, :cond_10

    .line 413
    .line 414
    const-string p0, "AppCategoryHintHelper"

    .line 415
    .line 416
    const-string p1, "AppCategoryHintHelper is not initialized, return category without user\'s setting"

    .line 417
    .line 418
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    :goto_8
    move p1, p4

    .line 422
    goto :goto_9

    .line 423
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 424
    .line 425
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->getPackageCategory(Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    .line 430
    .line 431
    monitor-enter v2

    .line 432
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    .line 433
    .line 434
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-eqz v3, :cond_11

    .line 439
    .line 440
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    .line 441
    .line 442
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    check-cast p0, Ljava/lang/Integer;

    .line 447
    .line 448
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    monitor-exit v2

    .line 453
    goto :goto_9

    .line 454
    :catchall_0
    move-exception p0

    .line 455
    goto :goto_b

    .line 456
    :cond_11
    if-eq v0, p1, :cond_12

    .line 457
    .line 458
    monitor-exit v2

    .line 459
    move p1, v0

    .line 460
    goto :goto_9

    .line 461
    :cond_12
    if-eq p4, p1, :cond_13

    .line 462
    .line 463
    monitor-exit v2

    .line 464
    goto :goto_8

    .line 465
    :cond_13
    iget-object p4, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 466
    .line 467
    invoke-virtual {p4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result p4

    .line 471
    if-eqz p4, :cond_14

    .line 472
    .line 473
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 474
    .line 475
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object p0

    .line 479
    check-cast p0, Ljava/lang/Integer;

    .line 480
    .line 481
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    monitor-exit v2

    .line 486
    goto :goto_9

    .line 487
    :cond_14
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :goto_9
    iput p1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 489
    .line 490
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 495
    .line 496
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p0

    .line 500
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 501
    .line 502
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 507
    .line 508
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 509
    .line 510
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    .line 511
    .line 512
    .line 513
    move-result p1

    .line 514
    if-eqz p1, :cond_15

    .line 515
    .line 516
    const/16 p1, 0x80

    .line 517
    .line 518
    goto :goto_a

    .line 519
    :cond_15
    move p1, p3

    .line 520
    :goto_a
    or-int/2addr p1, p0

    .line 521
    or-int/2addr p0, p1

    .line 522
    iput p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 523
    .line 524
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 525
    .line 526
    iput p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 527
    .line 528
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 529
    .line 530
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    if-eqz p1, :cond_16

    .line 535
    .line 536
    const/16 p3, 0x20

    .line 537
    .line 538
    :cond_16
    or-int p1, p0, p3

    .line 539
    .line 540
    or-int/2addr p0, p1

    .line 541
    iput p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 542
    .line 543
    return-object v1

    .line 544
    :goto_b
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    throw p0

    .line 546
    :cond_17
    :goto_c
    return-object v0
.end method

.method public static generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserStateInternal;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 16
    .line 17
    .line 18
    sget-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 28
    .line 29
    :goto_0
    iput p0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 30
    .line 31
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p6, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 34
    .line 35
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    array-length v2, v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    move-object v2, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_0
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    array-length v2, v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    move-object v2, v0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_1
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    move-object v2, v0

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :goto_2
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 106
    .line 107
    move-object v2, p1

    .line 108
    check-cast v2, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 109
    .line 110
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v4, "android"

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    sget-object p4, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    .line 123
    .line 124
    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 125
    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :cond_5
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-nez v4, :cond_6

    .line 133
    .line 134
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    .line 135
    .line 136
    .line 137
    move-result p4

    .line 138
    if-nez p4, :cond_6

    .line 139
    .line 140
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->nullableDataDir()Z

    .line 141
    .line 142
    .line 143
    move-result p4

    .line 144
    if-eqz p4, :cond_6

    .line 145
    .line 146
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 147
    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :cond_6
    if-nez p5, :cond_7

    .line 151
    .line 152
    new-instance p4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p4

    .line 171
    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 172
    .line 173
    new-instance p4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p4

    .line 192
    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_7
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p4

    .line 199
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v6, v4, -0x2

    .line 217
    .line 218
    add-int/lit8 v4, v4, -0x1

    .line 219
    .line 220
    invoke-virtual {v5, v6, v4, p4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iput-object v4, v1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    add-int/lit8 v2, v4, -0x2

    .line 251
    .line 252
    add-int/lit8 v4, v4, -0x1

    .line 253
    .line 254
    invoke-virtual {v5, v2, v4, p4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move-result-object p4

    .line 258
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p4

    .line 265
    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 266
    .line 267
    :goto_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    .line 268
    .line 269
    .line 270
    move-result p4

    .line 271
    if-eqz p4, :cond_8

    .line 272
    .line 273
    iget-object p4, v1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 274
    .line 275
    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_8
    iget-object p4, v1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 279
    .line 280
    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 281
    .line 282
    :goto_4
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p4

    .line 286
    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 287
    .line 288
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p4

    .line 292
    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 293
    .line 294
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p4

    .line 298
    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 299
    .line 300
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    iput-object p1, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 307
    .line 308
    .line 309
    invoke-static {p0, p6, p5}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    iget-object p4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast p4, Ljava/lang/CharSequence;

    .line 316
    .line 317
    iput-object p4, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 318
    .line 319
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast p1, Ljava/lang/Integer;

    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    iput p1, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 328
    .line 329
    const-wide/16 p4, 0x80

    .line 330
    .line 331
    and-long p1, p2, p4

    .line 332
    .line 333
    const-wide/16 p3, 0x0

    .line 334
    .line 335
    cmp-long p1, p1, p3

    .line 336
    .line 337
    if-nez p1, :cond_9

    .line 338
    .line 339
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_9
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-eqz p1, :cond_a

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_a
    move-object v0, p0

    .line 354
    :goto_5
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 355
    .line 356
    :goto_6
    return-object v1
.end method

.method public static generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/content/pm/PermissionGroupInfo;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestDetailRes()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestRes()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestDetailRes()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PermissionGroupInfo;-><init>(III)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getDescriptionRes()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 30
    .line 31
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPriority()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 36
    .line 37
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestRes()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 42
    .line 43
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getFlags()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 48
    .line 49
    const-wide/16 v2, 0x80

    .line 50
    .line 51
    and-long/2addr p1, v2

    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    cmp-long p1, p1, v2

    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getMetaData()Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move-object v0, p0

    .line 73
    :goto_0
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 74
    .line 75
    :goto_1
    return-object v1
.end method

.method public static generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/content/pm/PermissionInfo;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequestRes()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 34
    .line 35
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getDescriptionRes()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 40
    .line 41
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 46
    .line 47
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 52
    .line 53
    const-wide/16 v2, 0x80

    .line 54
    .line 55
    and-long/2addr p1, v2

    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    cmp-long p1, p1, v2

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object v0, p0

    .line 77
    :goto_0
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 78
    .line 79
    :goto_1
    return-object v1
.end method

.method public static generateProcessInfo(Ljava/util/Map;)Landroid/util/ArrayMap;
    .locals 12

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 39
    .line 40
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v11, Landroid/content/pm/ProcessInfo;

    .line 45
    .line 46
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    new-instance v6, Landroid/util/ArraySet;

    .line 51
    .line 52
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-direct {v6, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->isUseEmbeddedDex()Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    move-object v4, v11

    .line 76
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/ProcessInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;IIIZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-object v1
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    if-eqz p5, :cond_2

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_4

    .line 25
    .line 26
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "AppInfo\'s package name is different. Expected="

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " actual="

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    if-nez p5, :cond_3

    .line 46
    .line 47
    const-string p5, "(null AppInfo)"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    const-string v1, "PackageParsing"

    .line 60
    .line 61
    invoke-static {v1, p5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-object v1, p0

    .line 65
    move-wide v2, p2

    .line 66
    move-object v4, p4

    .line 67
    move v5, p6

    .line 68
    move-object v6, p7

    .line 69
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 70
    .line 71
    .line 72
    move-result-object p5

    .line 73
    :cond_4
    if-nez p5, :cond_5

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_5
    new-instance p0, Landroid/content/pm/ProviderInfo;

    .line 77
    .line 78
    invoke-direct {p0}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    iput-boolean p4, p0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 86
    .line 87
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    iput p4, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 92
    .line 93
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    iput-object p4, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    iput-object p4, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    .line 106
    .line 107
    .line 108
    move-result p4

    .line 109
    iput-boolean p4, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    iput-object p4, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 116
    .line 117
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    iput-object p4, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    iput-boolean p4, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 128
    .line 129
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    .line 130
    .line 131
    .line 132
    move-result p4

    .line 133
    iput-boolean p4, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 134
    .line 135
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    iput-boolean p4, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 140
    .line 141
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    .line 142
    .line 143
    .line 144
    move-result p4

    .line 145
    iput p4, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 146
    .line 147
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    const/4 v1, 0x0

    .line 152
    new-array v2, v1, [Landroid/os/PatternMatcher;

    .line 153
    .line 154
    invoke-interface {p4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p4

    .line 158
    check-cast p4, [Landroid/os/PatternMatcher;

    .line 159
    .line 160
    iput-object p4, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 161
    .line 162
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    new-array v1, v1, [Landroid/content/pm/PathPermission;

    .line 167
    .line 168
    invoke-interface {p4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    check-cast p4, [Landroid/content/pm/PathPermission;

    .line 173
    .line 174
    iput-object p4, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 175
    .line 176
    const-wide/16 v1, 0x800

    .line 177
    .line 178
    and-long/2addr v1, p2

    .line 179
    const-wide/16 v3, 0x0

    .line 180
    .line 181
    cmp-long p4, v1, v3

    .line 182
    .line 183
    if-nez p4, :cond_6

    .line 184
    .line 185
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 186
    .line 187
    :cond_6
    const-wide/16 v1, 0x80

    .line 188
    .line 189
    and-long/2addr p2, v1

    .line 190
    cmp-long p2, p2, v3

    .line 191
    .line 192
    if-eqz p2, :cond_8

    .line 193
    .line 194
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result p3

    .line 202
    if-eqz p3, :cond_7

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_7
    move-object v0, p2

    .line 206
    :goto_1
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 207
    .line 208
    :cond_8
    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 209
    .line 210
    invoke-static {p0, p1, p7, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 211
    .line 212
    .line 213
    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    if-nez p5, :cond_2

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    move-wide v2, p2

    .line 16
    move-object v4, p4

    .line 17
    move v5, p6

    .line 18
    move-object v6, p7

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    :cond_2
    if-nez p5, :cond_3

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_3
    new-instance p0, Landroid/content/pm/ServiceInfo;

    .line 27
    .line 28
    invoke-direct {p0}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    iput-boolean p4, p0, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    iput p4, p0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    iput-object p4, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getProcessName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    iput-object p4, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    iput p4, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 60
    .line 61
    iput-object p5, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    const-wide/16 p4, 0x80

    .line 64
    .line 65
    and-long/2addr p2, p4

    .line 66
    const-wide/16 p4, 0x0

    .line 67
    .line 68
    cmp-long p2, p2, p4

    .line 69
    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    move-object v0, p2

    .line 84
    :goto_0
    iput-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 85
    .line 86
    :cond_5
    invoke-static {p0, p1, p7, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 87
    .line 88
    .line 89
    return-object p0
.end method

.method public static getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->nullableDataDir()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isDefaultToDeviceProtectedStorage()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_2
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;
    .locals 2

    .line 1
    const-wide/16 v0, 0x40

    .line 2
    .line 3
    and-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    new-array p1, p1, [Landroid/content/pm/Signature;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    aget-object p0, p0, v0

    .line 27
    .line 28
    aput-object p0, p1, v0

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    array-length p1, p1

    .line 42
    new-array p2, p1, [Landroid/content/pm/Signature;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-object p2
.end method

.method public static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x80

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 12
    .line 13
    :cond_0
    const-wide/16 v4, 0x400

    .line 14
    .line 15
    and-long/2addr v4, p1

    .line 16
    cmp-long v0, v4, v2

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 23
    .line 24
    :cond_1
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 32
    .line 33
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    const/high16 v4, 0x200000

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v4, v5

    .line 44
    :goto_0
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_4

    .line 49
    .line 50
    const/high16 v6, 0x800000

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    move v6, v5

    .line 54
    :goto_1
    or-int/2addr v4, v6

    .line 55
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_5

    .line 60
    .line 61
    const/high16 v6, 0x40000000    # 2.0f

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    move v6, v5

    .line 65
    :goto_2
    or-int/2addr v4, v6

    .line 66
    or-int/2addr v0, v4

    .line 67
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 68
    .line 69
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 70
    .line 71
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    const/16 v4, 0x80

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_6
    move v4, v5

    .line 81
    :goto_3
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_7

    .line 86
    .line 87
    const/high16 v6, 0x10000

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    move v6, v5

    .line 91
    :goto_4
    or-int/2addr v4, v6

    .line 92
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    or-int/2addr v4, v6

    .line 97
    or-int/2addr v0, v4

    .line 98
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 99
    .line 100
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 101
    .line 102
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_8

    .line 107
    .line 108
    const/16 v4, 0x40

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_8
    move v4, v5

    .line 112
    :goto_5
    or-int/2addr v0, v4

    .line 113
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 114
    .line 115
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v4, 0x1

    .line 120
    if-ne v0, v4, :cond_9

    .line 121
    .line 122
    iput-boolean v4, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_9
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    const/4 v6, 0x4

    .line 130
    if-ne v0, v6, :cond_c

    .line 131
    .line 132
    const-wide/32 v6, 0x8000

    .line 133
    .line 134
    .line 135
    and-long/2addr v6, p1

    .line 136
    cmp-long v0, v6, v2

    .line 137
    .line 138
    if-nez v0, :cond_b

    .line 139
    .line 140
    const-wide/32 v6, 0x20000000

    .line 141
    .line 142
    .line 143
    and-long/2addr p1, v6

    .line 144
    cmp-long p1, p1, v2

    .line 145
    .line 146
    if-eqz p1, :cond_a

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_a
    move v4, v5

    .line 150
    :cond_b
    :goto_6
    iput-boolean v4, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_c
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    const/4 p2, 0x2

    .line 158
    if-eq p1, p2, :cond_d

    .line 159
    .line 160
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    const/4 p2, 0x3

    .line 165
    if-ne p1, p2, :cond_e

    .line 166
    .line 167
    :cond_d
    iput-boolean v5, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 168
    .line 169
    :cond_e
    :goto_7
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 174
    .line 175
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 176
    .line 177
    const/4 p2, -0x1

    .line 178
    if-ne p1, p2, :cond_f

    .line 179
    .line 180
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {p1}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 187
    .line 188
    :cond_f
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_10

    .line 193
    .line 194
    const-string p1, ":ephemeralapp:complete"

    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_10
    const-string p1, ":complete"

    .line 198
    .line 199
    :goto_8
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 200
    .line 201
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-eqz p1, :cond_11

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    new-array v0, v5, [Ljava/lang/String;

    .line 212
    .line 213
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    check-cast p2, [Ljava/lang/String;

    .line 218
    .line 219
    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    new-array p2, v5, [Ljava/lang/String;

    .line 226
    .line 227
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, [Ljava/lang/String;

    .line 232
    .line 233
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 234
    .line 235
    :cond_11
    invoke-static {p3}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    iput-boolean p1, p0, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    .line 240
    .line 241
    if-eqz p1, :cond_12

    .line 242
    .line 243
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iget-object p1, p1, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 254
    .line 255
    iget-object p1, p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    .line 256
    .line 257
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 258
    .line 259
    :cond_12
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_13

    .line 264
    .line 265
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_13

    .line 270
    .line 271
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->nullableDataDir()Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-eqz p1, :cond_13

    .line 276
    .line 277
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 278
    .line 279
    :cond_13
    return-void
.end method
