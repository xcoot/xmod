.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 5
    .line 6
    return-void
.end method

.method public static handleError(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "error calling "

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "VoiceInteractionManager"

    .line 8
    .line 9
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    .line 11
    .line 12
    const-string v0, "Error calling %s: %s\n"

    .line 13
    .line 14
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, v0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sparse-switch v4, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_0
    const-string/jumbo v4, "restart-detection"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :sswitch_1
    const-string v4, "disable"

    .line 36
    .line 37
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v3, 0x3

    .line 45
    goto :goto_0

    .line 46
    :sswitch_2
    const-string/jumbo v4, "show"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v3, 0x2

    .line 57
    goto :goto_0

    .line 58
    :sswitch_3
    const-string v4, "hide"

    .line 59
    .line 60
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move v3, v1

    .line 68
    goto :goto_0

    .line 69
    :sswitch_4
    const-string/jumbo v4, "set-debug-hotword-logging"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    move v3, v0

    .line 80
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0

    .line 88
    :pswitch_0
    const-string p1, "VoiceInteractionManager"

    .line 89
    .line 90
    const-string/jumbo v3, "requestRestartDetection()"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->forceRestartHotwordDetector()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p0

    .line 103
    invoke-static {v2, p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move v0, v1

    .line 107
    :goto_1
    return v0

    .line 108
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v4, "requestDisable(): "

    .line 119
    .line 120
    .line 121
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const-string v4, "VoiceInteractionManager"

    .line 132
    .line 133
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :try_start_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setDisabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_1
    move-exception p0

    .line 143
    const-string/jumbo p1, "requestDisable()"

    .line 144
    .line 145
    .line 146
    invoke-static {v2, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    move v0, v1

    .line 150
    :goto_2
    return v0

    .line 151
    :pswitch_2
    const-string p1, "VoiceInteractionManager"

    .line 152
    .line 153
    const-string/jumbo v3, "requestShow()"

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 160
    .line 161
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 162
    .line 163
    .line 164
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;

    .line 170
    .line 171
    invoke-direct {v8, v2, v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;-><init>(Ljava/io/PrintWriter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 172
    .line 173
    .line 174
    :try_start_2
    new-instance v5, Landroid/os/Bundle;

    .line 175
    .line 176
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 177
    .line 178
    .line 179
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 180
    .line 181
    const/4 v6, 0x0

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v9, 0x0

    .line 184
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-nez p0, :cond_6

    .line 189
    .line 190
    const-string/jumbo p0, "showSessionForActiveService() returned false"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :goto_3
    move v0, v1

    .line 197
    goto :goto_5

    .line 198
    :catch_2
    move-exception p0

    .line 199
    goto :goto_4

    .line 200
    :cond_6
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 201
    .line 202
    const-wide/16 v3, 0x1388

    .line 203
    .line 204
    invoke-virtual {p1, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_7

    .line 209
    .line 210
    const-string p0, "Callback not called in %d ms\n"

    .line 211
    .line 212
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {v2, p0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :goto_4
    const-string/jumbo p1, "showSessionForActiveService()"

    .line 225
    .line 226
    .line 227
    invoke-static {v2, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_7
    :goto_5
    return v0

    .line 232
    :pswitch_3
    const-string p1, "VoiceInteractionManager"

    .line 233
    .line 234
    const-string/jumbo v3, "requestHide()"

    .line 235
    .line 236
    .line 237
    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    :try_start_3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->hideCurrentSession()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :catch_3
    move-exception p0

    .line 247
    invoke-static {v2, p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    move v0, v1

    .line 251
    :goto_6
    return v0

    .line 252
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    const-string v3, "VoiceInteractionManager"

    .line 261
    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string/jumbo v5, "setDebugHotwordLogging(): "

    .line 265
    .line 266
    .line 267
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    :try_start_4
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 281
    .line 282
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 283
    :try_start_5
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 284
    .line 285
    if-nez v3, :cond_8

    .line 286
    .line 287
    const-string p1, "VoiceInteractionManager"

    .line 288
    .line 289
    const-string/jumbo v3, "setTemporaryLogging without running voice interaction service"

    .line 290
    .line 291
    .line 292
    invoke-static {p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    monitor-exit p0

    .line 296
    goto :goto_8

    .line 297
    :catchall_0
    move-exception p1

    .line 298
    goto :goto_7

    .line 299
    :cond_8
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 300
    .line 301
    invoke-virtual {v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setDebugHotwordLoggingLocked(Z)V

    .line 302
    .line 303
    .line 304
    monitor-exit p0

    .line 305
    goto :goto_8

    .line 306
    :goto_7
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 307
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 308
    :catch_4
    move-exception p0

    .line 309
    const-string/jumbo p1, "setDebugHotwordLogging()"

    .line 310
    .line 311
    .line 312
    invoke-static {v2, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    move v0, v1

    .line 316
    :goto_8
    return v0

    .line 317
    :sswitch_data_0
    .sparse-switch
        -0x4163e63c -> :sswitch_4
        0x30dd42 -> :sswitch_3
        0x35dafd -> :sswitch_2
        0x639e22e8 -> :sswitch_1
        0x66744447 -> :sswitch_0
    .end sparse-switch

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v1, "VoiceInteraction Service (voiceinteraction) commands:"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "  help"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "    Prints this help text."

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "  show"

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "    Shows a session for the active service"

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "  hide"

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "    Hides the current session"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "  disable [true|false]"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "    Temporarily disable (when true) service"

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "  restart-detection"

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "    Force a restart of a hotword detection service"

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "  set-debug-hotword-logging [true|false]"

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "    Temporarily enable or disable debug logging for hotword result."

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "    The debug logging will be reset after one hour from last enable."

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    if-eqz p0, :cond_0

    .line 101
    .line 102
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_1
    move-exception p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :cond_0
    :goto_0
    throw v0
.end method
