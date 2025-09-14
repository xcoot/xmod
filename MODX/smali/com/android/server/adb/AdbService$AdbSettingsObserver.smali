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

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v1, "setAdbEnabled("

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "), mIsAdbUsbEnabled="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", mIsAdbWifiEnabled="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", transportType="

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const-string v1, "AdbService"

    .line 51
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-nez p2, :cond_0

    .line 56
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 58
    if-eq p1, v0, :cond_0

    .line 60
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x1

    .line 64
    if-ne p2, v0, :cond_7

    .line 66
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 68
    if-eq p1, v0, :cond_7

    .line 70
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 72
    const-string/jumbo v0, "persist.adb.tls_server.enable"

    .line 75
    if-eqz p1, :cond_1

    .line 77
    invoke-static {}, Landroid/sysprop/AdbProperties;->secure()Ljava/util/Optional;

    .line 80
    move-result-object v2

    .line 81
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/Boolean;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 97
    if-nez v2, :cond_2

    .line 99
    const-string v2, "1"

    .line 101
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 106
    iget-object v2, p0, Lcom/android/server/adb/AdbService;->mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    .line 108
    invoke-direct {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    .line 111
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    const-string v2, "0"

    .line 119
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 124
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    .line 129
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 132
    :cond_2
    :goto_0
    const-string v0, "adbd"

    .line 134
    if-eqz p1, :cond_3

    .line 136
    const-string/jumbo v2, "ctl.start"

    .line 139
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 145
    if-nez v2, :cond_4

    .line 147
    iget-boolean v2, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 149
    if-nez v2, :cond_4

    .line 151
    const-string/jumbo v2, "ctl.stop"

    .line 154
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    .line 159
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 162
    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 166
    move-result-object v0

    .line 167
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_5

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Landroid/debug/IAdbTransport;

    .line 179
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/debug/IAdbTransport;->onAdbEnabled(ZB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_2

    .line 183
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    const-string v4, "Unable to send onAdbEnabled to transport "

    .line 187
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-interface {v2}, Landroid/debug/IAdbTransport;->toString()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    goto :goto_2

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 207
    if-eqz v0, :cond_6

    .line 209
    invoke-virtual {v0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    .line 212
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    const-string v2, "Broadcasting enable = "

    .line 216
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, ", type = "

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 239
    new-instance v0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;

    .line 241
    invoke-direct {v0, p1, p2}, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;-><init>(ZB)V

    .line 244
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 247
    :cond_7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    const-string p1, "adb_enabled"

    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    .line 15
    const-string p1, "adb_wifi_enabled"

    .line 17
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    .line 23
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 3
    iget-object p1, p1, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p1

    .line 9
    const-string/jumbo p3, "rampart_blocked_adb_cmd"

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, p3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    move-result p1

    .line 17
    const-string p3, "AdbService"

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne p1, v1, :cond_0

    .line 22
    const-string/jumbo p1, "onChange : ADB is blocked by Auto Blocker"

    .line 25
    invoke-static {p3, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 38
    iget-object p3, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 40
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {p2, p3, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 56
    move-result-object p1

    .line 57
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 59
    const/4 p3, 0x0

    .line 60
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 63
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 65
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 68
    move-result-object p3

    .line 69
    invoke-static {p2, p0, v2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 79
    iget-object v2, p1, Lcom/android/server/adb/AdbService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 81
    if-nez v2, :cond_1

    .line 83
    iget-object v2, p1, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 88
    move-result-object v2

    .line 89
    iput-object v2, p1, Lcom/android/server/adb/AdbService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 93
    iget-object v2, p1, Lcom/android/server/adb/AdbService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 95
    if-eqz v2, :cond_2

    .line 97
    iget-object v3, p1, Lcom/android/server/adb/AdbService;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 99
    if-nez v3, :cond_2

    .line 101
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p1, Lcom/android/server/adb/AdbService;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 109
    iget-object p1, p1, Lcom/android/server/adb/AdbService;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_3

    .line 117
    const-string/jumbo p1, "onChange : ADB is blocked by MDM"

    .line 120
    invoke-static {p3, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 126
    move-result-object p1

    .line 127
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 129
    const/4 p3, 0x0

    .line 130
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 133
    iget-object p3, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 135
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 137
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 140
    move-result-object v1

    .line 141
    invoke-static {p2, p3, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 151
    move-result-object p1

    .line 152
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 154
    const/4 p3, 0x0

    .line 155
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 158
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 160
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 163
    move-result-object p3

    .line 164
    invoke-static {p2, p0, v2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void

    .line 172
    :cond_3
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    .line 174
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_5

    .line 180
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 182
    iget-object p1, p1, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 184
    const-string p2, "adb_enabled"

    .line 186
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 189
    move-result p1

    .line 190
    if-lez p1, :cond_4

    .line 192
    goto :goto_0

    .line 193
    :cond_4
    move v1, v0

    .line 194
    :goto_0
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 197
    move-result-object p1

    .line 198
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 200
    const/4 p3, 0x0

    .line 201
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 204
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 209
    move-result-object p3

    .line 210
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 213
    move-result-object v0

    .line 214
    invoke-static {p2, p0, p3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    goto :goto_1

    .line 222
    :cond_5
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    .line 224
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_7

    .line 230
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 232
    iget-object p1, p1, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 234
    const-string p2, "adb_wifi_enabled"

    .line 236
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 239
    move-result p1

    .line 240
    if-lez p1, :cond_6

    .line 242
    move v0, v1

    .line 243
    :cond_6
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 246
    move-result-object p1

    .line 247
    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    .line 249
    const/4 p3, 0x0

    .line 250
    invoke-direct {p2, p3}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 253
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 255
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    move-result-object p3

    .line 259
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 262
    move-result-object v0

    .line 263
    invoke-static {p2, p0, p3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    :cond_7
    :goto_1
    return-void
.end method
