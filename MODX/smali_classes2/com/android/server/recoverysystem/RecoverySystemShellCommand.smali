.class public final Lcom/android/server/recoverysystem/RecoverySystemShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/recoverysystem/RecoverySystemService;


# direct methods
.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 9

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
    const/4 v0, -0x1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    sparse-switch v1, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string/jumbo v1, "reboot-and-apply"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    move v1, v4

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :sswitch_1
    const-string/jumbo v1, "request-lskf"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    move v1, v6

    .line 46
    goto :goto_1

    .line 47
    :sswitch_2
    const-string v1, "is-lskf-captured"

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    move v1, v3

    .line 56
    goto :goto_1

    .line 57
    :sswitch_3
    const-string/jumbo v1, "wipe"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    move v1, v2

    .line 67
    goto :goto_1

    .line 68
    :sswitch_4
    const-string v1, "clear-lskf"

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    move v1, v5

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    move v1, v0

    .line 79
    :goto_1
    const-string v7, "failure"

    .line 80
    .line 81
    const-string/jumbo v8, "success"

    .line 82
    .line 83
    .line 84
    if-eqz v1, :cond_a

    .line 85
    .line 86
    if-eq v1, v5, :cond_8

    .line 87
    .line 88
    if-eq v1, v3, :cond_6

    .line 89
    .line 90
    if-eq v1, v4, :cond_3

    .line 91
    .line 92
    if-eq v1, v2, :cond_2

    .line 93
    .line 94
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    return p0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->wipe()V

    .line 100
    .line 101
    .line 102
    return v6

    .line 103
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 112
    .line 113
    invoke-virtual {v3, v1, v2, v6}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_4

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    move v5, v6

    .line 121
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v5, :cond_5

    .line 126
    .line 127
    move-object v7, v8

    .line 128
    :cond_5
    filled-new-array {v1, v7}, [Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v3, "%s Reboot and apply status: %s\n"

    .line 133
    .line 134
    invoke-virtual {v2, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 135
    .line 136
    .line 137
    return v6

    .line 138
    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 143
    .line 144
    invoke-virtual {v2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->isLskfCaptured(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    const-string/jumbo v2, "true"

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    const-string v2, "false"

    .line 159
    .line 160
    :goto_3
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v2, "%s LSKF capture status: %s\n"

    .line 165
    .line 166
    invoke-virtual {v3, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 167
    .line 168
    .line 169
    return v6

    .line 170
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearLskf(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-eqz v2, :cond_9

    .line 185
    .line 186
    move-object v7, v8

    .line 187
    :cond_9
    filled-new-array {v1, v7}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string v2, "Clear LSKF for packageName: %s, status: %s\n"

    .line 192
    .line 193
    invoke-virtual {v3, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 194
    .line 195
    .line 196
    return v6

    .line 197
    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 202
    .line 203
    const/4 v3, 0x0

    .line 204
    invoke-virtual {v2, v1, v3}, Lcom/android/server/recoverysystem/RecoverySystemService;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    if-eqz v2, :cond_b

    .line 213
    .line 214
    move-object v7, v8

    .line 215
    :cond_b
    filled-new-array {v1, v7}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v2, "Request LSKF for packageName: %s, status: %s\n"

    .line 220
    .line 221
    invoke-virtual {v3, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    .line 223
    .line 224
    return v6

    .line 225
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    const-string v3, "Error while executing command: "

    .line 230
    .line 231
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {v1, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 243
    .line 244
    .line 245
    return v0

    .line 246
    nop

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x2e71d75e -> :sswitch_4
        0x37b047 -> :sswitch_3
        0x485fa2c6 -> :sswitch_2
        0x4aea45a0 -> :sswitch_1
        0x53c163d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Recovery system commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  request-lskf <package_name>"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "  clear-lskf"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  is-lskf-captured <package_name>"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "  reboot-and-apply <package_name> <reason>"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "  wipe <new filesystem type ext4/f2fs>"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final wipe()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, "--wipe_data\n--reformat_data="

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "--wipe_data"

    .line 25
    .line 26
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "Rebooting into recovery with "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "\n"

    .line 34
    .line 35
    const-string v4, " "

    .line 36
    .line 37
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
