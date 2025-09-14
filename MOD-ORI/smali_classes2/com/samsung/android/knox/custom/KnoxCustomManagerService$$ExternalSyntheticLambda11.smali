.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ZI)V
    .locals 1

    .line 2
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 11
    .line 12
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setStatusBarNotificationsState$113(IZ)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 20
    .line 21
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 22
    .line 23
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 24
    .line 25
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setScreenOffOnStatusBarDoubleTapState$80(IZ)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 33
    .line 34
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 35
    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 37
    .line 38
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setPowerMenuLockedState$77(IZ)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 46
    .line 47
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 48
    .line 49
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 50
    .line 51
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setBackupRestoreState$31(IZ)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 59
    .line 60
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 61
    .line 62
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 63
    .line 64
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setUnlockSimOnBootState$92(IZ)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 72
    .line 73
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 74
    .line 75
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 76
    .line 77
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVolumeButtonRotationState$95(IZ)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 85
    .line 86
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 87
    .line 88
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 89
    .line 90
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setExtendedCallInfoState$67(IZ)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 98
    .line 99
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 100
    .line 101
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 102
    .line 103
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setToastShowPackageNameState$90(IZ)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 111
    .line 112
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 113
    .line 114
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 115
    .line 116
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAppBlockDownloadState$56(IZ)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 124
    .line 125
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 126
    .line 127
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 128
    .line 129
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVolumePanelEnabledState$97(IZ)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 137
    .line 138
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 139
    .line 140
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 141
    .line 142
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setScreenOffOnHomeLongPressState$79(IZ)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 150
    .line 151
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 152
    .line 153
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 154
    .line 155
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setInputMethodRestrictionState$17(IZ)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0

    .line 162
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 163
    .line 164
    iget-boolean v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 165
    .line 166
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 167
    .line 168
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setUsbNetStateLocal$149(ZI)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0

    .line 175
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 176
    .line 177
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 178
    .line 179
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 180
    .line 181
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setScreenWakeupOnPowerState$42(IZ)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 189
    .line 190
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 191
    .line 192
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 193
    .line 194
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVolumeKeyAppState$27(IZ)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 202
    .line 203
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 204
    .line 205
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 206
    .line 207
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setUsbMassStorageStateLocal$148(IZ)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0

    .line 214
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 215
    .line 216
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 217
    .line 218
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 219
    .line 220
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setForceSingleView$52(IZ)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0

    .line 227
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 228
    .line 229
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 230
    .line 231
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 232
    .line 233
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setLTESettingState$37(IZ)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    return-object p0

    .line 240
    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 241
    .line 242
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 243
    .line 244
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 245
    .line 246
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setInfraredState$69(IZ)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    return-object p0

    .line 253
    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 254
    .line 255
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 256
    .line 257
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 258
    .line 259
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setGearNotificationState$68(IZ)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0

    .line 266
    :pswitch_13
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 267
    .line 268
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 269
    .line 270
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 271
    .line 272
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setToastEnabledState$87(IZ)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    return-object p0

    .line 279
    :pswitch_14
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 280
    .line 281
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 282
    .line 283
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 284
    .line 285
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setMotionControlState$40(IZ)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    return-object p0

    .line 292
    :pswitch_15
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 293
    .line 294
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$1:I

    .line 295
    .line 296
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda11;->f$2:Z

    .line 297
    .line 298
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setToastGravityEnabledState$89(IZ)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    return-object p0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
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
