.class public final Lcom/android/server/pm/OtaDexoptShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInterface:Lcom/android/server/pm/OtaDexoptService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OtaDexoptService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, -0x1

    .line 14
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x5

    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x4

    .line 21
    const/4 v7, 0x3

    .line 22
    const/4 v8, 0x1

    .line 23
    const/4 v9, 0x0

    .line 24
    sparse-switch v3, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :sswitch_0
    const-string v3, "cleanup"

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    move v3, v8

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :sswitch_1
    const-string/jumbo v3, "step"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    move v3, v7

    .line 51
    goto :goto_1

    .line 52
    :sswitch_2
    const-string/jumbo v3, "next"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    move v3, v6

    .line 62
    goto :goto_1

    .line 63
    :sswitch_3
    const-string v3, "done"

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    move v3, v5

    .line 72
    goto :goto_1

    .line 73
    :sswitch_4
    const-string/jumbo v3, "prepare"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    move v3, v9

    .line 83
    goto :goto_1

    .line 84
    :sswitch_5
    const-string/jumbo v3, "progress"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    move v3, v4

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    move v3, v2

    .line 96
    :goto_1
    if-eqz v3, :cond_8

    .line 97
    .line 98
    if-eq v3, v8, :cond_7

    .line 99
    .line 100
    if-eq v3, v5, :cond_5

    .line 101
    .line 102
    if-eq v3, v7, :cond_4

    .line 103
    .line 104
    if-eq v3, v6, :cond_3

    .line 105
    .line 106
    if-eq v3, v4, :cond_2

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/android/server/pm/OtaDexoptService;->getProgress()F

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 124
    .line 125
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v3, "%.2f"

    .line 134
    .line 135
    invoke-virtual {p0, v0, v3, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 136
    .line 137
    .line 138
    return v9

    .line 139
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->nextDexoptCommand()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v9

    .line 153
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->dexoptNextPackage()V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->isDone()Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_6

    .line 170
    .line 171
    const-string p0, "OTA complete."

    .line 172
    .line 173
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    const-string p0, "OTA incomplete."

    .line 178
    .line 179
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    return v9

    .line 183
    :cond_7
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->cleanup()V

    .line 186
    .line 187
    .line 188
    return v9

    .line 189
    :cond_8
    iget-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/android/server/pm/OtaDexoptService;->prepare()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    const-string p1, "Success"

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    return v9

    .line 204
    :goto_3
    const-string p1, "Remote exception: "

    .line 205
    .line 206
    invoke-static {p1, p0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 207
    .line 208
    .line 209
    return v2

    .line 210
    nop

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x3bab3dd3 -> :sswitch_5
        -0x12f9f2f9 -> :sswitch_4
        0x2f2382 -> :sswitch_3
        0x338af3 -> :sswitch_2
        0x3606cc -> :sswitch_1
        0x331156a4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "OTA Dexopt (ota) commands:"

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
    const-string v0, "  prepare"

    .line 26
    .line 27
    const-string v1, "    Prepare an OTA dexopt pass, collecting all packages."

    .line 28
    .line 29
    const-string v2, "  done"

    .line 30
    .line 31
    const-string v3, "    Replies whether the OTA is complete or not."

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "  step"

    .line 37
    .line 38
    const-string v1, "    OTA dexopt the next package."

    .line 39
    .line 40
    const-string v2, "  next"

    .line 41
    .line 42
    const-string v3, "    Get parameters for OTA dexopt of the next package."

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "  cleanup"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "    Clean up internal states. Ends an OTA session."

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
