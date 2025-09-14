.class public final Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isAttachedAuthPad:Z

.field public final synthetic this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string/jumbo p1, "misc_event"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string/jumbo v1, "sec_plug_type"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    and-int/lit8 v2, p1, 0x40

    .line 17
    .line 18
    const/16 v3, 0x40

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    move v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v0

    .line 26
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v5, "onReceive: "

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, ", misc_event: "

    .line 42
    .line 43
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p2, ", plug event: "

    .line 50
    .line 51
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, "BattAuthManager_WpcAuthenticator"

    .line 55
    .line 56
    invoke-static {v3, v1, p2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    and-int/lit16 v1, p1, 0x200

    .line 60
    .line 61
    const/16 v3, 0x200

    .line 62
    .line 63
    const/4 v5, 0x3

    .line 64
    if-ne v1, v3, :cond_2

    .line 65
    .line 66
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    .line 67
    .line 68
    new-instance v1, Ljava/io/FileReader;

    .line 69
    .line 70
    const-string v2, "/sys/class/power_supply/battery/wpc_auth_mode"

    .line 71
    .line 72
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    invoke-direct {v1, v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .line 90
    .line 91
    move v0, v1

    .line 92
    goto :goto_3

    .line 93
    :catch_0
    move-exception p1

    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception v1

    .line 96
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 105
    :goto_2
    const-string v1, "exception in readAuthMode"

    .line 106
    .line 107
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    :goto_3
    if-eq v0, v5, :cond_1

    .line 111
    .line 112
    const/4 p1, 0x4

    .line 113
    if-ne v0, p1, :cond_7

    .line 114
    .line 115
    :cond_1
    const-string p1, "Starting authentication"

    .line 116
    .line 117
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iput-boolean v4, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    .line 121
    .line 122
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    .line 125
    .line 126
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_2
    if-nez v2, :cond_3

    .line 131
    .line 132
    iget-boolean v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    .line 133
    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    const-string p1, "Auth pad has been detached"

    .line 137
    .line 138
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iput-boolean v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    .line 142
    .line 143
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_3
    iget-boolean p2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    .line 152
    .line 153
    if-eqz p2, :cond_7

    .line 154
    .line 155
    const/16 p2, 0x400

    .line 156
    .line 157
    and-int/2addr p1, p2

    .line 158
    if-ne p1, p2, :cond_7

    .line 159
    .line 160
    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 161
    .line 162
    iget-object p1, p1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eq p1, v4, :cond_6

    .line 169
    .line 170
    const/4 p2, 0x2

    .line 171
    if-eq p1, p2, :cond_5

    .line 172
    .line 173
    if-eq p1, v5, :cond_4

    .line 174
    .line 175
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 176
    .line 177
    sget-object p1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->STATUS_NONE:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 178
    .line 179
    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 183
    .line 184
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    .line 185
    .line 186
    const/16 p1, 0x8

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 193
    .line 194
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    .line 195
    .line 196
    const/4 p1, 0x5

    .line 197
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    .line 204
    .line 205
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    .line 207
    .line 208
    :cond_7
    :goto_4
    return-void
.end method
