.class public final Lcom/android/server/connectivity/EnterpriseVpn$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_1
    const-string/jumbo p1, "knoxEnterpriseVpn"

    .line 19
    .line 20
    .line 21
    const-string p2, "Locale changed. Updating Knox vpn notification and the number of user present is "

    .line 22
    .line 23
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 29
    .line 30
    if-eqz p2, :cond_7

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_7

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 39
    .line 40
    sget-boolean p2, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v1, "updateNotification > user : "

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 53
    .line 54
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    const-string/jumbo v3, "notification"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/app/NotificationManager;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const v4, 0x104071d

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const v4, 0x104071c

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    const-string/jumbo p2, "updateNotification > vpn type is per-app"

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :catch_0
    move-exception p0

    .line 105
    goto :goto_5

    .line 106
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 107
    .line 108
    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p2}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-eqz p2, :cond_6

    .line 115
    .line 116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-interface {v4, v3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlagInternal(I)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_4

    .line 145
    .line 146
    const/4 v4, 0x1

    .line 147
    goto :goto_3

    .line 148
    :cond_4
    const/4 v4, 0x0

    .line 149
    :goto_3
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-static {v5, v3}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {p0, v5, v4}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    const v6, 0x186a0

    .line 160
    .line 161
    .line 162
    if-eqz v4, :cond_5

    .line 163
    .line 164
    const-string v4, "Knox_Notification"

    .line 165
    .line 166
    new-instance v7, Landroid/os/UserHandle;

    .line 167
    .line 168
    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v4, v6, v5, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    add-int/2addr v6, v3

    .line 176
    new-instance v4, Landroid/os/UserHandle;

    .line 177
    .line 178
    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 179
    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-virtual {v2, v3, v6, v5, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    .line 188
    .line 189
    goto :goto_7

    .line 190
    :goto_5
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v2, "Exception: "

    .line 196
    .line 197
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :goto_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :cond_7
    :goto_7
    return-void
.end method
