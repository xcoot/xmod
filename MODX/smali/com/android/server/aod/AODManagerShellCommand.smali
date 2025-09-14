.class public final Lcom/android/server/aod/AODManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string v0, "Unknown command: "

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 v1, -0x1

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v2

    .line 15
    const v3, 0x1c1d1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eq v2, v3, :cond_2

    .line 22
    const v3, 0x30cf41

    .line 25
    if-eq v2, v3, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string/jumbo v2, "help"

    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_3

    .line 37
    move v2, v5

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_3

    .line 41
    :cond_2
    const-string/jumbo v2, "tsp"

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 50
    move v2, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    :goto_0
    move v2, v1

    .line 53
    :goto_1
    if-eqz v2, :cond_5

    .line 55
    if-eq v2, v5, :cond_4

    .line 57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->onHelp()V

    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerShellCommand;->runTspEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_2
    return v4

    .line 77
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 80
    move-result-object v2

    .line 81
    const-string v3, "Error while executing command: "

    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 97
    return v1
.end method

.method public final onHelp()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v1, "aod service commands:"

    .line 9
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v1, "NOTE: when aod is shown, the command should should be executed, and -user USER_ID is optional argument."

    .line 17
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v1, "  help"

    .line 22
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v1, "    Prints this help text."

    .line 27
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    const-string v1, "  tsp [ACTION_INFO] [-x X_POSITION] [-y Y_POSITION] [-user USER_ID]"

    .line 35
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    const-string v1, "    Send tsp event with the below arguments."

    .line 40
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    const-string v1, "      ACTION_INFO"

    .line 45
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    const-string v1, "          8  : tap to show"

    .line 50
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    const-string v1, "          9  : press"

    .line 55
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v1, "          10 : long press"

    .line 60
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v1, "          11 : double tap"

    .line 65
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v1, "      X_POSITION : x position with integer value"

    .line 70
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v1, "      Y_POSITION : x position with integer value"

    .line 75
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "      USER_ID : user id (optional argument"

    .line 80
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    if-eqz p0, :cond_0

    .line 93
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    goto :goto_0

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 101
    :cond_0
    :goto_0
    throw v0
.end method

.method public final runTspEvent()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    move-result v1

    .line 10
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "Unknown ACTION_INFO: "

    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    throw p0

    .line 42
    :pswitch_0
    move v3, v0

    .line 43
    move v4, v3

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_3

    .line 50
    const-string v6, "-x"

    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    move-result v3

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v6, "-y"

    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    move-result v4

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const-string v2, "-user"

    .line 86
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    move-result v2

    .line 100
    new-instance v5, Landroid/os/UserHandle;

    .line 102
    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 105
    move-object v2, v5

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 110
    move-result-object p0

    .line 111
    const-string v0, "Unknown option: "

    .line 113
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 122
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 125
    throw p0

    .line 126
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 129
    move-result-object v5

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    .line 132
    const-string v7, "aod service commands: runTspEvent : info: "

    .line 134
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    packed-switch v1, :pswitch_data_1

    .line 140
    const-string v7, ""

    .line 142
    goto :goto_1

    .line 143
    :pswitch_1
    const-string/jumbo v7, "double tap(11)"

    .line 146
    goto :goto_1

    .line 147
    :pswitch_2
    const-string/jumbo v7, "long pres(10)"

    .line 150
    goto :goto_1

    .line 151
    :pswitch_3
    const-string/jumbo v7, "press(9)"

    .line 154
    goto :goto_1

    .line 155
    :pswitch_4
    const-string/jumbo v7, "tap to show(8)"

    .line 158
    :goto_1
    const-string v8, " , x: "

    .line 160
    const-string v9, " , y: "

    .line 162
    invoke-static {v3, v7, v8, v9, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 165
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v7, " , userId: "

    .line 170
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v5, Landroid/content/Intent;

    .line 189
    const-string/jumbo v6, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    .line 192
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v6, "info"

    .line 198
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    int-to-float v1, v3

    .line 202
    int-to-float v3, v4

    .line 203
    const/4 v4, 0x2

    .line 204
    new-array v4, v4, [F

    .line 206
    aput v1, v4, v0

    .line 208
    const/4 v0, 0x1

    .line 209
    aput v3, v4, v0

    .line 211
    const-string/jumbo v0, "location"

    .line 214
    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 217
    const/16 v0, 0x20

    .line 219
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    iget-object p0, p0, Lcom/android/server/aod/AODManagerShellCommand;->mContext:Landroid/content/Context;

    .line 224
    const-string/jumbo v0, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    .line 227
    invoke-virtual {p0, v5, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 230
    return-void

    .line 231
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
