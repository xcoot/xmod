.class public final Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sparse-switch v3, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v3, "force_refresh"

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v2, 0x2

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string/jumbo v3, "reset_server_config_for_tests"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string/jumbo v3, "set_server_config_for_tests"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move v2, v0

    .line 53
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0

    .line 61
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 62
    .line 63
    iget-object v1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-string v2, "android.permission.SET_TIME"

    .line 66
    .line 67
    const-string v3, "force network time refresh"

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    :try_start_0
    iget-object v3, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 77
    .line 78
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v4, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 80
    .line 81
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 82
    if-nez v4, :cond_4

    .line 83
    .line 84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    move v4, v0

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    :try_start_2
    iget-object v3, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$1;

    .line 92
    .line 93
    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    .line 94
    .line 95
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Ljava/lang/Long;

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 102
    .line 103
    .line 104
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :try_start_3
    iput-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    .line 106
    .line 107
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :try_start_4
    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 109
    .line 110
    invoke-virtual {v5, v4}, Landroid/util/NtpTrustedTime;->forceRefresh(Landroid/net/Network;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v6, "forceRefreshForTests: refreshSuccessful="

    .line 117
    .line 118
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v3, v5}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 134
    .line 135
    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    if-nez v5, :cond_5

    .line 140
    .line 141
    const-string p1, "forceRefreshForTests: cachedTimeResult unexpectedly null"

    .line 142
    .line 143
    invoke-virtual {v3, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    const-string v3, "EngineImpl.forceRefreshForTests()"

    .line 148
    .line 149
    invoke-static {v5, v3, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    .line 151
    .line 152
    :cond_6
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 160
    .line 161
    .line 162
    return v0

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 166
    :catchall_1
    move-exception p0

    .line 167
    goto :goto_3

    .line 168
    :catchall_2
    move-exception p0

    .line 169
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 170
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 171
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V

    .line 178
    .line 179
    .line 180
    return v0

    .line 181
    :pswitch_2
    new-instance p1, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    if-eqz v2, :cond_9

    .line 191
    .line 192
    const-string v3, "--timeout_millis"

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-nez v3, :cond_8

    .line 199
    .line 200
    const-string v3, "--server"

    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_7

    .line 207
    .line 208
    :try_start_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v2}, Landroid/util/NtpTrustedTime;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :catch_0
    move-exception p0

    .line 221
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    const-string v0, "Bad NTP server value"

    .line 224
    .line 225
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    throw p1

    .line 229
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    const-string p1, "Unknown option: "

    .line 232
    .line 233
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p0

    .line 241
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    int-to-long v1, v1

    .line 250
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    goto :goto_4

    .line 255
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-nez v2, :cond_b

    .line 260
    .line 261
    if-eqz v1, :cond_a

    .line 262
    .line 263
    new-instance v2, Landroid/util/NtpTrustedTime$NtpConfig;

    .line 264
    .line 265
    invoke-direct {v2, p1, v1}, Landroid/util/NtpTrustedTime$NtpConfig;-><init>(Ljava/util/List;Ljava/time/Duration;)V

    .line 266
    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V

    .line 271
    .line 272
    .line 273
    return v0

    .line 274
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    const-string p1, "Missing required option: ----timeout_millis"

    .line 277
    .line 278
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p0

    .line 282
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 283
    .line 284
    const-string p1, "Missing required option: ----server"

    .line 285
    .line 286
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p0

    .line 290
    nop

    .line 291
    :sswitch_data_0
    .sparse-switch
        -0x641cecf3 -> :sswitch_2
        0x3eebcfa -> :sswitch_1
        0x70bba987 -> :sswitch_0
    .end sparse-switch

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "network_time_update_service"

    .line 6
    .line 7
    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Network Time Update Service (%s) commands:\n"

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v1, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "  help\n"

    .line 21
    .line 22
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 23
    .line 24
    .line 25
    const-string v1, "    Print this help text.\n"

    .line 26
    .line 27
    new-array v2, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 30
    .line 31
    .line 32
    const-string v1, "force_refresh"

    .line 33
    .line 34
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "  %s\n"

    .line 39
    .line 40
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 41
    .line 42
    .line 43
    const-string v1, "    Refreshes the latest time. Prints whether it was successful.\n"

    .line 44
    .line 45
    new-array v3, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v1, "set_server_config_for_tests"

    .line 51
    .line 52
    .line 53
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 58
    .line 59
    .line 60
    const-string v3, "    Sets the NTP server config for tests. The config is not persisted.\n"

    .line 61
    .line 62
    new-array v4, v0, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 65
    .line 66
    .line 67
    const-string v3, "--server"

    .line 68
    .line 69
    const-string v4, "--timeout_millis"

    .line 70
    .line 71
    filled-new-array {v3, v3, v4}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "      Options: %s <uri> [%s <additional uris>]+ %s <millis>\n"

    .line 76
    .line 77
    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 78
    .line 79
    .line 80
    const-string v3, "      NTP server URIs must be in the form \"ntp://hostname\" or \"ntp://hostname:port\"\n"

    .line 81
    .line 82
    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {p0, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v0, "reset_server_config_for_tests"

    .line 88
    .line 89
    .line 90
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 95
    .line 96
    .line 97
    const-string v0, "    Resets/clears the NTP server config set via %s.\n"

    .line 98
    .line 99
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 107
    .line 108
    .line 109
    return-void
.end method
