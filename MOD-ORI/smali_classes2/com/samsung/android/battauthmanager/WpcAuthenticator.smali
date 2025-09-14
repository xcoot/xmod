.class public final Lcom/samsung/android/battauthmanager/WpcAuthenticator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public certChainHash:[B

.field public final certChainList:Ljava/util/ArrayList;

.field public final mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

.field public final mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

.field public productPublicKey:[B

.field public requestChallenge:[B

.field public status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

.field public wholeCertChainLength:I


# direct methods
.method public static -$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-array v2, v1, [B

    .line 4
    .line 5
    aput-byte v1, v2, v0

    .line 6
    .line 7
    new-array v3, v1, [B

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    aput-byte v4, v3, v0

    .line 11
    .line 12
    iget-object v4, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 13
    .line 14
    const-string v5, "BattAuthManager_WpcAuthenticator"

    .line 15
    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v3, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-array v2, v0, [Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "/efs/Battery/qi_digests/cached_digests"

    .line 44
    .line 45
    invoke-static {v3, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v4, "/efs/Battery/qi_digests/cached_digests.tmp"

    .line 50
    .line 51
    new-array v6, v0, [Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v4, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-array v6, v0, [Ljava/nio/file/LinkOption;

    .line 58
    .line 59
    invoke-static {v2, v6}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const-string/jumbo v7, "saveDigest"

    .line 64
    .line 65
    .line 66
    if-nez v6, :cond_0

    .line 67
    .line 68
    :try_start_0
    new-array v6, v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 69
    .line 70
    invoke-static {v2, v6}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v6, "saveDigest, created empty file"

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    invoke-static {v5, v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_0
    :goto_0
    :try_start_1
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 87
    .line 88
    invoke-static {v2, v6}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    .line 89
    .line 90
    .line 91
    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 92
    :try_start_2
    new-array v9, v1, [Ljava/nio/file/OpenOption;

    .line 93
    .line 94
    sget-object v10, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    .line 95
    .line 96
    aput-object v10, v9, v0

    .line 97
    .line 98
    invoke-static {v4, v6, v9}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    .line 99
    .line 100
    .line 101
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    move v9, v0

    .line 103
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    if-eqz v10, :cond_2

    .line 108
    .line 109
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_1

    .line 114
    .line 115
    add-int/2addr v9, v1

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {v6, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v11, "saveDigest, skipLines : "

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 151
    .line 152
    .line 153
    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 154
    .line 155
    .line 156
    new-array p0, v1, [Ljava/nio/file/CopyOption;

    .line 157
    .line 158
    sget-object v1, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 159
    .line 160
    aput-object v1, p0, v0

    .line 161
    .line 162
    invoke-static {v4, v2, p0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    .line 164
    .line 165
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    .line 167
    .line 168
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 169
    .line 170
    .line 171
    const/16 p0, 0x1b0

    .line 172
    .line 173
    :try_start_6
    invoke-static {v3, p0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    const/16 p0, 0x3e8

    .line 177
    .line 178
    invoke-static {v3, p0, p0}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1

    .line 179
    .line 180
    .line 181
    goto :goto_7

    .line 182
    :catch_1
    move-exception p0

    .line 183
    const-string/jumbo v0, "setPermission: ErrnoException"

    .line 184
    .line 185
    .line 186
    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .line 188
    .line 189
    goto :goto_7

    .line 190
    :catch_2
    move-exception p0

    .line 191
    goto :goto_6

    .line 192
    :catchall_1
    move-exception p0

    .line 193
    goto :goto_4

    .line 194
    :goto_2
    if-eqz v6, :cond_3

    .line 195
    .line 196
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :catchall_2
    move-exception v0

    .line 201
    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    :cond_3
    :goto_3
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 205
    :goto_4
    if-eqz v8, :cond_4

    .line 206
    .line 207
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :catchall_3
    move-exception v0

    .line 212
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    :cond_4
    :goto_5
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 216
    :goto_6
    invoke-static {v5, v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_5
    invoke-virtual {v4, v3}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    .line 221
    .line 222
    .line 223
    :goto_7
    const-string/jumbo p0, "setAuthPass, result : "

    .line 224
    .line 225
    .line 226
    invoke-static {p0, v5, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    .line 22
    .line 23
    sget-object v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->STATUS_NONE:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 26
    .line 27
    new-instance v1, Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    .line 33
    .line 34
    new-instance v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    .line 35
    .line 36
    invoke-direct {v1, p0, p2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;-><init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    .line 40
    .line 41
    new-instance p2, Landroid/content/IntentFilter;

    .line 42
    .line 43
    const-string v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 44
    .line 45
    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;-><init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const-string/jumbo p2, "power"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/os/PowerManager;

    .line 64
    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    const-string v1, "BattAuthManager_WpcAuthenticator"

    .line 69
    .line 70
    invoke-virtual {p1, p2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    .line 76
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "len("

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "), "

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    array-length v1, p0

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-ge v2, v1, :cond_0

    .line 36
    .line 37
    aget-byte v3, p0, v2

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "%02X "

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    invoke-static {v4, v3, v0, v2, v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_1
    const-string/jumbo p0, "null"

    .line 61
    .line 62
    .line 63
    return-object p0
.end method

.method public static removeDigests()V
    .locals 4

    .line 1
    const-string v0, "BattAuthManager_WpcAuthenticator"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "/efs/Battery/qi_digests/"

    .line 7
    .line 8
    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :try_start_0
    new-instance v2, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;-><init>(Ljava/nio/file/Path;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "removeDigests"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Failed to delete removeDigests: "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
