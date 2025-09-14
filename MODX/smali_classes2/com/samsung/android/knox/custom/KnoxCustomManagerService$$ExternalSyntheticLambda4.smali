.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 4
    .line 5
    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 9
    .line 10
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 11
    .line 12
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAccessibilitySettingsItems$98(II)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 20
    .line 21
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 22
    .line 23
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 24
    .line 25
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAudioVolume$57(II)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 33
    .line 34
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 35
    .line 36
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 37
    .line 38
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setForceAutoStartUpState$104(II)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 46
    .line 47
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 48
    .line 49
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 50
    .line 51
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setLockScreenOverrideMode$74(II)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 59
    .line 60
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 61
    .line 62
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 63
    .line 64
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setRecentLongPressMode$78(II)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 72
    .line 73
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 74
    .line 75
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 76
    .line 77
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setSystemSoundsEnabledState$114(II)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 85
    .line 86
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 87
    .line 88
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 89
    .line 90
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVibrationIntensity$115(II)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 98
    .line 99
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 100
    .line 101
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 102
    .line 103
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setPowerDialogOptionMode$20(II)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 111
    .line 112
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 113
    .line 114
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 115
    .line 116
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAutoCallPickupState$119(II)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 124
    .line 125
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 126
    .line 127
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 128
    .line 129
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setHideNotificationMessages$15(II)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 137
    .line 138
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 139
    .line 140
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 141
    .line 142
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setQuickPanelEditMode$108(II)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 150
    .line 151
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 152
    .line 153
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 154
    .line 155
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$allowDexAutoOpenLastApp$10(II)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0

    .line 162
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 163
    .line 164
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 165
    .line 166
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 167
    .line 168
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setStatusBarModeLocal$147(II)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0

    .line 175
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 176
    .line 177
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 178
    .line 179
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 180
    .line 181
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setQuickPanelButtons$107(II)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 189
    .line 190
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 191
    .line 192
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 193
    .line 194
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDexHDMIAutoEnterState$11(II)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 202
    .line 203
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 204
    .line 205
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 206
    .line 207
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setUsbConnectionType$121(II)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0

    .line 214
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 215
    .line 216
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 217
    .line 218
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 219
    .line 220
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVolumeControlStream$96(II)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0

    .line 227
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 228
    .line 229
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 230
    .line 231
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 232
    .line 233
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setProKioskStatusBarIconsState$24(II)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    return-object p0

    .line 240
    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 241
    .line 242
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 243
    .line 244
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 245
    .line 246
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setProKioskStatusBarClockState$23(II)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    return-object p0

    .line 253
    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 254
    .line 255
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 256
    .line 257
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda4;->f$2:I

    .line 258
    .line 259
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setForceAutoShutDownState$123(II)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0

    .line 266
    nop

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
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
