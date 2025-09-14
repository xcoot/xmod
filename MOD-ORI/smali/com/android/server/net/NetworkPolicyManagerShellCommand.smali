.class public final Lcom/android/server/net/NetworkPolicyManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5
    .line 6
    const-string/jumbo p2, "wifi"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getUidFromNextArg()I
    .locals 3

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
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "Error: didn\'t specify UID"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, -0x1

    .line 17
    return p0

    .line 18
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    const-string v1, "Error: UID ("

    .line 24
    .line 25
    const-string v2, ") should be a number"

    .line 26
    .line 27
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, -0x2

    .line 31
    return p0
.end method

.method public final listUidList(Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, ": "

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    array-length p1, p2

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string/jumbo p1, "none"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    array-length v0, p2

    .line 25
    if-ge p1, v0, :cond_1

    .line 26
    .line 27
    aget v0, p2, p1

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 4

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
    const/4 v3, 0x0

    .line 18
    sparse-switch v2, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string/jumbo v2, "stop-watching"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :sswitch_1
    const-string/jumbo v2, "list"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    goto :goto_1

    .line 47
    :sswitch_2
    const-string/jumbo v2, "set"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    goto :goto_1

    .line 58
    :sswitch_3
    const-string/jumbo v2, "get"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    move v2, v3

    .line 68
    goto :goto_1

    .line 69
    :sswitch_4
    const-string v2, "add"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    const/4 v2, 0x3

    .line 78
    goto :goto_1

    .line 79
    :sswitch_5
    const-string/jumbo v2, "remove"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    const/4 v2, 0x4

    .line 89
    goto :goto_1

    .line 90
    :sswitch_6
    const-string/jumbo v2, "start-watching"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    const/4 v2, 0x5

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    :goto_0
    move v2, v1

    .line 102
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    return p0

    .line 110
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 113
    .line 114
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 115
    .line 116
    return v3

    .line 117
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-gez p1, :cond_2

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const-string v2, "Invalid UID: "

    .line 132
    .line 133
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 143
    .line 144
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 145
    .line 146
    move v1, v3

    .line 147
    :goto_2
    return v1

    .line 148
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runRemove()I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    return p0

    .line 153
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runAdd()I

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    return p0

    .line 158
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runList()I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    return p0

    .line 163
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runSet()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    return p0

    .line 168
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runGet()I

    .line 169
    .line 170
    .line 171
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return p0

    .line 173
    :goto_3
    const-string p1, "Remote exception: "

    .line 174
    .line 175
    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 176
    .line 177
    .line 178
    return v1

    .line 179
    :sswitch_data_0
    .sparse-switch
        -0x5c0b0642 -> :sswitch_6
        -0x37b5077c -> :sswitch_5
        0x178a1 -> :sswitch_4
        0x18f56 -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x412bca1e -> :sswitch_0
    .end sparse-switch

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
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
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const-string v1, "Network policy manager (netpolicy) commands:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "  help"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "    Print this help text."

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const-string v1, "  add restrict-background-whitelist UID"

    .line 37
    .line 38
    const-string v2, "    Adds a UID to the whitelist for restrict background usage."

    .line 39
    .line 40
    const-string v3, "  add restrict-background-blacklist UID"

    .line 41
    .line 42
    const-string v4, "    Adds a UID to the blacklist for restrict background usage."

    .line 43
    .line 44
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    const-string v1, "  add app-idle-whitelist UID"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "    Adds a UID to the temporary app idle whitelist."

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-nez p0, :cond_1

    .line 58
    .line 59
    const-string v1, "  get restrict-background"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "    Gets the global restrict background usage status."

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    const-string v1, "  list wifi-networks [true|false]"

    .line 70
    .line 71
    const-string v2, "    Lists all saved wifi networks and whether they are metered or not."

    .line 72
    .line 73
    const-string v3, "    If a boolean argument is passed, filters just the metered (or unmetered)"

    .line 74
    .line 75
    const-string v4, "    networks."

    .line 76
    .line 77
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    if-nez p0, :cond_2

    .line 81
    .line 82
    const-string v1, "  list restrict-background-whitelist"

    .line 83
    .line 84
    const-string v2, "    Lists UIDs that are whitelisted for restrict background usage."

    .line 85
    .line 86
    const-string v3, "  list restrict-background-blacklist"

    .line 87
    .line 88
    const-string v4, "    Lists UIDs that are blacklisted for restrict background usage."

    .line 89
    .line 90
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "  remove restrict-background-whitelist UID"

    .line 94
    .line 95
    const-string v2, "    Removes a UID from the whitelist for restrict background usage."

    .line 96
    .line 97
    const-string v3, "  remove restrict-background-blacklist UID"

    .line 98
    .line 99
    const-string v4, "    Removes a UID from the blacklist for restrict background usage."

    .line 100
    .line 101
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    const-string v1, "  remove app-idle-whitelist UID"

    .line 105
    .line 106
    const-string v2, "    Removes a UID from the temporary app idle whitelist."

    .line 107
    .line 108
    const-string v3, "  set metered-network ID [undefined|true|false]"

    .line 109
    .line 110
    const-string v4, "    Toggles whether the given wi-fi network is metered."

    .line 111
    .line 112
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    if-nez p0, :cond_3

    .line 116
    .line 117
    const-string p0, "  set restrict-background BOOLEAN"

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p0, "    Sets the global restrict background usage status."

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    const-string p0, "  set sub-plan-owner subId [packageName]"

    .line 128
    .line 129
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string p0, "    Sets the data plan owner package for subId."

    .line 133
    .line 134
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final resetUidPolicy(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eq v1, p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "Error: UID "

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 26
    .line 27
    .line 28
    const/16 p1, 0x20

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, -0x1

    .line 37
    return p0

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 42
    .line 43
    .line 44
    return p1
.end method

.method public final runAdd()I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, -0x1

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    const-string p0, "Error: didn\'t specify type of data to add"

    .line 15
    .line 16
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    sparse-switch v5, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    :goto_0
    move v5, v4

    .line 28
    goto :goto_1

    .line 29
    :sswitch_0
    const-string/jumbo v5, "restrict-background-whitelist"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v5, 0x2

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    const-string/jumbo v5, "restrict-background-blacklist"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v5, v0

    .line 52
    goto :goto_1

    .line 53
    :sswitch_2
    const-string v5, "app-idle-whitelist"

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v5, v1

    .line 63
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    const-string p0, "Error: unknown add type \'"

    .line 67
    .line 68
    const-string v0, "\'"

    .line 69
    .line 70
    invoke-static {v2, p0, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v4

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-gez v0, :cond_5

    .line 91
    .line 92
    move v1, v0

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 95
    .line 96
    const/4 v2, 0x4

    .line 97
    invoke-virtual {p0, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 98
    .line 99
    .line 100
    :goto_2
    return v1

    .line 101
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-gez v2, :cond_7

    .line 118
    .line 119
    move v1, v2

    .line 120
    goto :goto_3

    .line 121
    :cond_7
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 122
    .line 123
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 124
    .line 125
    .line 126
    :goto_3
    return v1

    .line 127
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-gez v2, :cond_8

    .line 132
    .line 133
    move v1, v2

    .line 134
    goto :goto_4

    .line 135
    :cond_8
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 136
    .line 137
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    .line 138
    .line 139
    .line 140
    :goto_4
    return v1

    .line 141
    :sswitch_data_0
    .sparse-switch
        -0x645dc946 -> :sswitch_2
        -0x27d90651 -> :sswitch_1
        0x261f10d9 -> :sswitch_0
    .end sparse-switch

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runGet()I
    .locals 7

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
    const/4 v2, -0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "Error: didn\'t specify type of data to get"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    const-string/jumbo v4, "disabled"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v5, "enabled"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v6, "restrict-background"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_3

    .line 33
    .line 34
    const-string/jumbo v6, "restricted-mode"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_1

    .line 42
    .line 43
    const-string p0, "Error: unknown get type \'"

    .line 44
    .line 45
    const-string v3, "\'"

    .line 46
    .line 47
    invoke-static {v0, p0, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "Restricted mode status: "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedModeEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    move-object v4, v5

    .line 69
    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v3

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v1, "Restrict background status: "

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackground()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_5

    .line 101
    .line 102
    move-object v4, v5

    .line 103
    :cond_5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return v3
.end method

.method public final runList()I
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v5, -0x1

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const-string p0, "Error: didn\'t specify type of data to list"

    .line 16
    .line 17
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v5

    .line 21
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    sparse-switch v6, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    :goto_0
    move v6, v5

    .line 29
    goto :goto_1

    .line 30
    :sswitch_0
    const-string/jumbo v6, "restrict-background-whitelist"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v6, 0x3

    .line 41
    goto :goto_1

    .line 42
    :sswitch_1
    const-string/jumbo v6, "wifi-networks"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v6, v0

    .line 53
    goto :goto_1

    .line 54
    :sswitch_2
    const-string/jumbo v6, "restrict-background-blacklist"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move v6, v2

    .line 65
    goto :goto_1

    .line 66
    :sswitch_3
    const-string v6, "app-idle-whitelist"

    .line 67
    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    move v6, v1

    .line 76
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    const-string p0, "Error: unknown list type \'"

    .line 80
    .line 81
    const-string v0, "\'"

    .line 82
    .line 83
    invoke-static {v3, p0, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v5

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 100
    .line 101
    const/4 v2, 0x4

    .line 102
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v2, "Restrict background whitelisted UIDs"

    .line 107
    .line 108
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)V

    .line 109
    .line 110
    .line 111
    :goto_2
    return v1

    .line 112
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-nez v4, :cond_6

    .line 121
    .line 122
    move v5, v1

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_7

    .line 129
    .line 130
    move v5, v2

    .line 131
    goto :goto_3

    .line 132
    :cond_7
    move v5, v0

    .line 133
    :goto_3
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_c

    .line 148
    .line 149
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 154
    .line 155
    if-eqz v4, :cond_9

    .line 156
    .line 157
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 158
    .line 159
    if-ne v7, v5, :cond_8

    .line 160
    .line 161
    :cond_9
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/16 v7, 0x3b

    .line 169
    .line 170
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 171
    .line 172
    .line 173
    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 174
    .line 175
    if-eq v6, v2, :cond_b

    .line 176
    .line 177
    if-eq v6, v0, :cond_a

    .line 178
    .line 179
    const-string/jumbo v6, "none"

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_a
    const-string/jumbo v6, "false"

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_b
    const-string/jumbo v6, "true"

    .line 188
    .line 189
    .line 190
    :goto_5
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_c
    return v1

    .line 195
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_d

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_d
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const-string v2, "Restrict background blacklisted UIDs"

    .line 214
    .line 215
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)V

    .line 216
    .line 217
    .line 218
    :goto_6
    return v1

    .line 219
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppIdleWhitelist()[I

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const-string v2, "App Idle whitelisted UIDs"

    .line 229
    .line 230
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)V

    .line 231
    .line 232
    .line 233
    return v1

    .line 234
    nop

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x645dc946 -> :sswitch_3
        -0x27d90651 -> :sswitch_2
        -0x15ab1843 -> :sswitch_1
        0x261f10d9 -> :sswitch_0
    .end sparse-switch

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runRemove()I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, -0x1

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    const-string p0, "Error: didn\'t specify type of data to remove"

    .line 15
    .line 16
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    sparse-switch v5, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    :goto_0
    move v5, v4

    .line 28
    goto :goto_1

    .line 29
    :sswitch_0
    const-string/jumbo v5, "restrict-background-whitelist"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v5, 0x2

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    const-string/jumbo v5, "restrict-background-blacklist"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v5, v0

    .line 52
    goto :goto_1

    .line 53
    :sswitch_2
    const-string v5, "app-idle-whitelist"

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v5, v1

    .line 63
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    const-string p0, "Error: unknown remove type \'"

    .line 67
    .line 68
    const-string v0, "\'"

    .line 69
    .line 70
    invoke-static {v2, p0, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v4

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const-string/jumbo v0, "not whitelisted"

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x4

    .line 90
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(ILjava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :goto_2
    return v1

    .line 95
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    const-string/jumbo v1, "not blacklisted"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(ILjava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    :goto_3
    return v1

    .line 115
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-gez v0, :cond_6

    .line 120
    .line 121
    move v1, v0

    .line 122
    goto :goto_4

    .line 123
    :cond_6
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 124
    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    .line 126
    .line 127
    .line 128
    :goto_4
    return v1

    .line 129
    :sswitch_data_0
    .sparse-switch
        -0x645dc946 -> :sswitch_2
        -0x27d90651 -> :sswitch_1
        0x261f10d9 -> :sswitch_0
    .end sparse-switch

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runSet()I
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v5, -0x1

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const-string p0, "Error: didn\'t specify type of data to set"

    .line 16
    .line 17
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v5

    .line 21
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    sparse-switch v6, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    :goto_0
    move v6, v5

    .line 29
    goto :goto_1

    .line 30
    :sswitch_0
    const-string/jumbo v6, "sub-plan-owner"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v6, v0

    .line 41
    goto :goto_1

    .line 42
    :sswitch_1
    const-string/jumbo v6, "restrict-background"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v6, v2

    .line 53
    goto :goto_1

    .line 54
    :sswitch_2
    const-string/jumbo v6, "metered-network"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move v6, v1

    .line 65
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    const-string p0, "Error: unknown set type \'"

    .line 69
    .line 70
    const-string v0, "\'"

    .line 71
    .line 72
    invoke-static {v3, p0, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return v5

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    const-string v3, "android.permission.NETWORK_SETTINGS"

    .line 93
    .line 94
    const-string v4, "NetworkPolicy"

    .line 95
    .line 96
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string/jumbo v3, "persist.sys.sub_plan_owner."

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return v1

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-nez v3, :cond_5

    .line 139
    .line 140
    const-string v3, "Error: didn\'t specify BOOLEAN"

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    :goto_2
    if-gez v5, :cond_6

    .line 155
    .line 156
    move v1, v5

    .line 157
    goto :goto_4

    .line 158
    :cond_6
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 159
    .line 160
    if-lez v5, :cond_7

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_7
    move v2, v1

    .line 164
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 165
    .line 166
    .line 167
    :goto_4
    return v1

    .line 168
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-nez v4, :cond_8

    .line 177
    .line 178
    const-string p0, "Error: didn\'t specify networkId"

    .line 179
    .line 180
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    if-nez v6, :cond_9

    .line 189
    .line 190
    const-string p0, "Error: didn\'t specify meteredOverride"

    .line 191
    .line 192
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_9
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 197
    .line 198
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    const-string/jumbo v4, "true"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_a

    .line 210
    .line 211
    const-string/jumbo v2, "false"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_b

    .line 219
    .line 220
    move v0, v1

    .line 221
    goto :goto_5

    .line 222
    :cond_a
    move v0, v2

    .line 223
    :cond_b
    :goto_5
    invoke-virtual {p0, v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    :goto_6
    return v5

    .line 227
    :sswitch_data_0
    .sparse-switch
        -0x3a9b30b7 -> :sswitch_2
        -0x2c87c721 -> :sswitch_1
        0x6e1614bc -> :sswitch_0
    .end sparse-switch

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
