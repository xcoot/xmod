.class public final synthetic Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z

    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->disconnectVpnRunner()V

    .line 17
    return-void

    .line 18
    :pswitch_1
    iget v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 20
    if-lez v0, :cond_0

    .line 22
    const-string v0, "IkeV2VpnRunner"

    .line 24
    const-string v1, "Reset session to recover stalled network"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->startIkeSession(Landroid/net/Network;)V

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 37
    return-void

    .line 38
    :pswitch_2
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mValidationFailRetryCount:I

    .line 41
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 43
    if-eqz v1, :cond_1

    .line 45
    const-string v1, "IkeV2VpnRunner"

    .line 47
    const-string v2, "Recovered from stall. Cancel pending reset action."

    .line 49
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 54
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleDataStallFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 60
    :cond_1
    return-void

    .line 61
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 63
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 65
    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 68
    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 70
    if-eq v3, p0, :cond_2

    .line 72
    monitor-exit v1

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mSessionKey:Ljava/lang/String;

    .line 78
    iget v4, v2, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 80
    iget-object v5, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 82
    iget-object v6, v5, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 84
    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 86
    invoke-virtual {v2, v4, v6, v5}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    .line 89
    move-result-object v4

    .line 90
    new-instance v5, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;

    .line 92
    invoke-direct {v5, v2, v3, v4}, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/util/Set;)V

    .line 95
    invoke-static {v5}, Lcom/android/net/module/util/BinderUtils;->withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-nez v0, :cond_3

    .line 101
    const-string v0, "IkeV2VpnRunner"

    .line 103
    const-string v1, "There is no active network for starting an IKE session"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 115
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 117
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_5

    .line 127
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 129
    new-instance v3, Landroid/net/NetworkCapabilities$Builder;

    .line 131
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 133
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 135
    invoke-direct {v3, v4}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 138
    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 145
    move-result-object v3

    .line 146
    iput-object v3, v2, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 148
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 150
    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 152
    if-eqz v3, :cond_5

    .line 154
    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/Vpn;->logUnderlyNetworkChanges(Ljava/util/List;)V

    .line 157
    instance-of v2, v3, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    .line 159
    if-eqz v2, :cond_4

    .line 161
    check-cast v3, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    .line 163
    invoke-virtual {v3, v1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 166
    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {v3, v1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 170
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z

    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_6

    .line 176
    goto :goto_1

    .line 177
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->startIkeSession(Landroid/net/Network;)V

    .line 180
    :goto_1
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 183
    return-void

    .line 184
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    throw p0

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
