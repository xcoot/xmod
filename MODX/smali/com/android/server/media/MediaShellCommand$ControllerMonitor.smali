.class public final Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mController:Landroid/media/session/MediaController;

.field public final mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

.field public final synthetic this$0:Lcom/android/server/media/MediaShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 6
    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 8
    new-instance p2, Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    .line 10
    invoke-direct {p2, p1}, Lcom/android/server/media/MediaShellCommand$ControllerCallback;-><init>(Lcom/android/server/media/MediaShellCommand;)V

    .line 13
    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    .line 15
    return-void
.end method


# virtual methods
.method public final dispatchKeyCode(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    move-result-wide v14

    .line 7
    new-instance v13, Landroid/view/KeyEvent;

    .line 9
    const/4 v10, -0x1

    .line 10
    const/4 v11, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v12, 0x0

    .line 15
    const/16 v16, 0x101

    .line 17
    move-object v1, v13

    .line 18
    move-wide v2, v14

    .line 19
    move-wide v4, v14

    .line 20
    move/from16 v7, p1

    .line 22
    move-object/from16 v17, v13

    .line 24
    move/from16 v13, v16

    .line 26
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 29
    new-instance v13, Landroid/view/KeyEvent;

    .line 31
    const/4 v6, 0x1

    .line 32
    move-object v1, v13

    .line 33
    move-object v14, v13

    .line 34
    move/from16 v13, v16

    .line 36
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 39
    :try_start_0
    iget-object v1, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 41
    move-object/from16 v2, v17

    .line 43
    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 46
    iget-object v1, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 48
    invoke-virtual {v1, v14}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    iget-object v0, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 54
    iget-object v0, v0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 56
    const-string v1, "Failed to dispatch "

    .line 58
    move/from16 v2, p1

    .line 60
    invoke-static {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 63
    :goto_0
    return-void
.end method

.method public final printUsageMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 3
    const-string v1, "V2Monitoring session "

    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 14
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, "...  available commands: play, pause, next, previous"

    .line 23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    iget-object p0, v0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 36
    const-string v1, "Error trying to monitor session!"

    .line 38
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    :goto_0
    iget-object p0, v0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 43
    const-string v0, "(q)uit: finish monitoring"

    .line 45
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public final run()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 4
    new-instance v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;-><init>(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)V

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    .line 14
    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 16
    iget-object v2, v2, Lcom/android/server/media/MediaShellCommand;->mInput:Ljava/io/InputStream;

    .line 18
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 21
    new-instance v2, Ljava/io/BufferedReader;

    .line 23
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 28
    iget-object v1, v1, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 30
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 33
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 35
    iget-object v1, v1, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 37
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 40
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    .line 46
    goto/16 :goto_5

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    move-result v3

    .line 52
    if-gtz v3, :cond_1

    .line 54
    const/4 v1, 0x0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    const-string/jumbo v3, "q"

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_8

    .line 65
    const-string/jumbo v3, "quit"

    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_2

    .line 74
    goto/16 :goto_5

    .line 76
    :cond_2
    const-string/jumbo v3, "play"

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_3

    .line 85
    const/16 v1, 0x7e

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception v1

    .line 92
    goto/16 :goto_9

    .line 94
    :catch_0
    move-exception v1

    .line 95
    goto :goto_7

    .line 96
    :cond_3
    const-string/jumbo v3, "pause"

    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_4

    .line 105
    const/16 v1, 0x7f

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const-string/jumbo v3, "next"

    .line 114
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_5

    .line 120
    const/16 v1, 0x57

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const-string/jumbo v3, "previous"

    .line 129
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_6

    .line 135
    const/16 v1, 0x58

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    .line 140
    goto :goto_1

    .line 141
    :cond_6
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 143
    iget-object v3, v3, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v5, "Invalid command: "

    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    :goto_1
    const/4 v1, 0x1

    .line 166
    :goto_2
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v1, :cond_7

    .line 169
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 171
    iget-object v1, v1, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 173
    const-string v3, ""

    .line 175
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    goto :goto_3

    .line 179
    :catchall_1
    move-exception v1

    .line 180
    goto :goto_4

    .line 181
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 184
    monitor-exit p0

    .line 185
    goto/16 :goto_0

    .line 187
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :cond_8
    :goto_5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 196
    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 198
    :goto_6
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    .line 200
    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 203
    goto :goto_8

    .line 204
    :goto_7
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 214
    :try_start_5
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 216
    goto :goto_6

    .line 217
    :catch_1
    :goto_8
    return-void

    .line 218
    :goto_9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 225
    :try_start_6
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 227
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    .line 229
    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 232
    :catch_2
    throw v1
.end method
