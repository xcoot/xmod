.class public final Lcom/android/server/power/PowerManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mProxWakelocks:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/power/PowerManagerService$BinderService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$BinderService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mProxWakelocks:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    sparse-switch v2, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    const-string/jumbo v2, "set-prox"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :sswitch_1
    const-string/jumbo v2, "set-mode"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    move v2, v4

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string/jumbo v2, "set-fixed-performance-mode-enabled"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    goto :goto_1

    .line 60
    :sswitch_3
    const-string/jumbo v2, "suppress-ambient-display"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    move v2, v3

    .line 70
    goto :goto_1

    .line 71
    :sswitch_4
    const-string v2, "list-ambient-display-suppression-tokens"

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    const/4 v2, 0x4

    .line 80
    goto :goto_1

    .line 81
    :sswitch_5
    const-string/jumbo v2, "set-adaptive-power-saver-enabled"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    move v2, v5

    .line 91
    goto :goto_1

    .line 92
    :sswitch_6
    const-string/jumbo v2, "set-face-down-detector"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    const/4 v2, 0x6

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    move v2, v1

    .line 104
    :goto_1
    const-string v6, "Error: "

    .line 105
    .line 106
    packed-switch v2, :pswitch_data_0

    .line 107
    .line 108
    .line 109
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    return p0

    .line 114
    :pswitch_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    .line 132
    .line 133
    move v1, v5

    .line 134
    goto :goto_2

    .line 135
    :catch_1
    move-exception p1

    .line 136
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_2
    return v1

    .line 156
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetProx()I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    return p0

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runListAmbientDisplaySuppressionTokens()V

    .line 162
    .line 163
    .line 164
    return v5

    .line 165
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 166
    .line 167
    .line 168
    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 169
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 182
    .line 183
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/PowerManagerService$BinderService;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 184
    .line 185
    .line 186
    move v1, v5

    .line 187
    goto :goto_3

    .line 188
    :catch_2
    move-exception p0

    .line 189
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :goto_3
    return v1

    .line 209
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 210
    .line 211
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    invoke-virtual {p1, v3, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->setPowerModeChecked(IZ)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_2

    .line 224
    .line 225
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    const-string v2, "Failed to set FIXED_PERFORMANCE mode"

    .line 230
    .line 231
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string v2, "This is likely because Power HAL AIDL is not implemented on this device"

    .line 235
    .line 236
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_2
    if-eqz p1, :cond_3

    .line 240
    .line 241
    move v1, v5

    .line 242
    :cond_3
    return v1

    .line 243
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 244
    .line 245
    .line 246
    move-result-object p1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 247
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result p1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 255
    :try_start_7
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 256
    .line 257
    if-ne p1, v4, :cond_4

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_4
    move v4, v5

    .line 261
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService$BinderService;->setPowerSaveModeEnabled(Z)Z

    .line 262
    .line 263
    .line 264
    move v1, v5

    .line 265
    goto :goto_5

    .line 266
    :catch_3
    move-exception p0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :goto_5
    return v1

    .line 287
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 288
    .line 289
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    invoke-virtual {p1, p0}, Lcom/android/server/power/PowerManagerService$BinderService;->setAdaptivePowerSaveEnabled(Z)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 298
    .line 299
    .line 300
    return v5

    .line 301
    :goto_6
    const-string p1, "Remote exception: "

    .line 302
    .line 303
    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 304
    .line 305
    .line 306
    return v1

    .line 307
    :sswitch_data_0
    .sparse-switch
        -0x3a430f94 -> :sswitch_6
        -0x1fb0eb0b -> :sswitch_5
        0x22dac243 -> :sswitch_4
        0x2e2d7375 -> :sswitch_3
        0x3d8ace98 -> :sswitch_2
        0x519c0c2e -> :sswitch_1
        0x519d75f6 -> :sswitch_0
    .end sparse-switch

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Power manager (power) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "  set-adaptive-power-saver-enabled [true|false]"

    .line 26
    .line 27
    const-string v2, "    enables or disables adaptive power saver."

    .line 28
    .line 29
    const-string v3, "  set-mode MODE"

    .line 30
    .line 31
    const-string v4, "    sets the power mode of the device to MODE."

    .line 32
    .line 33
    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "    1 turns low power mode on and 0 turns low power mode off."

    .line 37
    .line 38
    const-string v2, "  set-fixed-performance-mode-enabled [true|false]"

    .line 39
    .line 40
    const-string v3, "    enables or disables fixed performance mode"

    .line 41
    .line 42
    const-string v4, "    note: this will affect system performance and should only be used"

    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "          during development"

    .line 48
    .line 49
    const-string v2, "  suppress-ambient-display <token> [true|false]"

    .line 50
    .line 51
    const-string v3, "    suppresses the current ambient display configuration and disables"

    .line 52
    .line 53
    const-string v4, "    ambient display"

    .line 54
    .line 55
    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "  list-ambient-display-suppression-tokens"

    .line 59
    .line 60
    const-string v2, "    prints the tokens used to suppress ambient display"

    .line 61
    .line 62
    const-string v3, "  set-prox [list|acquire|release] (-d <display_id>)"

    .line 63
    .line 64
    const-string v4, "    Acquires the proximity sensor wakelock. Wakelock is associated with"

    .line 65
    .line 66
    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "    a specific display if specified. \'list\' lists wakelocks previously"

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "    created by set-prox including their held status."

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "  set-face-down-detector [true|false]"

    .line 80
    .line 81
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "    sets whether we use face down detector timeouts or not"

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final runListAmbientDisplaySuppressionTokens()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/power/AmbientDisplaySuppressionController;->getSuppressionTokens(I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    move-object v1, p0

    .line 30
    check-cast v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string/jumbo p0, "none"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v1, ", "

    .line 46
    .line 47
    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v1, "["

    .line 52
    .line 53
    const-string v2, "]"

    .line 54
    .line 55
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final runSetProx()I
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, -0x1

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    sparse-switch v5, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    :goto_0
    move v2, v4

    .line 27
    goto :goto_1

    .line 28
    :sswitch_0
    const-string/jumbo v5, "release"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x2

    .line 39
    goto :goto_1

    .line 40
    :sswitch_1
    const-string v5, "list"

    .line 41
    .line 42
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v2, v0

    .line 50
    goto :goto_1

    .line 51
    :sswitch_2
    const-string v5, "acquire"

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v2, v3

    .line 61
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    const-string p0, "Error: Allowed options are \'list\' \'enable\' and \'disable\'."

    .line 65
    .line 66
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v4

    .line 70
    :pswitch_0
    move v2, v3

    .line 71
    goto :goto_2

    .line 72
    :pswitch_1
    const-string v0, "Wakelocks:"

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mProxWakelocks:Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return v3

    .line 83
    :pswitch_2
    move v2, v0

    .line 84
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string v6, "-d"

    .line 89
    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-gez v6, :cond_3

    .line 105
    .line 106
    const-string p0, "Error: Specified displayId ("

    .line 107
    .line 108
    const-string v0, ") must a non-negative int."

    .line 109
    .line 110
    invoke-static {v1, p0, v5, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return v4

    .line 114
    :cond_3
    move v4, v6

    .line 115
    :cond_4
    add-int/2addr v0, v4

    .line 116
    iget-object v5, p0, Lcom/android/server/power/PowerManagerShellCommand;->mProxWakelocks:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Landroid/os/PowerManager$WakeLock;

    .line 123
    .line 124
    if-nez v5, :cond_5

    .line 125
    .line 126
    iget-object v5, p0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    const-class v6, Landroid/os/PowerManager;

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Landroid/os/PowerManager;

    .line 135
    .line 136
    const-string v6, "PowerManagerShellCommand["

    .line 137
    .line 138
    const-string v7, "]"

    .line 139
    .line 140
    invoke-static {v4, v6, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    const/16 v7, 0x20

    .line 145
    .line 146
    invoke-virtual {v5, v7, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mProxWakelocks:Landroid/util/SparseArray;

    .line 151
    .line 152
    invoke-virtual {p0, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    if-eqz v2, :cond_6

    .line 156
    .line 157
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 162
    .line 163
    .line 164
    :goto_3
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    return v3

    .line 168
    nop

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x45649f2a -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x41012807 -> :sswitch_0
    .end sparse-switch

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
