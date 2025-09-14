.class public final synthetic Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    iput-object p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    iput-object p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 8
    iget-object p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Landroid/net/NetworkCapabilities;

    .line 12
    iget-object v0, v0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 14
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 16
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 18
    if-ne v1, p0, :cond_0

    .line 20
    goto/16 :goto_0

    .line 22
    :cond_0
    if-eqz v1, :cond_1

    .line 24
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    .line 47
    move-result-object v3

    .line 48
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getEnterpriseIds()[I

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getEnterpriseIds()[I

    .line 61
    move-result-object v3

    .line 62
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 75
    move-result-object v3

    .line 76
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getAllowedUids()Ljava/util/Set;

    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getAllowedUids()Ljava/util/Set;

    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 117
    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_2

    .line 124
    :cond_1
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 126
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    const-string v3, "[UnderlyingNW] Cap changed from "

    .line 132
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    const-string v3, " to "

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 155
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 157
    iput-object p0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 159
    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 168
    move-result-object v1

    .line 169
    invoke-interface {p0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result p0

    .line 173
    if-nez p0, :cond_4

    .line 175
    :cond_3
    const-wide/16 v1, 0x12c

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->scheduleStartIkeSession(J)V

    .line 180
    :cond_4
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;

    .line 183
    iget-object p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 185
    check-cast p0, Landroid/net/LinkProperties;

    .line 187
    iget-object v0, v0, Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 189
    check-cast v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 191
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 193
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 195
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    const-string v4, "[UnderlyingNW] Lp changed from "

    .line 201
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    const-string v4, " to "

    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 222
    iput-object p0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mUnderlyingLinkProperties:Landroid/net/LinkProperties;

    .line 224
    if-eqz v1, :cond_5

    .line 226
    invoke-static {v1, p0}, Lcom/android/net/module/util/LinkPropertiesUtils;->isIdenticalAllLinkAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    .line 229
    move-result p0

    .line 230
    if-nez p0, :cond_6

    .line 232
    :cond_5
    const-wide/16 v1, 0x12c

    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->scheduleStartIkeSession(J)V

    .line 237
    :cond_6
    return-void

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
