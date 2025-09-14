.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 3
    invoke-static {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->-$$Nest$monApplicationStart(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;I)V

    .line 6
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 3
    const-string p1, "Exception stopping connection for profile "

    .line 5
    const-string/jumbo v0, "stopping vpn connection : Failure at "

    .line 8
    const-string v1, "Connection with vpn vendor service stopped for profile "

    .line 10
    const-string v2, "Error occurred trying to stop vpn connection from profile "

    .line 12
    const-string v3, "The current state of the vpn profile before calling stop connection for application on on-demand mode "

    .line 14
    const-string/jumbo v4, "onApplicationStop : isExistRunningApps : "

    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 20
    if-eqz v5, :cond_c

    .line 22
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 24
    if-eqz v5, :cond_c

    .line 26
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 28
    if-nez v6, :cond_0

    .line 30
    goto/16 :goto_3

    .line 32
    :cond_0
    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidFromCache(I)Ljava/lang/String;

    .line 35
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-nez v5, :cond_1

    .line 38
    monitor-exit p0

    .line 39
    goto/16 :goto_4

    .line 41
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 44
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 46
    invoke-virtual {p2, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 49
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    if-nez p2, :cond_2

    .line 52
    monitor-exit p0

    .line 53
    goto/16 :goto_4

    .line 55
    :cond_2
    :try_start_2
    iget v6, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    const/4 v7, 0x1

    .line 58
    if-eq v6, v7, :cond_3

    .line 60
    monitor-exit p0

    .line 61
    goto/16 :goto_4

    .line 63
    :cond_3
    :try_start_3
    iget v6, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    if-nez v6, :cond_4

    .line 67
    monitor-exit p0

    .line 68
    goto/16 :goto_4

    .line 70
    :cond_4
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    .line 73
    move-result v6

    .line 74
    const-string v8, "KnoxVpnProcessManager"

    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    if-nez v6, :cond_b

    .line 93
    :try_start_5
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 95
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;

    .line 98
    move-result-object v4

    .line 99
    if-nez v4, :cond_6

    .line 101
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    .line 103
    if-eqz v1, :cond_5

    .line 105
    const-string v1, "KnoxVpnProcessManager"

    .line 107
    const-string/jumbo v2, "onApplicationStop : stopping vpn connection : Service is not started"

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    goto/16 :goto_5

    .line 117
    :catch_0
    move-exception v1

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    :goto_0
    monitor-exit p0

    .line 120
    goto/16 :goto_4

    .line 122
    :cond_6
    :try_start_6
    invoke-interface {v4, v5}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->getState(Ljava/lang/String;)I

    .line 125
    move-result v6

    .line 126
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    .line 128
    if-eqz v8, :cond_7

    .line 130
    const-string v8, "KnoxVpnProcessManager"

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v3

    .line 144
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_7
    if-eq v6, v7, :cond_8

    .line 149
    const/4 v3, 0x2

    .line 150
    if-eq v6, v3, :cond_8

    .line 152
    const/4 v3, 0x3

    .line 153
    if-eq v6, v3, :cond_8

    .line 155
    const/4 v3, 0x4

    .line 156
    if-eq v6, v3, :cond_9

    .line 158
    const/4 v3, 0x5

    .line 159
    if-eq v6, v3, :cond_8

    .line 161
    goto :goto_2

    .line 162
    :cond_8
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 164
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateBlockingRules(Ljava/lang/String;)V

    .line 167
    :cond_9
    invoke-interface {v4, v5}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_a

    .line 173
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 176
    move-result v9

    .line 177
    const-string v10, "KnoxVpnProcessManager"

    .line 179
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v11

    .line 183
    iget v12, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    .line 185
    const/4 v8, 0x0

    .line 186
    const/4 v6, 0x3

    .line 187
    const/4 v7, 0x5

    .line 188
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 191
    goto :goto_2

    .line 192
    :cond_a
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 195
    move-result v9

    .line 196
    const-string v10, "KnoxVpnProcessManager"

    .line 198
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v11

    .line 202
    iget v12, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    .line 204
    const/4 v8, 0x1

    .line 205
    const/4 v6, 0x5

    .line 206
    const/4 v7, 0x5

    .line 207
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 210
    goto :goto_2

    .line 211
    :goto_1
    :try_start_7
    const-string v2, "KnoxVpnProcessManager"

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 229
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 235
    move-result v9

    .line 236
    const-string v10, "KnoxVpnProcessManager"

    .line 238
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    move-result-object v11

    .line 242
    iget v12, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    .line 244
    const/4 v8, 0x0

    .line 245
    const/4 v6, 0x3

    .line 246
    const/4 v7, 0x5

    .line 247
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 250
    :cond_b
    :goto_2
    monitor-exit p0

    .line 251
    goto :goto_4

    .line 252
    :cond_c
    :goto_3
    monitor-exit p0

    .line 253
    :goto_4
    return-void

    .line 254
    :goto_5
    monitor-exit p0

    .line 255
    throw p1
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 3
    invoke-static {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->-$$Nest$monApplicationStart(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;I)V

    .line 6
    return-void
.end method
