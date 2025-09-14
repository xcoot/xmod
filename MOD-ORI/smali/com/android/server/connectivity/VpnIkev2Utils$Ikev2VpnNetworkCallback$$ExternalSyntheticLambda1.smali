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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 11
    .line 12
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "[UnderlyingNW] Network lost "

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const-string v3, "IkeV2VpnRunner"

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-string v1, "Cancel the task for handling new ike session timeout"

    .line 43
    .line 44
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-interface {v1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 51
    .line 52
    .line 53
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 54
    .line 55
    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 56
    .line 57
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 68
    .line 69
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 70
    .line 71
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 72
    .line 73
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "Found a pending mScheduledHandleNetworkLostFuture"

    .line 80
    .line 81
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "Unexpected error in onDefaultNetworkLost. Tear down session"

    .line 85
    .line 86
    invoke-static {v3, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->handleSessionLost(Ljava/lang/Exception;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "Schedule a delay handleSessionLost for losing network "

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " on session with token "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 109
    .line 110
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mCurrentToken:I

    .line 114
    .line 115
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 116
    .line 117
    new-instance v3, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;

    .line 118
    .line 119
    invoke-direct {v3, v0, v1, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;ILandroid/net/Network;)V

    .line 120
    .line 121
    .line 122
    const-wide/16 v4, 0x1388

    .line 123
    .line 124
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 125
    .line 126
    invoke-virtual {v2, v3, v4, v5, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    iput-object p0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string/jumbo v1, "onDefaultNetworkLost called for obsolete network "

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 157
    .line 158
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 159
    .line 160
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 161
    .line 162
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v3, "[UnderlyingNW] Default network changed to "

    .line 167
    .line 168
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string/jumbo v2, "onDefaultNetworkChanged: "

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-string v2, "IkeV2VpnRunner"

    .line 197
    .line 198
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 202
    .line 203
    const/4 v3, 0x0

    .line 204
    const/4 v4, 0x0

    .line 205
    if-eqz v1, :cond_3

    .line 206
    .line 207
    const-string v1, "Cancel the task for handling new ike session timeout"

    .line 208
    .line 209
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 213
    .line 214
    invoke-interface {v1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 215
    .line 216
    .line 217
    iput-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleRetryIkeSessionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 218
    .line 219
    :cond_3
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 220
    .line 221
    if-eqz v1, :cond_4

    .line 222
    .line 223
    const-string v1, "Cancel the task for handling network lost timeout"

    .line 224
    .line 225
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 229
    .line 230
    invoke-interface {v1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 231
    .line 232
    .line 233
    iput-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mScheduledHandleNetworkLostFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 234
    .line 235
    :cond_4
    iget-boolean v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mIsRunning:Z

    .line 236
    .line 237
    if-nez v1, :cond_5

    .line 238
    .line 239
    const-string/jumbo p0, "onDefaultNetworkChanged after exit"

    .line 240
    .line 241
    .line 242
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_5
    iput-object p0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 247
    .line 248
    iput-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 249
    .line 250
    iput-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 251
    .line 252
    iput v4, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mRetryCount:I

    .line 253
    .line 254
    :goto_1
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
