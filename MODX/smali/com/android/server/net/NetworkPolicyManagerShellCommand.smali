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

    .line 4
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 6
    const-string/jumbo p2, "wifi"

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 15
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 17
    return-void
.end method


# virtual methods
.method public final getUidFromNextArg()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    const-string p0, "Error: didn\'t specify UID"

    .line 13
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    const/4 p0, -0x1

    .line 17
    return p0

    .line 18
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    const-string v1, "Error: UID ("

    .line 25
    const-string v2, ") should be a number"

    .line 27
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 p0, -0x2

    .line 31
    return p0
.end method

.method public final listUidList(Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    const-string p1, ": "

    .line 10
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    array-length p1, p2

    .line 14
    if-nez p1, :cond_0

    .line 16
    const-string/jumbo p1, "none"

    .line 19
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 27
    aget v0, p2, p1

    .line 29
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 32
    const/16 v0, 0x20

    .line 34
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 37
    add-int/lit8 p1, p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 43
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    sparse-switch v2, :sswitch_data_0

    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string/jumbo v2, "stop-watching"

    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 31
    const/4 v2, 0x6

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto/16 :goto_3

    .line 36
    :sswitch_1
    const-string/jumbo v2, "list"

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 45
    const/4 v2, 0x2

    .line 46
    goto :goto_1

    .line 47
    :sswitch_2
    const-string/jumbo v2, "set"

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 56
    const/4 v2, 0x1

    .line 57
    goto :goto_1

    .line 58
    :sswitch_3
    const-string/jumbo v2, "get"

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 67
    move v2, v3

    .line 68
    goto :goto_1

    .line 69
    :sswitch_4
    const-string v2, "add"

    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 77
    const/4 v2, 0x3

    .line 78
    goto :goto_1

    .line 79
    :sswitch_5
    const-string/jumbo v2, "remove"

    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 88
    const/4 v2, 0x4

    .line 89
    goto :goto_1

    .line 90
    :sswitch_6
    const-string/jumbo v2, "start-watching"

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_1

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

    .line 105
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 108
    move-result p0

    .line 109
    return p0

    .line 110
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 112
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 114
    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 116
    return v3

    .line 117
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 124
    move-result p1

    .line 125
    if-gez p1, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 130
    move-result-object p0

    .line 131
    const-string v2, "Invalid UID: "

    .line 133
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 142
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 144
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    .line 146
    move v1, v3

    .line 147
    :goto_2
    return v1

    .line 148
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runRemove()I

    .line 151
    move-result p0

    .line 152
    return p0

    .line 153
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runAdd()I

    .line 156
    move-result p0

    .line 157
    return p0

    .line 158
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runList()I

    .line 161
    move-result p0

    .line 162
    return p0

    .line 163
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runSet()I

    .line 166
    move-result p0

    .line 167
    return p0

    .line 168
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runGet()I

    .line 171
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return p0

    .line 173
    :goto_3
    const-string p1, "Remote exception: "

    .line 175
    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

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

    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 13
    move-result p0

    .line 14
    const-string v1, "Network policy manager (netpolicy) commands:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    const-string v1, "  help"

    .line 21
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    const-string v1, "    Print this help text."

    .line 26
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    const-string v1, ""

    .line 31
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    if-nez p0, :cond_0

    .line 36
    const-string v1, "  add restrict-background-whitelist UID"

    .line 38
    const-string v2, "    Adds a UID to the whitelist for restrict background usage."

    .line 40
    const-string v3, "  add restrict-background-blacklist UID"

    .line 42
    const-string v4, "    Adds a UID to the blacklist for restrict background usage."

    .line 44
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    const-string v1, "  add app-idle-whitelist UID"

    .line 49
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    const-string v1, "    Adds a UID to the temporary app idle whitelist."

    .line 54
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    if-nez p0, :cond_1

    .line 59
    const-string v1, "  get restrict-background"

    .line 61
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v1, "    Gets the global restrict background usage status."

    .line 66
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    :cond_1
    const-string v1, "  list wifi-networks [true|false]"

    .line 71
    const-string v2, "    Lists all saved wifi networks and whether they are metered or not."

    .line 73
    const-string v3, "    If a boolean argument is passed, filters just the metered (or unmetered)"

    .line 75
    const-string v4, "    networks."

    .line 77
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-nez p0, :cond_2

    .line 82
    const-string v1, "  list restrict-background-whitelist"

    .line 84
    const-string v2, "    Lists UIDs that are whitelisted for restrict background usage."

    .line 86
    const-string v3, "  list restrict-background-blacklist"

    .line 88
    const-string v4, "    Lists UIDs that are blacklisted for restrict background usage."

    .line 90
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "  remove restrict-background-whitelist UID"

    .line 95
    const-string v2, "    Removes a UID from the whitelist for restrict background usage."

    .line 97
    const-string v3, "  remove restrict-background-blacklist UID"

    .line 99
    const-string v4, "    Removes a UID from the blacklist for restrict background usage."

    .line 101
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    const-string v1, "  remove app-idle-whitelist UID"

    .line 106
    const-string v2, "    Removes a UID from the temporary app idle whitelist."

    .line 108
    const-string v3, "  set metered-network ID [undefined|true|false]"

    .line 110
    const-string v4, "    Toggles whether the given wi-fi network is metered."

    .line 112
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-nez p0, :cond_3

    .line 117
    const-string p0, "  set restrict-background BOOLEAN"

    .line 119
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string p0, "    Sets the global restrict background usage status."

    .line 124
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    :cond_3
    const-string p0, "  set sub-plan-owner subId [packageName]"

    .line 129
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string p0, "    Sets the data plan owner package for subId."

    .line 134
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public final resetUidPolicy(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 10
    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    .line 13
    move-result v1

    .line 14
    if-eq v1, p1, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 19
    move-result-object p0

    .line 20
    const-string p1, "Error: UID "

    .line 22
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 28
    const/16 p1, 0x20

    .line 30
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 33
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    const/4 p0, -0x1

    .line 37
    return p0

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

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

    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    const/4 v4, -0x1

    .line 12
    if-nez v3, :cond_0

    .line 14
    const-string p0, "Error: didn\'t specify type of data to add"

    .line 16
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    return v4

    .line 20
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v5

    .line 24
    sparse-switch v5, :sswitch_data_0

    .line 27
    :goto_0
    move v5, v4

    .line 28
    goto :goto_1

    .line 29
    :sswitch_0
    const-string/jumbo v5, "restrict-background-whitelist"

    .line 32
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

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

    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_2

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

    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_3

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v5, v1

    .line 63
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 66
    const-string p0, "Error: unknown add type \'"

    .line 68
    const-string v0, "\'"

    .line 70
    invoke-static {v2, p0, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v4

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 89
    move-result v0

    .line 90
    if-gez v0, :cond_5

    .line 92
    move v1, v0

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 96
    const/4 v2, 0x4

    .line 97
    invoke-virtual {p0, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 100
    :goto_2
    return v1

    .line 101
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_6

    .line 112
    goto :goto_3

    .line 113
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 116
    move-result v2

    .line 117
    if-gez v2, :cond_7

    .line 119
    move v1, v2

    .line 120
    goto :goto_3

    .line 121
    :cond_7
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 123
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 126
    :goto_3
    return v1

    .line 127
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 130
    move-result v2

    .line 131
    if-gez v2, :cond_8

    .line 133
    move v1, v2

    .line 134
    goto :goto_4

    .line 135
    :cond_8
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 137
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

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

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-nez v1, :cond_0

    .line 12
    const-string p0, "Error: didn\'t specify type of data to get"

    .line 14
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    return v2

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    const-string/jumbo v4, "disabled"

    .line 22
    const-string/jumbo v5, "enabled"

    .line 25
    const-string/jumbo v6, "restrict-background"

    .line 28
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_3

    .line 34
    const-string/jumbo v6, "restricted-mode"

    .line 37
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_1

    .line 43
    const-string p0, "Error: unknown get type \'"

    .line 45
    const-string v3, "\'"

    .line 47
    invoke-static {v0, p0, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return v2

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 54
    move-result-object v0

    .line 55
    const-string v1, "Restricted mode status: "

    .line 57
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedModeEnabled()Z

    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_2

    .line 68
    move-object v4, v5

    .line 69
    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    return v3

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 88
    move-result-object v0

    .line 89
    const-string v1, "Restrict background status: "

    .line 91
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 96
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackground()Z

    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_5

    .line 102
    move-object v4, v5

    .line 103
    :cond_5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 11
    move-result-object v4

    .line 12
    const/4 v5, -0x1

    .line 13
    if-nez v4, :cond_0

    .line 15
    const-string p0, "Error: didn\'t specify type of data to list"

    .line 17
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    return v5

    .line 21
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v6

    .line 25
    sparse-switch v6, :sswitch_data_0

    .line 28
    :goto_0
    move v6, v5

    .line 29
    goto :goto_1

    .line 30
    :sswitch_0
    const-string/jumbo v6, "restrict-background-whitelist"

    .line 33
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_1

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

    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_2

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

    .line 57
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_3

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

    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_4

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    move v6, v1

    .line 76
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 79
    const-string p0, "Error: unknown list type \'"

    .line 81
    const-string v0, "\'"

    .line 83
    invoke-static {v3, p0, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return v5

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 101
    const/4 v2, 0x4

    .line 102
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    .line 105
    move-result-object v0

    .line 106
    const-string v2, "Restrict background whitelisted UIDs"

    .line 108
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)V

    .line 111
    :goto_2
    return v1

    .line 112
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 119
    move-result-object v4

    .line 120
    if-nez v4, :cond_6

    .line 122
    move v5, v1

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_7

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

    .line 135
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 138
    move-result-object p0

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    move-result-object p0

    .line 143
    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_c

    .line 149
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    move-result-object v6

    .line 153
    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 155
    if-eqz v4, :cond_9

    .line 157
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 159
    if-ne v7, v5, :cond_8

    .line 161
    :cond_9
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    const/16 v7, 0x3b

    .line 170
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 173
    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 175
    if-eq v6, v2, :cond_b

    .line 177
    if-eq v6, v0, :cond_a

    .line 179
    const-string/jumbo v6, "none"

    .line 182
    goto :goto_5

    .line 183
    :cond_a
    const-string/jumbo v6, "false"

    .line 186
    goto :goto_5

    .line 187
    :cond_b
    const-string/jumbo v6, "true"

    .line 190
    :goto_5
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    goto :goto_4

    .line 194
    :cond_c
    return v1

    .line 195
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_d

    .line 206
    goto :goto_6

    .line 207
    :cond_d
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 209
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    .line 212
    move-result-object v0

    .line 213
    const-string v2, "Restrict background blacklisted UIDs"

    .line 215
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)V

    .line 218
    :goto_6
    return v1

    .line 219
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 222
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 224
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppIdleWhitelist()[I

    .line 227
    move-result-object v0

    .line 228
    const-string v2, "App Idle whitelisted UIDs"

    .line 230
    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)V

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

    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    const/4 v4, -0x1

    .line 12
    if-nez v3, :cond_0

    .line 14
    const-string p0, "Error: didn\'t specify type of data to remove"

    .line 16
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    return v4

    .line 20
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v5

    .line 24
    sparse-switch v5, :sswitch_data_0

    .line 27
    :goto_0
    move v5, v4

    .line 28
    goto :goto_1

    .line 29
    :sswitch_0
    const-string/jumbo v5, "restrict-background-whitelist"

    .line 32
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

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

    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_2

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

    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_3

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v5, v1

    .line 63
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 66
    const-string p0, "Error: unknown remove type \'"

    .line 68
    const-string v0, "\'"

    .line 70
    invoke-static {v2, p0, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v4

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const-string/jumbo v0, "not whitelisted"

    .line 89
    const/4 v1, 0x4

    .line 90
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(ILjava/lang/String;)I

    .line 93
    move-result v1

    .line 94
    :goto_2
    return v1

    .line 95
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_5

    .line 106
    goto :goto_3

    .line 107
    :cond_5
    const-string/jumbo v1, "not blacklisted"

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(ILjava/lang/String;)I

    .line 113
    move-result v1

    .line 114
    :goto_3
    return v1

    .line 115
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    .line 118
    move-result v0

    .line 119
    if-gez v0, :cond_6

    .line 121
    move v1, v0

    .line 122
    goto :goto_4

    .line 123
    :cond_6
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

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

    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 11
    move-result-object v4

    .line 12
    const/4 v5, -0x1

    .line 13
    if-nez v4, :cond_0

    .line 15
    const-string p0, "Error: didn\'t specify type of data to set"

    .line 17
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    return v5

    .line 21
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v6

    .line 25
    sparse-switch v6, :sswitch_data_0

    .line 28
    :goto_0
    move v6, v5

    .line 29
    goto :goto_1

    .line 30
    :sswitch_0
    const-string/jumbo v6, "sub-plan-owner"

    .line 33
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_1

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

    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_2

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

    .line 57
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_3

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move v6, v1

    .line 65
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 68
    const-string p0, "Error: unknown set type \'"

    .line 70
    const-string v0, "\'"

    .line 72
    invoke-static {v3, p0, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return v5

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 90
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 92
    const-string v3, "android.permission.NETWORK_SETTINGS"

    .line 94
    const-string v4, "NetworkPolicy"

    .line 96
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v3, "persist.sys.sub_plan_owner."

    .line 104
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return v1

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 129
    goto :goto_4

    .line 130
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 137
    move-result-object v3

    .line 138
    if-nez v3, :cond_5

    .line 140
    const-string v3, "Error: didn\'t specify BOOLEAN"

    .line 142
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    move-result v5

    .line 154
    :goto_2
    if-gez v5, :cond_6

    .line 156
    move v1, v5

    .line 157
    goto :goto_4

    .line 158
    :cond_6
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 160
    if-lez v5, :cond_7

    .line 162
    goto :goto_3

    .line 163
    :cond_7
    move v2, v1

    .line 164
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 167
    :goto_4
    return v1

    .line 168
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    if-nez v4, :cond_8

    .line 178
    const-string p0, "Error: didn\'t specify networkId"

    .line 180
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    goto :goto_6

    .line 184
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 187
    move-result-object v6

    .line 188
    if-nez v6, :cond_9

    .line 190
    const-string p0, "Error: didn\'t specify meteredOverride"

    .line 192
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    goto :goto_6

    .line 196
    :cond_9
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 198
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v3

    .line 202
    const-string/jumbo v4, "true"

    .line 205
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_a

    .line 211
    const-string/jumbo v2, "false"

    .line 214
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_b

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

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
