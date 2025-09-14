.class public final Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInterface:Landroid/app/IUiModeManager;


# direct methods
.method public constructor <init>(Landroid/app/IUiModeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 6
    return-void
.end method

.method public static nightModeToStr(II)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_5

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_3

    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq p0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 15
    const-string/jumbo p0, "custom_schedule"

    .line 18
    return-object p0

    .line 19
    :cond_1
    if-ne p1, v0, :cond_2

    .line 21
    const-string/jumbo p0, "custom_bedtime"

    .line 24
    return-object p0

    .line 25
    :cond_2
    :goto_0
    const-string/jumbo p0, "unknown"

    .line 28
    return-object p0

    .line 29
    :cond_3
    const-string/jumbo p0, "yes"

    .line 32
    return-object p0

    .line 33
    :cond_4
    const-string/jumbo p0, "no"

    .line 36
    return-object p0

    .line 37
    :cond_5
    const-string p0, "auto"

    .line 39
    return-object p0
.end method


# virtual methods
.method public final handleCarMode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    .line 15
    return v2

    .line 16
    :cond_0
    const-string/jumbo v3, "yes"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 27
    const-string v1, ""

    .line 29
    invoke-interface {v0, v2, v2, v1}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    .line 35
    return v2

    .line 36
    :cond_1
    const-string/jumbo v3, "no"

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 47
    invoke-interface {v0, v2}, Landroid/app/IUiModeManager;->disableCarMode(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    .line 53
    return v2

    .line 54
    :cond_2
    const-string p0, "Error: mode must be \'yes\', or \'no\'"

    .line 56
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const/4 p0, -0x1

    .line 60
    return p0
.end method

.method public final handleCustomTime()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x3e8

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 13
    move-result-object v0

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v5, "start "

    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 24
    invoke-interface {v5}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    .line 27
    move-result-wide v5

    .line 28
    sget-object v7, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 30
    mul-long/2addr v5, v1

    .line 31
    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 52
    move-result-object v0

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v5, "end "

    .line 58
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 63
    invoke-interface {p0}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    .line 66
    move-result-wide v5

    .line 67
    mul-long/2addr v5, v1

    .line 68
    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    return v3

    .line 87
    :cond_0
    const-string/jumbo v4, "end"

    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_2

    .line 96
    const-string/jumbo v4, "start"

    .line 99
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 108
    move-result-object p0

    .line 109
    const-string/jumbo v0, "command must be in [start|end]"

    .line 112
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const/4 p0, -0x1

    .line 116
    return p0

    .line 117
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 123
    invoke-static {v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    .line 126
    move-result-object v0

    .line 127
    sget-object v4, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 129
    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    .line 132
    move-result-wide v4

    .line 133
    div-long/2addr v4, v1

    .line 134
    invoke-interface {p0, v4, v5}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V

    .line 137
    return v3

    .line 138
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 144
    invoke-static {v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    .line 147
    move-result-object v0

    .line 148
    sget-object v4, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 150
    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    .line 153
    move-result-wide v4

    .line 154
    div-long/2addr v4, v1

    .line 155
    invoke-interface {p0, v4, v5}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V

    .line 158
    return v3
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    .line 1
    const-string/jumbo v0, "custom_schedule"

    .line 4
    const-string/jumbo v1, "custom_bedtime"

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, -0x1

    .line 12
    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 22
    move-result v7

    .line 23
    const v8, 0x17fd4

    .line 26
    if-eq v7, v8, :cond_3

    .line 28
    const v8, 0x3652cd

    .line 31
    if-eq v7, v8, :cond_2

    .line 33
    const v8, 0x63f6418

    .line 36
    if-eq v7, v8, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo v7, "night"

    .line 42
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_4

    .line 48
    move v7, v5

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto/16 :goto_7

    .line 53
    :cond_2
    const-string/jumbo v7, "time"

    .line 56
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_4

    .line 62
    move v7, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const-string/jumbo v7, "car"

    .line 67
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_4

    .line 73
    move v7, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_0
    move v7, v6

    .line 76
    :goto_1
    if-eqz v7, :cond_7

    .line 78
    if-eq v7, v4, :cond_6

    .line 80
    if-eq v7, v3, :cond_5

    .line 82
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 85
    move-result p0

    .line 86
    return p0

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCustomTime()I

    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCarMode()I

    .line 95
    move-result p0

    .line 96
    return p0

    .line 97
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 104
    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const-string v8, "Night mode: "

    .line 107
    if-nez v7, :cond_8

    .line 109
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 112
    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 115
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightMode()I

    .line 118
    move-result v0

    .line 119
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 121
    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    .line 124
    move-result v1

    .line 125
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    goto/16 :goto_6

    .line 138
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 141
    move-result v9

    .line 142
    sparse-switch v9, :sswitch_data_0

    .line 145
    :goto_2
    move v9, v6

    .line 146
    goto :goto_3

    .line 147
    :sswitch_0
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v9

    .line 151
    if-nez v9, :cond_9

    .line 153
    goto :goto_2

    .line 154
    :cond_9
    const/4 v9, 0x4

    .line 155
    goto :goto_3

    .line 156
    :sswitch_1
    const-string v9, "auto"

    .line 158
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v9

    .line 162
    if-nez v9, :cond_a

    .line 164
    goto :goto_2

    .line 165
    :cond_a
    move v9, v2

    .line 166
    goto :goto_3

    .line 167
    :sswitch_2
    const-string/jumbo v9, "yes"

    .line 170
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result v9

    .line 174
    if-nez v9, :cond_b

    .line 176
    goto :goto_2

    .line 177
    :cond_b
    move v9, v3

    .line 178
    goto :goto_3

    .line 179
    :sswitch_3
    const-string/jumbo v9, "no"

    .line 182
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v9

    .line 186
    if-nez v9, :cond_c

    .line 188
    goto :goto_2

    .line 189
    :cond_c
    move v9, v4

    .line 190
    goto :goto_3

    .line 191
    :sswitch_4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v9

    .line 195
    if-nez v9, :cond_d

    .line 197
    goto :goto_2

    .line 198
    :cond_d
    move v9, v5

    .line 199
    :goto_3
    packed-switch v9, :pswitch_data_0

    .line 202
    move v3, v6

    .line 203
    goto :goto_4

    .line 204
    :pswitch_0
    move v3, v5

    .line 205
    goto :goto_4

    .line 206
    :pswitch_1
    move v3, v4

    .line 207
    goto :goto_4

    .line 208
    :pswitch_2
    move v3, v2

    .line 209
    :goto_4
    :pswitch_3
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_f

    .line 215
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_e

    .line 221
    move v4, v6

    .line 222
    goto :goto_5

    .line 223
    :cond_e
    move v4, v5

    .line 224
    :cond_f
    :goto_5
    if-ltz v3, :cond_11

    .line 226
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 229
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 231
    invoke-interface {p1, v3}, Landroid/app/IUiModeManager;->setNightMode(I)V

    .line 234
    if-ne v3, v2, :cond_10

    .line 236
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 238
    invoke-interface {p1, v4}, Landroid/app/IUiModeManager;->setNightModeCustomType(I)V

    .line 241
    :cond_10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 244
    move-result-object p1

    .line 245
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 247
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightMode()I

    .line 250
    move-result v0

    .line 251
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 253
    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    .line 256
    move-result v1

    .line 257
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    goto :goto_6

    .line 269
    :cond_11
    const-string v0, "Error: mode must be \'yes\', \'no\', or \'auto\', or \'custom_schedule\', or \'custom_bedtime\'"

    .line 271
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 274
    move v5, v6

    .line 275
    :goto_6
    return v5

    .line 276
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 279
    move-result-object p0

    .line 280
    const-string v0, "Remote exception: "

    .line 282
    invoke-static {v0, p1, p0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 285
    return v6

    .line 286
    nop

    .line 287
    :sswitch_data_0
    .sparse-switch
        -0x2d2c2800 -> :sswitch_4
        0xdc1 -> :sswitch_3
        0x1d2e7 -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x9cc87a5 -> :sswitch_0
    .end sparse-switch

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "UiModeManager service (uimode) commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "    Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  night [yes|no|auto|custom_schedule|custom_bedtime]"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "    Set or read night mode."

    .line 27
    const-string v1, "  car [yes|no]"

    .line 29
    const-string v2, "    Set or read car mode."

    .line 31
    const-string v3, "  time [start|end] <ISO time>"

    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "    Set custom start/end schedule time (night mode must be set to custom to apply)."

    .line 38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public final printCurrentCarMode()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 7
    invoke-interface {p0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    .line 10
    move-result p0

    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne p0, v1, :cond_0

    .line 14
    const-string/jumbo p0, "yes"

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "no"

    .line 21
    :goto_0
    const-string v1, "Car mode: "

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    return-void
.end method
