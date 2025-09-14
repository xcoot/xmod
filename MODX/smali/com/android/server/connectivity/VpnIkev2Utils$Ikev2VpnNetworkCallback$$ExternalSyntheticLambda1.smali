.class public final synthetic Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

.field public final synthetic f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;Landroid/net/Network;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 5
    iput-object p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 8
    iget-object p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    .line 10
    iget-object v0, v0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 12
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 14
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 16
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "[UnderlyingNW] Network lost "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 35
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 37
    const/4 v2, 0x0

    .line 38
    const-string v3, "IkeV2VpnRunner"

    .line 40
    if-eqz v1, :cond_0

    .line 42
    const-string v1, "Cancel the task for handling new ike session timeout"

    .line 44
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-interface {v1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 53
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 55
    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 57
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 63
    iget-boolean v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 65
    if-eqz v1, :cond_2

    .line 67
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 69
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 71
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 73
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 75
    if-eqz v1, :cond_1

    .line 77
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 79
    const-string v1, "Found a pending mScheduledHandleNetworkLostFuture"

    .line 81
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v1, "Unexpected error in onDefaultNetworkLost. Tear down session"

    .line 86
    invoke-static {v3, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->handleSessionLost(Ljava/lang/Exception;)V

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    const-string v2, "Schedule a delay handleSessionLost for losing network "

    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v2, " on session with token "

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 110
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 113
    iget v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 115
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 117
    new-instance v3, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;

    .line 119
    invoke-direct {v3, v0, v1, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;ILandroid/net/Network;)V

    .line 122
    const-wide/16 v4, 0x1388

    .line 124
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 126
    invoke-virtual {v2, v3, v4, v5, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 129
    move-result-object p0

    .line 130
    iput-object p0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v1, "onDefaultNetworkLost called for obsolete network "

    .line 138
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 148
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 154
    iget-object p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    .line 156
    iget-object v0, v0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 158
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 160
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 162
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    const-string v3, "[UnderlyingNW] Default network changed to "

    .line 168
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v2, "onDefaultNetworkChanged: "

    .line 186
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v1

    .line 196
    const-string v2, "IkeV2VpnRunner"

    .line 198
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 203
    const/4 v3, 0x0

    .line 204
    const/4 v4, 0x0

    .line 205
    if-eqz v1, :cond_3

    .line 207
    const-string v1, "Cancel the task for handling new ike session timeout"

    .line 209
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 214
    invoke-interface {v1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 217
    iput-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 219
    :cond_3
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 221
    if-eqz v1, :cond_4

    .line 223
    const-string v1, "Cancel the task for handling network lost timeout"

    .line 225
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 230
    invoke-interface {v1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 233
    iput-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 235
    :cond_4
    iget-boolean v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 237
    if-nez v1, :cond_5

    .line 239
    const-string/jumbo p0, "onDefaultNetworkChanged after exit"

    .line 242
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    goto :goto_1

    .line 246
    :cond_5
    iput-object p0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 248
    iput-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 250
    iput-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 252
    iput v4, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    .line 254
    :goto_1
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
