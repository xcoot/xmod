.class public final Lcom/android/server/wm/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/wm/WindowManagerService$WindowChangeListener;


# instance fields
.field public final mClient:Ljava/net/Socket;

.field public mNeedFocusedWindowUpdate:Z

.field public mNeedWindowListUpdate:Z

.field public final synthetic this$0:Lcom/android/server/wm/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    const-string v1, "An error occurred with the command: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 7
    .line 8
    new-instance v4, Ljava/io/InputStreamReader;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 11
    .line 12
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 17
    .line 18
    .line 19
    const/16 v5, 0x400

    .line 20
    .line 21
    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v4, 0x20

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, -0x1

    .line 35
    const/4 v6, 0x1

    .line 36
    if-ne v4, v5, :cond_0

    .line 37
    .line 38
    const-string v4, ""

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object v2, v3

    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :catch_0
    move-exception v1

    .line 46
    move-object v2, v3

    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_0
    const/4 v5, 0x0

    .line 50
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    add-int/2addr v4, v6

    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    move-object v2, v5

    .line 60
    :goto_0
    const-string v5, "PROTOCOL"

    .line 61
    .line 62
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 69
    .line 70
    invoke-static {v4}, Lcom/android/server/wm/ViewServer;->-$$Nest$smwriteValue(Ljava/net/Socket;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-string v5, "SERVER"

    .line 76
    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 84
    .line 85
    invoke-static {v4}, Lcom/android/server/wm/ViewServer;->-$$Nest$smwriteValue(Ljava/net/Socket;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const-string v5, "LIST"

    .line 91
    .line 92
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_3

    .line 97
    .line 98
    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    .line 99
    .line 100
    iget-object v4, v4, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 101
    .line 102
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const-string v5, "GET_FOCUS"

    .line 110
    .line 111
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_4

    .line 116
    .line 117
    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    .line 118
    .line 119
    iget-object v4, v4, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 120
    .line 121
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const-string v5, "AUTOLIST"

    .line 129
    .line 130
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_5

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    .line 141
    .line 142
    iget-object v5, v5, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 143
    .line 144
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 145
    .line 146
    invoke-virtual {v5, v6, v2, v4}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    :goto_1
    if-nez v6, :cond_6

    .line 151
    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :catch_1
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 176
    .line 177
    if-eqz p0, :cond_8

    .line 178
    .line 179
    :try_start_3
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :catch_2
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :catchall_1
    move-exception v0

    .line 189
    goto :goto_6

    .line 190
    :catch_3
    move-exception v1

    .line 191
    :goto_3
    :try_start_4
    const-string v3, "Connection error: "

    .line 192
    .line 193
    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    .line 195
    .line 196
    if-eqz v2, :cond_7

    .line 197
    .line 198
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :catch_4
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 207
    .line 208
    if-eqz p0, :cond_8

    .line 209
    .line 210
    :try_start_6
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 211
    .line 212
    .line 213
    :cond_8
    :goto_5
    return-void

    .line 214
    :goto_6
    if-eqz v2, :cond_9

    .line 215
    .line 216
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 217
    .line 218
    .line 219
    goto :goto_7

    .line 220
    :catch_5
    move-exception v1

    .line 221
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 222
    .line 223
    .line 224
    :cond_9
    :goto_7
    iget-object p0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 225
    .line 226
    if-eqz p0, :cond_a

    .line 227
    .line 228
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 229
    .line 230
    .line 231
    goto :goto_8

    .line 232
    :catch_6
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    .line 235
    .line 236
    :cond_a
    :goto_8
    throw v0
.end method

.method public final windowManagerAutolistLoop()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 10
    .line 11
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_5

    .line 30
    .line 31
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_5

    .line 46
    :cond_1
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iput-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 51
    .line 52
    move v0, v2

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v0, v3

    .line 55
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    iput-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v2, v3

    .line 63
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    :try_start_3
    const-string v0, "LIST UPDATE\n"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    goto :goto_7

    .line 77
    :catch_0
    move-object v0, v1

    .line 78
    goto :goto_8

    .line 79
    :cond_4
    :goto_4
    if-eqz v2, :cond_0

    .line 80
    .line 81
    const-string v0, "ACTION_FOCUS UPDATE\n"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    :cond_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 93
    .line 94
    .line 95
    :catch_1
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    .line 96
    .line 97
    :goto_6
    iget-object v0, v0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 98
    .line 99
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 100
    .line 101
    .line 102
    goto :goto_9

    .line 103
    :catchall_2
    move-exception v1

    .line 104
    move-object v5, v1

    .line 105
    move-object v1, v0

    .line 106
    move-object v0, v5

    .line 107
    :goto_7
    if-eqz v1, :cond_6

    .line 108
    .line 109
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 110
    .line 111
    .line 112
    :catch_2
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 115
    .line 116
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :catch_3
    :goto_8
    if-eqz v0, :cond_7

    .line 121
    .line 122
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 123
    .line 124
    .line 125
    :catch_4
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :goto_9
    return-void
.end method
