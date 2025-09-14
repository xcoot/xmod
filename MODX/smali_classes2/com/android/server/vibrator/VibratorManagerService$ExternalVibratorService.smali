.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onExternalVibrationStart(Landroid/os/ExternalVibration;)Landroid/os/ExternalVibrationScale;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string v0, "VibratorManagerService"

    .line 11
    .line 12
    const-string/jumbo v1, "onExternalVibrationStart() -  SCALE_MUTE"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/os/ExternalVibrationScale;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/ExternalVibrationScale;-><init>()V

    .line 21
    .line 22
    .line 23
    iput v3, v0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 27
    .line 28
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 29
    .line 30
    invoke-direct {v2, v4, v1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 34
    .line 35
    const/16 v5, -0x64

    .line 36
    .line 37
    iput v5, v4, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 38
    .line 39
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v4

    .line 44
    move v6, v3

    .line 45
    :goto_0
    :try_start_0
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 46
    .line 47
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/4 v8, 0x0

    .line 54
    if-ge v6, v7, :cond_17

    .line 55
    .line 56
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 57
    .line 58
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Lcom/android/server/vibrator/VibratorController;

    .line 65
    .line 66
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 67
    .line 68
    const-wide/16 v9, 0x8

    .line 69
    .line 70
    invoke-virtual {v7, v9, v10}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_16

    .line 75
    .line 76
    const-string v6, "android.permission.VIBRATE"

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getUid()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    const/4 v9, -0x1

    .line 83
    const/4 v10, 0x1

    .line 84
    invoke-static {v6, v7, v9, v10}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_1

    .line 89
    .line 90
    const-string v3, "VibratorManagerService"

    .line 91
    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v6, "pkg="

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v6, ", uid="

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getUid()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    .line 123
    .line 124
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 135
    .line 136
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 137
    .line 138
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/Vibration$Status;

    .line 139
    .line 140
    invoke-direct {v1, v3, v8}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationAndWriteStatsLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 147
    .line 148
    monitor-exit v4

    .line 149
    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto/16 :goto_6

    .line 152
    .line 153
    :cond_1
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 154
    .line 155
    iget-object v7, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration$CallerInfo;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    if-nez v6, :cond_2

    .line 162
    .line 163
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 164
    .line 165
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 166
    .line 167
    if-eqz v7, :cond_2

    .line 168
    .line 169
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 170
    .line 171
    invoke-virtual {v7, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_2

    .line 176
    .line 177
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 182
    .line 183
    monitor-exit v4

    .line 184
    return-object v0

    .line 185
    :cond_2
    if-nez v6, :cond_3

    .line 186
    .line 187
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 188
    .line 189
    invoke-virtual {v6, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForOngoingLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    :cond_3
    if-eqz v6, :cond_4

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 196
    .line 197
    invoke-virtual {v0, v2, v6}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationAndWriteStatsLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 201
    .line 202
    monitor-exit v4

    .line 203
    return-object v0

    .line 204
    :cond_4
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 205
    .line 206
    iget-object v7, v6, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 207
    .line 208
    if-nez v7, :cond_6

    .line 209
    .line 210
    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 211
    .line 212
    if-eqz v6, :cond_5

    .line 213
    .line 214
    iget-object v7, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 215
    .line 216
    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 217
    .line 218
    iget-object v6, v6, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 219
    .line 220
    invoke-virtual {v7, v6}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 221
    .line 222
    .line 223
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 224
    .line 225
    new-instance v7, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 226
    .line 227
    sget-object v9, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    .line 228
    .line 229
    iget-object v11, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 230
    .line 231
    invoke-direct {v7, v9, v11}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 235
    .line 236
    .line 237
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 238
    .line 239
    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 240
    .line 241
    new-instance v7, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 242
    .line 243
    sget-object v9, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    .line 244
    .line 245
    iget-object v11, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 246
    .line 247
    invoke-direct {v7, v9, v11}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v7, v10}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 251
    .line 252
    .line 253
    move v7, v3

    .line 254
    move v6, v10

    .line 255
    goto :goto_1

    .line 256
    :cond_5
    move v6, v3

    .line 257
    move v7, v6

    .line 258
    goto :goto_1

    .line 259
    :cond_6
    iget-object v6, v7, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 260
    .line 261
    invoke-virtual {v6}, Landroid/os/ExternalVibration;->mute()Z

    .line 262
    .line 263
    .line 264
    iget-object v6, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 265
    .line 266
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 267
    .line 268
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 269
    .line 270
    iget-object v7, v7, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 271
    .line 272
    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 273
    .line 274
    .line 275
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 276
    .line 277
    new-instance v7, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 278
    .line 279
    sget-object v9, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    .line 280
    .line 281
    iget-object v11, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 282
    .line 283
    invoke-direct {v7, v9, v11}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, v7, v10}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 287
    .line 288
    .line 289
    move v6, v3

    .line 290
    move v7, v10

    .line 291
    :goto_1
    iget-object v9, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 292
    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    invoke-virtual {v9, v11, v8}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    const/4 v11, 0x4

    .line 302
    invoke-virtual {v9, v11}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 303
    .line 304
    .line 305
    move-result v11

    .line 306
    if-eqz v11, :cond_7

    .line 307
    .line 308
    iget-object v11, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 309
    .line 310
    iget-object v11, v11, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 311
    .line 312
    invoke-virtual {v11}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 313
    .line 314
    .line 315
    :cond_7
    iget-object v11, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 316
    .line 317
    iput-object v2, v11, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 318
    .line 319
    iget-object v11, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 320
    .line 321
    invoke-virtual {v11, v2}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 322
    .line 323
    .line 324
    iget-object v11, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 325
    .line 326
    iget-object v11, v11, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 327
    .line 328
    invoke-virtual {v9}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    iget-object v12, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 333
    .line 334
    invoke-virtual {v11, v9}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    .line 335
    .line 336
    .line 337
    move-result v13

    .line 338
    iput v13, v12, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 339
    .line 340
    iget-object v12, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 341
    .line 342
    invoke-virtual {v11, v9}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    iput v9, v12, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    .line 347
    .line 348
    iget-object v9, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 349
    .line 350
    iget v9, v9, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    .line 351
    .line 352
    iget-object v11, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 353
    .line 354
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    const/high16 v12, 0x3f800000    # 1.0f

    .line 358
    .line 359
    invoke-static {v9, v12}, Ljava/lang/Float;->compare(FF)I

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    if-eqz v12, :cond_8

    .line 364
    .line 365
    iput v9, v11, Lcom/android/server/vibrator/VibrationStats;->mAdaptiveScale:F

    .line 366
    .line 367
    :cond_8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-eqz v6, :cond_9

    .line 369
    .line 370
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 371
    .line 372
    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 373
    .line 374
    const-wide/16 v11, 0x1388

    .line 375
    .line 376
    invoke-virtual {v4, v11, v12}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-nez v4, :cond_9

    .line 381
    .line 382
    const-string v1, "VibratorManagerService"

    .line 383
    .line 384
    const-string v4, "Timed out waiting for vibration to cancel"

    .line 385
    .line 386
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 390
    .line 391
    iget-object v4, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 392
    .line 393
    monitor-enter v4

    .line 394
    :try_start_1
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 395
    .line 396
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 397
    .line 398
    sget-object v6, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

    .line 399
    .line 400
    invoke-direct {v1, v6, v8}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v1, v3}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 404
    .line 405
    .line 406
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 407
    .line 408
    iput v5, v0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 409
    .line 410
    monitor-exit v4

    .line 411
    return-object v0

    .line 412
    :catchall_1
    move-exception v0

    .line 413
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 414
    throw v0

    .line 415
    :cond_9
    if-nez v7, :cond_a

    .line 416
    .line 417
    const-string v4, "VibratorManagerService"

    .line 418
    .line 419
    const-string v5, "Vibrator going under external control."

    .line 420
    .line 421
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 425
    .line 426
    iget-object v5, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 427
    .line 428
    invoke-virtual {v4, v10, v5}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V

    .line 429
    .line 430
    .line 431
    :cond_a
    sget-boolean v4, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    .line 432
    .line 433
    if-eqz v4, :cond_11

    .line 434
    .line 435
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 436
    .line 437
    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 438
    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    invoke-virtual {v4, v5}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    new-instance v5, Landroid/os/ExternalVibrationScale;

    .line 452
    .line 453
    invoke-direct {v5}, Landroid/os/ExternalVibrationScale;-><init>()V

    .line 454
    .line 455
    .line 456
    iput v3, v5, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 457
    .line 458
    iget-object v6, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 459
    .line 460
    invoke-virtual {v6}, Landroid/os/ExternalVibration;->getVibrationAttributesWithTags()Landroid/os/VibrationAttributes;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    invoke-virtual {v6}, Landroid/os/VibrationAttributes;->getTags()Ljava/util/Set;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 469
    .line 470
    .line 471
    move-result-object v6

    .line 472
    :cond_b
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 473
    .line 474
    .line 475
    move-result v7

    .line 476
    if-eqz v7, :cond_c

    .line 477
    .line 478
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    check-cast v7, Ljava/lang/String;

    .line 483
    .line 484
    const-string v8, "HAPTIC_INTENSITY"

    .line 485
    .line 486
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 487
    .line 488
    .line 489
    move-result v8

    .line 490
    if-eqz v8, :cond_b

    .line 491
    .line 492
    const-string v8, "="

    .line 493
    .line 494
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v7

    .line 498
    aget-object v8, v7, v10

    .line 499
    .line 500
    if-eqz v8, :cond_b

    .line 501
    .line 502
    const-string v4, "VibratorManagerService"

    .line 503
    .line 504
    new-instance v8, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    const-string v9, "ach intensity : "

    .line 507
    .line 508
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    aget-object v9, v7, v10

    .line 512
    .line 513
    invoke-static {v8, v9, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    aget-object v4, v7, v10

    .line 517
    .line 518
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    goto :goto_2

    .line 523
    :cond_c
    const-string v6, "VibratorManagerService"

    .line 524
    .line 525
    const-string v7, "getCurrentMagnitude : "

    .line 526
    .line 527
    invoke-static {v4, v7, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    if-nez v4, :cond_d

    .line 531
    .line 532
    iput-object v5, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 533
    .line 534
    goto :goto_3

    .line 535
    :cond_d
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 536
    .line 537
    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 538
    .line 539
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v6

    .line 543
    check-cast v6, Lcom/android/server/vibrator/VibratorController;

    .line 544
    .line 545
    if-eqz v6, :cond_e

    .line 546
    .line 547
    int-to-long v7, v4

    .line 548
    iget-object v4, v6, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 549
    .line 550
    invoke-virtual {v4, v7, v8}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(J)V

    .line 551
    .line 552
    .line 553
    :cond_e
    iput-object v5, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 554
    .line 555
    :goto_3
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 556
    .line 557
    iget-object v5, v4, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 558
    .line 559
    if-eqz v5, :cond_11

    .line 560
    .line 561
    const-string v6, "VibratorService"

    .line 562
    .line 563
    iget-object v7, v5, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    .line 564
    .line 565
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 566
    .line 567
    .line 568
    move-result v6

    .line 569
    if-eqz v6, :cond_f

    .line 570
    .line 571
    iget-boolean v3, v5, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    .line 572
    .line 573
    :cond_f
    if-eqz v3, :cond_11

    .line 574
    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    if-nez v3, :cond_11

    .line 584
    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    const-string v5, "android"

    .line 590
    .line 591
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    if-eqz v5, :cond_10

    .line 596
    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    .line 598
    .line 599
    .line 600
    move-result v5

    .line 601
    if-eqz v5, :cond_10

    .line 602
    .line 603
    const-string v3, "com.android.server.telecom"

    .line 604
    .line 605
    :cond_10
    move-object v13, v3

    .line 606
    iget-object v3, v4, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 607
    .line 608
    iget-object v11, v3, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 609
    .line 610
    const-string v15, ""

    .line 611
    .line 612
    const-string v16, ""

    .line 613
    .line 614
    const-string/jumbo v12, "vibration"

    .line 615
    .line 616
    .line 617
    const/4 v14, 0x0

    .line 618
    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    :cond_11
    const-string v3, "VibratorManagerService"

    .line 622
    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    const-string v5, "Playing external vibration: "

    .line 626
    .line 627
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    iget-object v1, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 641
    .line 642
    iget-wide v3, v1, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    .line 643
    .line 644
    const-wide/16 v5, 0x0

    .line 645
    .line 646
    cmp-long v3, v3, v5

    .line 647
    .line 648
    if-lez v3, :cond_12

    .line 649
    .line 650
    goto :goto_4

    .line 651
    :cond_12
    iget-wide v3, v1, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    .line 652
    .line 653
    cmp-long v3, v3, v5

    .line 654
    .line 655
    if-eqz v3, :cond_13

    .line 656
    .line 657
    goto :goto_4

    .line 658
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 659
    .line 660
    .line 661
    move-result-wide v3

    .line 662
    iput-wide v3, v1, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    .line 663
    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 665
    .line 666
    .line 667
    move-result-wide v3

    .line 668
    iput-wide v3, v1, Lcom/android/server/vibrator/VibrationStats;->mStartTimeDebug:J

    .line 669
    .line 670
    :goto_4
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    .line 671
    .line 672
    if-eqz v1, :cond_14

    .line 673
    .line 674
    iget-object v1, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 675
    .line 676
    iget v1, v1, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 677
    .line 678
    :cond_14
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 679
    .line 680
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    if-eqz v1, :cond_15

    .line 685
    .line 686
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 691
    .line 692
    monitor-enter v1

    .line 693
    :try_start_2
    invoke-virtual {v0, v10}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 694
    .line 695
    .line 696
    monitor-exit v1

    .line 697
    goto :goto_5

    .line 698
    :catchall_2
    move-exception v0

    .line 699
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 700
    throw v0

    .line 701
    :cond_15
    :goto_5
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 702
    .line 703
    return-object v0

    .line 704
    :cond_16
    add-int/lit8 v6, v6, 0x1

    .line 705
    .line 706
    goto/16 :goto_0

    .line 707
    .line 708
    :cond_17
    :try_start_3
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 709
    .line 710
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 711
    .line 712
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    .line 713
    .line 714
    invoke-direct {v1, v3, v8}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0, v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationAndWriteStatsLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 718
    .line 719
    .line 720
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 721
    .line 722
    monitor-exit v4

    .line 723
    return-object v0

    .line 724
    :goto_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 725
    throw v0
.end method

.method public final onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .locals 4

    .line 1
    const-string v0, "Stopping external vibration: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string v2, "VibratorManagerService"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const-string p1, "VibratorManagerService"

    .line 46
    .line 47
    const-string v0, "Ach repeat vibration ended"

    .line 48
    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 56
    .line 57
    new-instance v0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 58
    .line 59
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-direct {v0, v2, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p1, v0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 85
    .line 86
    .line 87
    monitor-exit p1

    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    :try_start_2
    throw p0

    .line 92
    :cond_1
    :goto_1
    monitor-exit v1

    .line 93
    return-void

    .line 94
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    throw p0
.end method

.method public final shouldIgnoreExternalVibrationLocked(IIII)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
