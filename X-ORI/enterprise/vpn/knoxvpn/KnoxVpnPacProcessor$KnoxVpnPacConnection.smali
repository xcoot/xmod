.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final profile:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final declared-synchronized onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    const-string/jumbo p1, "onBindingDied callback has been recieved for the proxy client in user "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "onBindingDied is reached for user and trying to bind again "

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v1, "KnoxVpnPacProcessor"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " and for profile "

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " at "

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    .line 1
    const-string/jumbo p1, "onServiceConnected:Binder object already exists for the user "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "onServiceConnected callback has been recieved for the proxy client in user "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "onServiceConnected is reached for user "

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    const-string v2, "KnoxVpnPacProcessor"

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " and for profile "

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " at "

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-nez p2, :cond_0

    .line 85
    .line 86
    const-string p1, "KnoxVpnPacProcessor"

    .line 87
    .line 88
    const-string p2, "Got a null IBinder reference, aborting..."

    .line 89
    .line 90
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 99
    .line 100
    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string/jumbo v2, "hasProxyService is being called for the userId "

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v2, "KnoxVpnPacProcessor"

    .line 121
    .line 122
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_1

    .line 136
    .line 137
    const-string p2, "KnoxVpnPacProcessor"

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    monitor-exit p0

    .line 157
    return-void

    .line 158
    :cond_1
    :try_start_2
    const-string p1, "KnoxVpnPacProcessor"

    .line 159
    .line 160
    const-string/jumbo v1, "onServiceConnected:After onservice disconnect for unknown reason or for the first onservice connect"

    .line 161
    .line 162
    .line 163
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 167
    .line 168
    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string/jumbo v2, "setProxyService is being called for the userId "

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    const-string v2, "KnoxVpnPacProcessor"

    .line 189
    .line 190
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    if-eqz p1, :cond_7

    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 209
    .line 210
    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 211
    .line 212
    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_7

    .line 227
    .line 228
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 233
    .line 234
    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 235
    .line 236
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 237
    .line 238
    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 243
    .line 244
    if-eq v2, v3, :cond_3

    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_3
    iget v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    .line 248
    .line 249
    const/4 v3, 0x1

    .line 250
    if-eq v2, v3, :cond_4

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_4
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Landroid/net/Uri;

    .line 256
    .line 257
    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    .line 258
    .line 259
    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    .line 260
    .line 261
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .line 263
    if-eq v4, v6, :cond_6

    .line 264
    .line 265
    :try_start_3
    invoke-interface {p2, v1}, Lcom/android/net/IProxyService;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    const-string v6, "KnoxVpnPacProcessor"

    .line 270
    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string/jumbo v8, "pac support for the profile"

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v8, " is started since the service is connected and the result is "

    .line 286
    .line 287
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    if-eqz v5, :cond_5

    .line 301
    .line 302
    if-eqz v2, :cond_5

    .line 303
    .line 304
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 305
    .line 306
    invoke-virtual {v5, v1, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    .line 308
    .line 309
    :catch_0
    :cond_5
    :try_start_4
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 310
    .line 311
    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startProxyServerForKnoxProfile(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 315
    .line 316
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-static {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_0

    .line 328
    :cond_6
    if-eqz v5, :cond_2

    .line 329
    .line 330
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 331
    .line 332
    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startProxyServerForKnoxProfile(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 336
    .line 337
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-static {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 346
    .line 347
    .line 348
    goto :goto_0

    .line 349
    :cond_7
    monitor-exit p0

    .line 350
    return-void

    .line 351
    :goto_1
    monitor-exit p0

    .line 352
    throw p1
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    const-string/jumbo p1, "onServiceDisconnected callback has been recieved for the proxy client in user "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "onServicedisconnected is reached for user "

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v1, "KnoxVpnPacProcessor"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " and for profile "

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " at "

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_0

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    invoke-static {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    goto :goto_1

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 147
    .line 148
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removePacInterface(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    .line 159
    .line 160
    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 161
    .line 162
    invoke-virtual {p1, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindProxyService(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 167
    :goto_1
    monitor-exit p0

    .line 168
    throw p1
.end method
