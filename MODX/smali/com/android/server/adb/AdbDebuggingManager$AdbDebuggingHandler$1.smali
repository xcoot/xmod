.class public final Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo p1, "wifi_state"

    .line 18
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    move-result p1

    .line 22
    if-ne p1, v1, :cond_6

    .line 24
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 26
    const-string p1, "AdbDebuggingManager"

    .line 28
    const-string p2, "Wifi disabled. Disabling adbwifi."

    .line 30
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 35
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 37
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 39
    const-string p1, "adb_wifi_enabled"

    .line 41
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    goto/16 :goto_2

    .line 46
    :cond_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_6

    .line 54
    const-string/jumbo p1, "networkInfo"

    .line 57
    const-class v0, Landroid/net/NetworkInfo;

    .line 59
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/net/NetworkInfo;

    .line 65
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 68
    move-result p2

    .line 69
    if-ne p2, v1, :cond_6

    .line 71
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_1

    .line 77
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 79
    const-string p1, "AdbDebuggingManager"

    .line 81
    const-string p2, "Network disconnected. Disabling adbwifi."

    .line 83
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 88
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 90
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    const-string p1, "adb_wifi_enabled"

    .line 94
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    return-void

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 100
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 102
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 104
    const-string/jumbo p2, "wifi"

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 113
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_5

    .line 119
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 122
    move-result p2

    .line 123
    const/4 v0, -0x1

    .line 124
    if-ne p2, v0, :cond_2

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    iget-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 129
    iget-object p2, p2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 131
    iget-object p2, p2, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 133
    monitor-enter p2

    .line 134
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 144
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 146
    const-string p1, "AdbDebuggingManager"

    .line 148
    const-string v0, "Unable to get the wifi ap\'s BSSID. Disabling adbwifi."

    .line 150
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 155
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 157
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 159
    const-string p1, "adb_wifi_enabled"

    .line 161
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    monitor-exit p2

    .line 165
    return-void

    .line 166
    :catchall_0
    move-exception p0

    .line 167
    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 170
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 172
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 174
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 176
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_4

    .line 182
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 184
    const-string p1, "AdbDebuggingManager"

    .line 186
    const-string v0, "Detected wifi network change. Disabling adbwifi."

    .line 188
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 193
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 195
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 197
    const-string p1, "adb_wifi_enabled"

    .line 199
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    :cond_4
    monitor-exit p2

    .line 203
    goto :goto_2

    .line 204
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    throw p0

    .line 206
    :cond_5
    :goto_1
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 208
    const-string p1, "AdbDebuggingManager"

    .line 210
    const-string p2, "Not connected to any wireless network. Not enabling adbwifi."

    .line 212
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 217
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 219
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 221
    const-string p1, "adb_wifi_enabled"

    .line 223
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    :cond_6
    :goto_2
    return-void
.end method
