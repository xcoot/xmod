.class public final Lcom/android/server/connectivity/VpnRules;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mNetdService:Landroid/net/INetd;

.field public mOemNetd:Lcom/android/internal/net/IOemNetd;


# virtual methods
.method public final addVpnRuleForTethering(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "*nat\n-I tetherctrl_nat_POSTROUTING -s "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " -j RETURN\nCOMMIT\n"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method public final bindNetdNativeService()Z
    .locals 3

    .line 1
    const-string v0, "VpnRules"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string/jumbo v2, "netd"

    .line 7
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 14
    move-result-object v2

    .line 15
    iput-object v2, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    .line 17
    if-nez v2, :cond_0

    .line 19
    const-string p0, "Failed to bind netd: null"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return v1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v2}, Landroid/net/INetd;->isAlive()Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 33
    const-string p0, "Failed to bind netd: not alive"

    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return v1

    .line 39
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    .line 41
    invoke-interface {v2}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 48
    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    if-nez v2, :cond_2

    .line 53
    const-string p0, "Failed to get OemNetd listener: null"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v1

    .line 59
    :cond_2
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :catch_1
    move-exception p0

    .line 62
    const-string v2, "Failed to get OemNetd listener: err = "

    .line 64
    invoke-static {p0, v2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v1

    .line 68
    :goto_0
    const-string v2, "Failed to bind netd: err = "

    .line 70
    invoke-static {p0, v2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v1
.end method

.method public final deleteTetheringRule(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "*nat\n-D tetherctrl_nat_POSTROUTING -s "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " -j RETURN\nCOMMIT\n"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method public final deleteVpnPostroutingChain()V
    .locals 2

    .line 1
    const-string v0, "VpnRules"

    .line 3
    const-string/jumbo v1, "deleteVpnPostroutingChain"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-string v0, "*mangle\n-D POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 15
    const-string v0, "*mangle\n-F vpn_POSTROUTING\nCOMMIT\n"

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 20
    const-string v0, "*mangle\n-X vpn_POSTROUTING\nCOMMIT\n"

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 25
    return-void
.end method

.method public final declared-synchronized runShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 9
    if-nez v0, :cond_1

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto/16 :goto_5

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 21
    const-string p1, "VpnRules"

    .line 23
    const-string/jumbo v0, "runShellCmd: Failed to bind netd"

    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return-object v1

    .line 31
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    move-result v3

    .line 41
    if-ge v2, v3, :cond_2

    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 46
    move-result v3

    .line 47
    const-string v4, "TCPMONITOR"

    .line 49
    rem-int/lit8 v5, v2, 0xa

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 54
    move-result v4

    .line 55
    xor-int/2addr v3, v4

    .line 56
    int-to-char v3, v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto/16 :goto_3

    .line 66
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    const-string v2, "VpnRules"

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string/jumbo v4, "runShellCmd: cmd = {"

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v4, "} param.len="

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 95
    move-result v4

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 108
    invoke-interface {v2, p1, v0}, Lcom/android/internal/net/IOemNetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_4

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, " - "

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 140
    move-result v0

    .line 141
    add-int/lit8 v0, v0, 0x3

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    const-string v0, "VpnRules"

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string/jumbo v3, "runCmd: ret = {"

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_3

    .line 166
    const-string v3, "OK"

    .line 168
    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 172
    move-result v3

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v3

    .line 177
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    const-string/jumbo v3, "}"

    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    monitor-exit p0

    .line 194
    return-object p1

    .line 195
    :cond_4
    :try_start_2
    const-string v0, "VpnRules"

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    const-string/jumbo v3, "runShellCmd: ret = {"

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string/jumbo p1, "}"

    .line 214
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object p1

    .line 221
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    goto :goto_4

    .line 225
    :goto_3
    :try_start_3
    const-string v0, "VpnRules"

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const-string/jumbo v3, "runShellCmd: err = "

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object p1

    .line 245
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    :goto_4
    monitor-exit p0

    .line 249
    return-object v1

    .line 250
    :goto_5
    monitor-exit p0

    .line 251
    throw p1
.end method

.method public final declared-synchronized runVpnRulesCommand(ILjava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 8
    if-nez v0, :cond_1

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto/16 :goto_4

    .line 14
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 20
    const-string p1, "VpnRules"

    .line 22
    const-string/jumbo p2, "runCmd: Failed to bind netd"

    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 39
    move-result v2

    .line 40
    if-ge v1, v2, :cond_2

    .line 42
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 45
    move-result v2

    .line 46
    const-string v3, "VPN_RULES"

    .line 48
    rem-int/lit8 v4, v1, 0x9

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 53
    move-result v3

    .line 54
    xor-int/2addr v2, v3

    .line 55
    int-to-char v2, v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    const-string v1, "VpnRules"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string/jumbo v3, "runCmd: cmd = {"

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, "\n"

    .line 83
    const-string/jumbo v4, "|"

    .line 86
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v3, "} param.len="

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 102
    move-result v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 115
    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/net/IOemNetd;->runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    const-string p2, "VpnRules"

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string/jumbo v1, "runCmd: ret = {"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_3

    .line 138
    const-string p1, "OK"

    .line 140
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string/jumbo p1, "}"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    goto :goto_3

    .line 157
    :goto_2
    :try_start_2
    const-string p2, "VpnRules"

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const-string/jumbo v1, "runCmd: err = "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 177
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :goto_3
    monitor-exit p0

    .line 181
    return-void

    .line 182
    :goto_4
    monitor-exit p0

    .line 183
    throw p1
.end method

.method public final setFirewallEgressDestRule(ILjava/lang/String;Z)V
    .locals 10

    .line 1
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, ":"

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const/4 v0, 0x6

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x4

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "*filter\n"

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v3, "-D"

    .line 24
    const-string v4, "-I"

    .line 26
    if-eqz p3, :cond_2

    .line 28
    move-object v5, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move-object v5, v3

    .line 31
    :goto_1
    const-string v6, " fw_INPUT -s "

    .line 33
    const-string v7, " -p tcp --sport "

    .line 35
    invoke-static {v1, v5, v6, p2, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v5, " -j RETURN\nCOMMIT\n"

    .line 43
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    if-eqz p3, :cond_3

    .line 60
    move-object v7, v4

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-object v7, v3

    .line 63
    :goto_2
    const-string v8, " fw_OUTPUT -d "

    .line 65
    const-string v9, " -p tcp --dport "

    .line 67
    invoke-static {v1, v7, v8, p2, v9}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    if-eqz p3, :cond_4

    .line 90
    move-object v7, v4

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    move-object v7, v3

    .line 93
    :goto_3
    const-string v9, " -p udp --sport "

    .line 95
    invoke-static {v1, v7, v6, p2, v9}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    if-eqz p3, :cond_5

    .line 118
    move-object v3, v4

    .line 119
    :cond_5
    const-string p3, " -p udp --dport "

    .line 121
    invoke-static {v1, v3, v8, p2, p3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public final setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, ":"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const/4 v0, 0x6

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x4

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "*filter\n"

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v3, "-D"

    .line 24
    const-string v4, "-I"

    .line 26
    if-eqz p2, :cond_2

    .line 28
    move-object v5, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move-object v5, v3

    .line 31
    :goto_1
    const-string v6, " fw_INPUT -d "

    .line 33
    const-string v7, " -j RETURN\nCOMMIT\n"

    .line 35
    invoke-static {v1, v5, v6, p1, v7}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    if-eqz p2, :cond_3

    .line 49
    move-object v3, v4

    .line 50
    :cond_3
    const-string p2, " fw_OUTPUT -s "

    .line 52
    invoke-static {v1, v3, p2, p1, v7}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 59
    return-void
.end method

.method public final setFirewallEnabled(Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "*filter\n"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v2, "-D"

    .line 10
    const-string v3, "-A"

    .line 12
    if-eqz p1, :cond_0

    .line 14
    move-object v4, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v4, v2

    .line 17
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v4, " fw_INPUT -j DROP\nCOMMIT\n"

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/16 v4, 0x2e

    .line 31
    invoke-virtual {p0, v4, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    if-eqz p1, :cond_1

    .line 41
    move-object v5, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object v5, v2

    .line 44
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v5, " fw_OUTPUT -j REJECT\nCOMMIT\n"

    .line 49
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v4, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    if-eqz p1, :cond_2

    .line 66
    move-object v2, v3

    .line 67
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string p1, " fw_FORWARD -j REJECT\nCOMMIT\n"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, v4, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 82
    return-void
.end method

.method public final setFirewallInterfaceRule(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "*filter\n"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v2, "-D"

    .line 10
    const-string v3, "-I"

    .line 12
    if-eqz p1, :cond_0

    .line 14
    move-object v4, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v4, v2

    .line 17
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v4, " fw_INPUT -i ipsec0 -j RETURN\nCOMMIT\n"

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/16 v4, 0x2e

    .line 31
    invoke-virtual {p0, v4, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    if-eqz p1, :cond_1

    .line 41
    move-object v2, v3

    .line 42
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p1, " fw_OUTPUT -o ipsec0 -j RETURN\nCOMMIT\n"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, v4, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 57
    return-void
.end method

.method public final setTcpPortBypassRule(IIIILjava/lang/String;Ljava/lang/String;Z)I
    .locals 7

    .line 1
    const-string v0, "VpnRules"

    .line 3
    const/4 v1, -0x1

    .line 4
    if-lez p1, :cond_8

    .line 6
    if-lez p2, :cond_8

    .line 8
    if-lez p3, :cond_8

    .line 10
    if-lez p4, :cond_8

    .line 12
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_8

    .line 18
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_8

    .line 24
    const-string v2, ":"

    .line 26
    invoke-virtual {p6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 32
    const/4 v2, 0x6

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x4

    .line 35
    :goto_0
    if-eqz p7, :cond_4

    .line 37
    const-string/jumbo v3, "ip rule"

    .line 40
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/VpnRules;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_1

    .line 46
    return v1

    .line 47
    :cond_1
    const/4 v4, 0x0

    .line 48
    :goto_1
    const/4 v5, 0x3

    .line 49
    if-gt v4, v5, :cond_3

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v6, "fwmark 0x"

    .line 56
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_2

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const-string p0, "Failed to run setTcpPortBypassRule: invalid fwmark"

    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 88
    :cond_4
    :goto_2
    const-string/jumbo v0, "ip -"

    .line 91
    const-string v1, " rule "

    .line 93
    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-result-object v0

    .line 97
    if-eqz p7, :cond_5

    .line 99
    const-string v1, "add"

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const-string/jumbo v1, "del"

    .line 105
    :goto_3
    const-string v3, " from all fwmark "

    .line 107
    const-string v4, " table "

    .line 109
    invoke-static {p2, v1, v3, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 112
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string p4, " prio "

    .line 117
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/VpnRules;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    .line 132
    const-string p4, "*mangle\n"

    .line 134
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    const-string p4, "-D"

    .line 139
    const-string v0, "-A"

    .line 141
    if-eqz p7, :cond_6

    .line 143
    move-object v1, v0

    .line 144
    goto :goto_4

    .line 145
    :cond_6
    move-object v1, p4

    .line 146
    :goto_4
    const-string v3, " OUTPUT -p tcp --dport "

    .line 148
    const-string v4, " -j MARK --set-mark "

    .line 150
    invoke-static {p1, v1, v3, v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 153
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string p1, "\nCOMMIT\n"

    .line 158
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p0, v2, p3}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "*nat\n"

    .line 172
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    if-eqz p7, :cond_7

    .line 177
    move-object p4, v0

    .line 178
    :cond_7
    const-string p7, " POSTROUTING -o "

    .line 180
    const-string v0, " -j SNAT --to "

    .line 182
    invoke-static {p3, p4, p7, p5, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0, v2, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 198
    return p2

    .line 199
    :cond_8
    const-string p0, "Failed to run setTcpPortBypassRule: invalid parameter"

    .line 201
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v1
.end method
