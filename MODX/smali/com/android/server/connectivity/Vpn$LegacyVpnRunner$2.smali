.class public final Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 8
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 10
    iget-boolean p1, p1, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 12
    if-nez p1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 27
    const-string/jumbo p1, "networkType"

    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 37
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 42
    move-result v0

    .line 43
    if-ne p1, v0, :cond_1

    .line 45
    const-string/jumbo p1, "networkInfo"

    .line 48
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/net/NetworkInfo;

    .line 54
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_1

    .line 62
    :try_start_0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 64
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 66
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mObserver:Lcom/android/server/connectivity/Vpn$1;

    .line 68
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p0, p2}, Lcom/android/server/connectivity/Vpn$1;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_2

    .line 81
    goto/16 :goto_2

    .line 83
    :cond_2
    const-string p1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_6

    .line 95
    const-string/jumbo p1, "wifi_state"

    .line 98
    const/16 v0, 0xe

    .line 100
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 103
    move-result p1

    .line 104
    const/16 p2, 0xb

    .line 106
    const-string v1, "LegacyVpnRunner"

    .line 108
    if-eq p1, p2, :cond_5

    .line 110
    const/16 p2, 0xd

    .line 112
    if-eq p1, p2, :cond_3

    .line 114
    if-eq p1, v0, :cond_5

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 119
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 121
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 123
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 126
    move-result-object p1

    .line 127
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 129
    if-ne p1, p2, :cond_6

    .line 131
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 133
    iget-object p2, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 135
    iget-object p2, p2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 137
    if-eqz p2, :cond_6

    .line 139
    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 141
    if-eqz p2, :cond_6

    .line 143
    iget-object p2, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 145
    if-nez p2, :cond_4

    .line 147
    new-instance p2, Ljava/util/ArrayList;

    .line 149
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 154
    :cond_4
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 156
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 158
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 160
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 165
    move-result-object p1

    .line 166
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    move-result p2

    .line 170
    if-eqz p2, :cond_6

    .line 172
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    move-result-object p2

    .line 176
    check-cast p2, Landroid/net/LinkAddress;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    const-string v2, "addVpnRuleForTethering :"

    .line 182
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 201
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 203
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 205
    invoke-virtual {p2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/VpnRules;->addVpnRuleForTethering(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 214
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 216
    invoke-virtual {p2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 219
    move-result-object p2

    .line 220
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    goto :goto_1

    .line 224
    :cond_5
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 226
    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 229
    const-string p0, "WIFI_AP_STATE_DISABLED or WIFI_AP_STATE_FAILED"

    .line 231
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_6
    :goto_2
    return-void

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
