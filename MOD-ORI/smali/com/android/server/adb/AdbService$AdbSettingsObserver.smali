.class public final Lcom/android/server/adb/AdbService$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAdbUsbUri:Landroid/net/Uri;

.field public final mAdbWifiUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method public static $r8$lambda$QsA9Am4S85-6tzWrx_VQgRFMz-I(Lcom/android/server/adb/AdbService;ZB)V
    .locals 5

    .line 1
    sget v0, Lcom/android/server/adb/AdbService;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "setAdbEnabled("

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "), mIsAdbUsbEnabled="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", mIsAdbWifiEnabled="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", transportType="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "AdbService"

    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    if-nez p2, :cond_0

    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 57
    .line 58
    if-eq p1, v0, :cond_0

    .line 59
    .line 60
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x1

    .line 64
    if-ne p2, v0, :cond_7

    .line 65
    .line 66
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 67
    .line 68
    if-eq p1, v0, :cond_7

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 71
    .line 72
    const-string/jumbo v0, "persist.adb.tls_server.enable"

    .line 73
    .line 74
    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    invoke-static {}, Landroid/sysprop/AdbProperties;->secure()Ljava/util/Optional;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 96
    .line 97
    if-nez v2, :cond_2

    .line 98
    .line 99
    const-string v2, "1"

    .line 100
    .line 101
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/server/adb/AdbService;->mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    .line 107
    .line 108
    invoke-direct {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    const-string v2, "0"

    .line 118
    .line 119
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 123
    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    .line 127
    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 131
    .line 132
    :cond_2
    :goto_0
    const-string v0, "adbd"

    .line 133
    .line 134
    if-eqz p1, :cond_3

    .line 135
    .line 136
    const-string/jumbo v2, "ctl.start"

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 144
    .line 145
    if-nez v2, :cond_4

    .line 146
    .line 147
    iget-boolean v2, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 148
    .line 149
    if-nez v2, :cond_4

    .line 150
    .line 151
    const-string/jumbo v2, "ctl.stop"

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_5

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Landroid/debug/IAdbTransport;

    .line 178
    .line 179
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/debug/IAdbTransport;->onAdbEnabled(ZB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v4, "Unable to send onAdbEnabled to transport "

    .line 186
    .line 187
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v2}, Landroid/debug/IAdbTransport;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 206
    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    invoke-virtual {v0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    .line 210
    .line 211
    .line 212
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v2, "Broadcasting enable = "

    .line 215
    .line 216
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, ", type = "

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 238
    .line 239
    new-instance v0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    invoke-direct {v0, p1, p2}, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;-><init>(ZB)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "adb_enabled"

    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    .line 14
    .line 15
    const-string p1, "adb_wifi_enabled"

    .line 16
    .line 17
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string/jumbo p3, "rampart_blocked_adb_cmd"

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, p3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const-string p3, "AdbService"

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    const-string/jumbo p1, "onChange : ADB is blocked by Auto Blocker"

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iget-object p3, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 39
    .line 40
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {p2, p3, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    const/4 p3, 0x0

    .line 60
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {p2, p0, v2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 78
    .line 79
    iget-object v2, p1, Lcom/android/server/adb/AdbService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 80
    .line 81
    if-nez v2, :cond_1

    .line 82
    .line 83
    iget-object v2, p1, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iput-object v2, p1, Lcom/android/server/adb/AdbService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 90
    .line 91
    :cond_1
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 92
    .line 93
    iget-object v2, p1, Lcom/android/server/adb/AdbService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    iget-object v3, p1, Lcom/android/server/adb/AdbService;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 98
    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p1, Lcom/android/server/adb/AdbService;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 106
    .line 107
    :cond_2
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/android/server/adb/AdbService;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    const-string/jumbo p1, "onChange : ADB is blocked by MDM"

    .line 118
    .line 119
    .line 120
    invoke-static {p3, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    const/4 p3, 0x0

    .line 130
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 131
    .line 132
    .line 133
    iget-object p3, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 134
    .line 135
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {p2, p3, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    const/4 p3, 0x0

    .line 155
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 156
    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 159
    .line 160
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-static {p2, p0, v2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_3
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_5

    .line 179
    .line 180
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 181
    .line 182
    iget-object p1, p1, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    .line 184
    const-string p2, "adb_enabled"

    .line 185
    .line 186
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-lez p1, :cond_4

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_4
    move v1, v0

    .line 194
    :goto_0
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    const/4 p3, 0x0

    .line 201
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 205
    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {p2, p0, p3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_5
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    .line 223
    .line 224
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_7

    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 231
    .line 232
    iget-object p1, p1, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 233
    .line 234
    const-string p2, "adb_wifi_enabled"

    .line 235
    .line 236
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-lez p1, :cond_6

    .line 241
    .line 242
    move v0, v1

    .line 243
    :cond_6
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 248
    .line 249
    const/4 p3, 0x0

    .line 250
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 251
    .line 252
    .line 253
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 254
    .line 255
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object p3

    .line 259
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {p2, p0, p3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    .line 269
    .line 270
    :cond_7
    :goto_1
    return-void
.end method
