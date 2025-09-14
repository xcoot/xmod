.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "onBindingDied is reached for user "

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 11
    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    .line 13
    const-string v1, "KnoxVpnTetherAuthentication"

    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 20
    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v1, "onBindingDied callback has been recieved for tetherAuth client in user "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 32
    iget v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " and for profile "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 44
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string p0, " at "

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    move-result-wide v1

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    check-cast p1, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string p1, "Error happened during remote process communication with the application "

    .line 3
    const-string v0, "KnoxVpnTetherAuthentication"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v2, "onServiceConnected is reached for user "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 15
    iget v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    .line 17
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 22
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v2, "onServiceConnected callback has been recieved for tetherAuth client in user "

    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 34
    iget v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, " and for profile "

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 46
    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, " at "

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    check-cast v0, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 74
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    .line 76
    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 79
    invoke-static {p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 82
    move-result-object p2

    .line 83
    iput-object p2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 87
    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 89
    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 91
    const-string/jumbo v2, "key-tether-auth-login-page"

    .line 94
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setHtmlSignInPage(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 103
    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 105
    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 107
    const-string/jumbo v2, "key-tether-auth-response-page"

    .line 110
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setHtmlResponsePage(Ljava/lang/String;)V

    .line 117
    new-instance p2, Landroid/os/Bundle;

    .line 119
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string/jumbo v1, "key-tether-client-certificate-issuer-cn"

    .line 125
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 127
    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 129
    const-string/jumbo v3, "key-tether-client-certificate-issuer-cn"

    .line 132
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v1, "key-tether-client-certificate-issued-cn"

    .line 142
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 144
    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 146
    const-string/jumbo v3, "key-tether-client-certificate-issued-cn"

    .line 149
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 158
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 160
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setClientAuthDetails(Landroid/os/Bundle;)V

    .line 163
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 165
    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 167
    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    .line 169
    const-string/jumbo v2, "captivecert_pwd"

    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    invoke-static {p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object p2

    .line 179
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 181
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 183
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 185
    const-string/jumbo v3, "key-tether-captive-portal-alias"

    .line 188
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    invoke-interface {v2, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCaptivePortalAlias(Ljava/lang/String;)Z

    .line 195
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 197
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 199
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 201
    const-string/jumbo v3, "key-tether-captive-portal-certificate"

    .line 204
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 207
    move-result-object v1

    .line 208
    invoke-interface {v2, v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCaptivePortalCertificate([BLjava/lang/String;)I

    .line 211
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 213
    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 215
    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    .line 217
    const-string/jumbo v2, "cacert_pwd"

    .line 220
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    invoke-static {p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object p2

    .line 227
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 229
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 231
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 233
    const-string/jumbo v3, "key-tether-ca-alias"

    .line 236
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    move-result-object v1

    .line 240
    invoke-interface {v2, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCaAlias(Ljava/lang/String;)Z

    .line 243
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 245
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 247
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 249
    const-string/jumbo v3, "key-tether-ca-certificate"

    .line 252
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 255
    move-result-object v1

    .line 256
    invoke-interface {v2, v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCACertificate([BLjava/lang/String;)I

    .line 259
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 261
    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 263
    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    .line 265
    const-string/jumbo v2, "servercert_pwd"

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    invoke-static {p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object p2

    .line 275
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 277
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 279
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 281
    const-string/jumbo v3, "key-tether-user-alias"

    .line 284
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 288
    invoke-interface {v2, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setServerAlias(Ljava/lang/String;)Z

    .line 291
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 293
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 295
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 297
    const-string/jumbo v3, "key-tether-user-certificate"

    .line 300
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 303
    move-result-object v1

    .line 304
    invoke-interface {v2, v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setServerCertificate([BLjava/lang/String;)I

    .line 307
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 309
    iget-boolean p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    .line 311
    if-nez p2, :cond_0

    .line 313
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 315
    iget-object v1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 317
    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    .line 319
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 322
    move-result-object p2

    .line 323
    if-eqz p2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 327
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 329
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInterfaceNameForUsbtethering()Ljava/lang/String;

    .line 332
    move-result-object v1

    .line 333
    iget-object v2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    .line 335
    iget v3, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    .line 337
    if-eqz v1, :cond_0

    .line 339
    if-eqz v2, :cond_0

    .line 341
    const/4 v2, 0x1

    .line 342
    if-ne v3, v2, :cond_0

    .line 344
    const-string v2, "KnoxVpnTetherAuthentication"

    .line 346
    const-string/jumbo v3, "start tether auth process after onServiceConnected event"

    .line 349
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 354
    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 356
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getIpAddressForUsbTetheringInterface()Ljava/util/List;

    .line 359
    move-result-object v2

    .line 360
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 362
    iget p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    .line 364
    invoke-virtual {v3, p2, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->startTetherAuthProcess(ILjava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    goto :goto_0

    .line 368
    :catchall_0
    move-exception p0

    .line 369
    goto :goto_1

    .line 370
    :catch_0
    move-exception p2

    .line 371
    :try_start_2
    const-string v1, "KnoxVpnTetherAuthentication"

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 381
    move-result-object p1

    .line 382
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object p1

    .line 389
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 394
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 396
    if-eqz p0, :cond_1

    .line 398
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 401
    :cond_1
    monitor-exit v0

    .line 402
    return-void

    .line 403
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "onServicedisconnected is reached for user "

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 11
    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    .line 13
    const-string v1, "KnoxVpnTetherAuthentication"

    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 20
    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v1, "onServiceDisconnected callback has been recieved for tetherAuth client in user "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 32
    iget v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " and for profile "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 44
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " at "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    move-result-wide v1

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    check-cast p1, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 72
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 75
    return-void
.end method
