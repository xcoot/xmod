.class public final Lcom/android/server/media/MediaShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public static sThread:Landroid/app/ActivityThread;


# instance fields
.field public mErrorWriter:Ljava/io/PrintWriter;

.field public mInput:Ljava/io/InputStream;

.field public final mPackageName:Ljava/lang/String;

.field public mSessionService:Landroid/media/session/ISessionManager;

.field public mWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, " "

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "Error: unknown command \'"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/android/server/media/MediaShellCommand;->mInput:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_0
    sget-object v1, Lcom/android/server/media/MediaShellCommand;->sThread:Landroid/app/ActivityThread;

    .line 33
    .line 34
    const-string/jumbo v2, "media_session"

    .line 35
    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Lcom/android/server/media/MediaShellCommand;->sThread:Landroid/app/ActivityThread;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 57
    .line 58
    sput-object v1, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 59
    .line 60
    :cond_1
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    const/4 v1, -0x1

    .line 73
    :try_start_0
    const-string/jumbo v2, "dispatch"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->runDispatch()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const-string/jumbo v2, "list-sessions"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->runListSessions()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-string/jumbo v2, "monitor"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->runMonitor()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    const-string/jumbo v2, "volume"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->runVolume()V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    const-string/jumbo v2, "expire-temp-engaged-sessions"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_6

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    .line 137
    .line 138
    invoke-interface {p1}, Landroid/media/session/ISessionManager;->expireTempEngagedSessions()V

    .line 139
    .line 140
    .line 141
    :goto_0
    const/4 p0, 0x0

    .line 142
    return p0

    .line 143
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, "\'"

    .line 152
    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    return v1

    .line 164
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return v1

    .line 172
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    const-string p1, "Can\'t connect to media session service; is the system running?"

    .line 175
    .line 176
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p0
.end method

.method public final onHelp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 2
    .line 3
    const-string/jumbo v1, "usage: media_session [subcommand] [options]"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 10
    .line 11
    const-string v1, "       media_session dispatch KEY"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 17
    .line 18
    const-string v1, "       media_session list-sessions"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 24
    .line 25
    const-string v1, "       media_session monitor <tag>"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 31
    .line 32
    const-string v1, "       media_session volume [options]"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 38
    .line 39
    const-string v1, "       media_session expire-temp-engaged-sessions"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 50
    .line 51
    const-string/jumbo v1, "media_session dispatch: dispatch a media key to the system."

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 58
    .line 59
    const-string v1, "                KEY may be: play, pause, play-pause, mute, headsethook,"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 65
    .line 66
    const-string v1, "                stop, next, previous, rewind, record, fast-forward."

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 72
    .line 73
    const-string/jumbo v1, "media_session list-sessions: print a list of the current sessions."

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 80
    .line 81
    const-string/jumbo v1, "media_session monitor: monitor updates to the specified session."

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 88
    .line 89
    const-string v1, "                       Use the tag from list-sessions."

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 95
    .line 96
    sget-object v1, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    .line 97
    .line 98
    const-string/jumbo v2, "media_session volume:  "

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 109
    .line 110
    const-string/jumbo v1, "media_session expire-temp-engaged-sessions: Expires any ongoing"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 117
    .line 118
    const-string v1, "                timers for media sessions in a temporary user-engaged"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 124
    .line 125
    const-string v1, "                state."

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final runDispatch()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "play"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x7e

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    const-string/jumbo v2, "pause"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x7f

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string/jumbo v2, "play-pause"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const/16 v1, 0x55

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string/jumbo v2, "mute"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const/16 v1, 0x5b

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string/jumbo v2, "headsethook"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    const/16 v1, 0x4f

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const-string/jumbo v2, "stop"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    const/16 v1, 0x56

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const-string/jumbo v2, "next"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    const/16 v1, 0x57

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    const-string/jumbo v2, "previous"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_7

    .line 100
    .line 101
    const/16 v1, 0x58

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    const-string/jumbo v2, "rewind"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_8

    .line 112
    .line 113
    const/16 v1, 0x59

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    const-string/jumbo v2, "record"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_9

    .line 124
    .line 125
    const/16 v1, 0x82

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_9
    const-string/jumbo v2, "fast-forward"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_a

    .line 136
    .line 137
    const/16 v1, 0x5a

    .line 138
    .line 139
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v15

    .line 143
    new-instance v14, Landroid/view/KeyEvent;

    .line 144
    .line 145
    const/4 v11, -0x1

    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v7, 0x0

    .line 148
    const/4 v9, 0x0

    .line 149
    const/4 v10, 0x0

    .line 150
    const/4 v13, 0x0

    .line 151
    const/16 v17, 0x101

    .line 152
    .line 153
    move-object v2, v14

    .line 154
    move-wide v3, v15

    .line 155
    move-wide v5, v15

    .line 156
    move v8, v1

    .line 157
    move/from16 v18, v1

    .line 158
    .line 159
    move-object v1, v14

    .line 160
    move/from16 v14, v17

    .line 161
    .line 162
    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 163
    .line 164
    .line 165
    const/4 v14, 0x0

    .line 166
    :try_start_0
    iget-object v2, v0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    .line 167
    .line 168
    iget-object v3, v0, Lcom/android/server/media/MediaShellCommand;->mPackageName:Ljava/lang/String;

    .line 169
    .line 170
    invoke-interface {v2, v3, v14, v1, v14}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    :catch_0
    new-instance v1, Landroid/view/KeyEvent;

    .line 174
    .line 175
    const/4 v11, -0x1

    .line 176
    const/4 v12, 0x0

    .line 177
    const/4 v7, 0x1

    .line 178
    const/4 v9, 0x0

    .line 179
    const/4 v10, 0x0

    .line 180
    const/4 v13, 0x0

    .line 181
    const/16 v17, 0x101

    .line 182
    .line 183
    move-object v2, v1

    .line 184
    move-wide v3, v15

    .line 185
    move-wide v5, v15

    .line 186
    move/from16 v8, v18

    .line 187
    .line 188
    move v15, v14

    .line 189
    move/from16 v14, v17

    .line 190
    .line 191
    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 192
    .line 193
    .line 194
    :try_start_1
    iget-object v2, v0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    .line 195
    .line 196
    iget-object v0, v0, Lcom/android/server/media/MediaShellCommand;->mPackageName:Ljava/lang/String;

    .line 197
    .line 198
    invoke-interface {v2, v0, v15, v1, v15}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    .line 200
    .line 201
    :catch_1
    return-void

    .line 202
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v3, "Error: unknown dispatch code \'"

    .line 205
    .line 206
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, "\'"

    .line 213
    .line 214
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public final runListSessions()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 2
    .line 3
    const-string v1, "Sessions:"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/media/session/MediaController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "  tag="

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v4, ", package="

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_1
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 73
    .line 74
    const-string v0, "***Error listing sessions***"

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public final runMonitor()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Error: must include a session id"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :catch_0
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/media/session/MediaController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    new-instance v3, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    .line 49
    .line 50
    invoke-direct {v3, p0, v2}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;-><init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->run()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_1
    move-exception v1

    .line 58
    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v4, "***Error monitoring session*** "

    .line 63
    .line 64
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 82
    .line 83
    const-string v1, "No session found with id "

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public final runVolume()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v7, 0x0

    .line 9
    move v14, v1

    .line 10
    move v15, v2

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v12, 0x0

    .line 13
    const/4 v13, 0x0

    .line 14
    const/16 v16, 0x0

    .line 15
    .line 16
    const/16 v17, 0x0

    .line 17
    .line 18
    const/16 v18, 0x0

    .line 19
    .line 20
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    const-string/jumbo v19, "invalid stream"

    .line 25
    .line 26
    .line 27
    const-string v11, "[V]"

    .line 28
    .line 29
    if-eqz v9, :cond_8

    .line 30
    .line 31
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    sparse-switch v10, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    :goto_1
    move v10, v3

    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :sswitch_0
    const-string v10, "--stream"

    .line 42
    .line 43
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-nez v10, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 v10, 0x7

    .line 51
    goto :goto_2

    .line 52
    :sswitch_1
    const-string v10, "--show"

    .line 53
    .line 54
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-nez v10, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v10, 0x6

    .line 62
    goto :goto_2

    .line 63
    :sswitch_2
    const-string v10, "--getfine"

    .line 64
    .line 65
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-nez v10, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v10, v1

    .line 73
    goto :goto_2

    .line 74
    :sswitch_3
    const-string v10, "--device"

    .line 75
    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-nez v10, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v10, 0x4

    .line 84
    goto :goto_2

    .line 85
    :sswitch_4
    const-string v10, "--set"

    .line 86
    .line 87
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-nez v10, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move v10, v2

    .line 95
    goto :goto_2

    .line 96
    :sswitch_5
    const-string v10, "--get"

    .line 97
    .line 98
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-nez v10, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    move v10, v5

    .line 106
    goto :goto_2

    .line 107
    :sswitch_6
    const-string v10, "--adj"

    .line 108
    .line 109
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-nez v10, :cond_6

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    move v10, v4

    .line 117
    goto :goto_2

    .line 118
    :sswitch_7
    const-string v10, "--setfine"

    .line 119
    .line 120
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-nez v10, :cond_7

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    const/4 v10, 0x0

    .line 128
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 129
    .line 130
    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    const-string v1, "Unknown argument "

    .line 134
    .line 135
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    const-string/jumbo v9, "will control stream="

    .line 156
    .line 157
    .line 158
    const-string v10, " ("

    .line 159
    .line 160
    invoke-static {v15, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    :try_start_0
    sget-object v10, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    .line 165
    .line 166
    aget-object v19, v10, v15
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    :catch_0
    move-object/from16 v10, v19

    .line 169
    .line 170
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v10, ")"

    .line 174
    .line 175
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-virtual {v0, v11, v9}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :pswitch_1
    move v13, v4

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_2
    const-string/jumbo v9, "will get fine volume"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v11, v9}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    move/from16 v17, v4

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    const-string/jumbo v9, "will set device"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v11, v9}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result v14

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string/jumbo v9, "will set volume to index="

    .line 235
    .line 236
    .line 237
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    invoke-virtual {v0, v11, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    move v8, v4

    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :pswitch_5
    const-string/jumbo v9, "will get volume"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v11, v9}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    move/from16 v16, v4

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    const-string/jumbo v8, "will adjust volume"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v11, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    move v8, v5

    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v14

    .line 288
    const-string/jumbo v9, "will set fine volume"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v11, v9}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    move/from16 v18, v4

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_8
    if-ne v8, v5, :cond_d

    .line 299
    .line 300
    if-nez v7, :cond_9

    .line 301
    .line 302
    const-string v1, "Error: no valid volume adjustment (null)"

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_9

    .line 308
    .line 309
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    sparse-switch v1, :sswitch_data_1

    .line 314
    .line 315
    .line 316
    :goto_3
    move v1, v3

    .line 317
    goto :goto_4

    .line 318
    :sswitch_8
    const-string/jumbo v1, "raise"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_a

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_a
    move v1, v5

    .line 329
    goto :goto_4

    .line 330
    :sswitch_9
    const-string/jumbo v1, "lower"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-nez v1, :cond_b

    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_b
    move v1, v4

    .line 341
    goto :goto_4

    .line 342
    :sswitch_a
    const-string/jumbo v1, "same"

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_c

    .line 350
    .line 351
    goto :goto_3

    .line 352
    :cond_c
    const/4 v1, 0x0

    .line 353
    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 354
    .line 355
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v2, "Error: no valid volume adjustment, was "

    .line 359
    .line 360
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v2, ", expected lower|same|raise"

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_9

    .line 379
    .line 380
    :cond_d
    :pswitch_8
    move v3, v4

    .line 381
    goto :goto_5

    .line 382
    :pswitch_9
    const/4 v3, 0x0

    .line 383
    :goto_5
    :pswitch_a
    const-string v1, "Connecting to AudioService"

    .line 384
    .line 385
    invoke-virtual {v0, v11, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string v1, "audio"

    .line 389
    .line 390
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    if-eqz v1, :cond_19

    .line 399
    .line 400
    if-ne v8, v4, :cond_f

    .line 401
    .line 402
    invoke-interface {v1, v15}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    if-gt v14, v7, :cond_e

    .line 407
    .line 408
    invoke-interface {v1, v15}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    if-ge v14, v7, :cond_f

    .line 413
    .line 414
    :cond_e
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-interface {v1, v15}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-interface {v1, v15}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    const-string v2, "Error: invalid volume index %d for stream %d (should be in [%d..%d])"

    .line 443
    .line 444
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_9

    .line 452
    .line 453
    :cond_f
    const-class v7, Lcom/android/server/media/MediaShellCommand;

    .line 454
    .line 455
    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    if-ne v8, v4, :cond_11

    .line 464
    .line 465
    if-eqz v12, :cond_10

    .line 466
    .line 467
    const/4 v3, 0x0

    .line 468
    move-object v9, v1

    .line 469
    move v10, v15

    .line 470
    move-object v4, v11

    .line 471
    move v11, v14

    .line 472
    move v5, v12

    .line 473
    move v12, v13

    .line 474
    move v8, v13

    .line 475
    move-object v13, v7

    .line 476
    move v6, v14

    .line 477
    move-object v14, v3

    .line 478
    move v3, v15

    .line 479
    move v15, v5

    .line 480
    invoke-interface/range {v9 .. v15}, Landroid/media/IAudioService;->setStreamVolumeForDeviceWithAttribution(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 481
    .line 482
    .line 483
    move v15, v3

    .line 484
    move v12, v5

    .line 485
    move v13, v8

    .line 486
    goto :goto_6

    .line 487
    :cond_10
    move-object v4, v11

    .line 488
    move v5, v12

    .line 489
    move v8, v13

    .line 490
    move v6, v14

    .line 491
    move v3, v15

    .line 492
    invoke-interface {v1, v3, v6, v8, v7}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 493
    .line 494
    .line 495
    goto :goto_6

    .line 496
    :cond_11
    move-object v4, v11

    .line 497
    move v6, v14

    .line 498
    if-ne v8, v5, :cond_12

    .line 499
    .line 500
    invoke-interface {v1, v15, v3, v13, v7}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 501
    .line 502
    .line 503
    :cond_12
    :goto_6
    if-eqz v16, :cond_14

    .line 504
    .line 505
    if-eqz v12, :cond_13

    .line 506
    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    const-string/jumbo v5, "device : "

    .line 510
    .line 511
    .line 512
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v12}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v5

    .line 519
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    const-string v5, " stream("

    .line 523
    .line 524
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    :try_start_1
    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    .line 528
    .line 529
    aget-object v19, v5, v15
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 530
    .line 531
    :catch_1
    move-object/from16 v5, v19

    .line 532
    .line 533
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v5, ") volume is "

    .line 537
    .line 538
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-static {v15, v12}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    .line 542
    .line 543
    .line 544
    move-result v5

    .line 545
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    invoke-virtual {v0, v4, v3}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    goto :goto_7

    .line 556
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string/jumbo v5, "volume is "

    .line 559
    .line 560
    .line 561
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-interface {v1, v15}, Landroid/media/IAudioService;->getStreamVolume(I)I

    .line 565
    .line 566
    .line 567
    move-result v5

    .line 568
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    const-string v5, " in range ["

    .line 572
    .line 573
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-interface {v1, v15}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v5, ".."

    .line 584
    .line 585
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-interface {v1, v15}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    .line 589
    .line 590
    .line 591
    move-result v5

    .line 592
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string v5, "]"

    .line 596
    .line 597
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v0, v4, v3}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    :cond_14
    :goto_7
    if-eqz v18, :cond_17

    .line 608
    .line 609
    const/high16 v3, 0x100000

    .line 610
    .line 611
    or-int v12, v13, v3

    .line 612
    .line 613
    invoke-interface {v1, v2}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    mul-int/lit8 v3, v3, 0xa

    .line 618
    .line 619
    if-gt v6, v3, :cond_16

    .line 620
    .line 621
    if-gez v6, :cond_15

    .line 622
    .line 623
    goto :goto_8

    .line 624
    :cond_15
    const/4 v10, 0x3

    .line 625
    const/4 v13, 0x0

    .line 626
    move-object v9, v1

    .line 627
    move v11, v6

    .line 628
    move-object v14, v7

    .line 629
    invoke-interface/range {v9 .. v14}, Landroid/media/IAudioService;->setFineVolume(IIIILjava/lang/String;)V

    .line 630
    .line 631
    .line 632
    goto :goto_9

    .line 633
    :cond_16
    :goto_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    invoke-interface {v1, v2}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    mul-int/lit8 v1, v1, 0xa

    .line 642
    .line 643
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    const-string v2, "Error: invalid volume index %d(should be in [0..%d])"

    .line 652
    .line 653
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    goto :goto_9

    .line 661
    :cond_17
    if-eqz v17, :cond_18

    .line 662
    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    const-string/jumbo v5, "fine volume is "

    .line 666
    .line 667
    .line 668
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    const/4 v5, 0x0

    .line 672
    invoke-interface {v1, v2, v5}, Landroid/media/IAudioService;->getFineVolume(II)I

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-virtual {v0, v4, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    :cond_18
    :goto_9
    return-void

    .line 687
    :cond_19
    const-string v1, "[E]"

    .line 688
    .line 689
    const-string v2, "Error type 2"

    .line 690
    .line 691
    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    new-instance v0, Landroid/util/AndroidException;

    .line 695
    .line 696
    const-string v1, "Can\'t connect to audio service; is the system running?"

    .line 697
    .line 698
    invoke-direct {v0, v1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    throw v0

    .line 702
    nop

    .line 703
    :sswitch_data_0
    .sparse-switch
        -0x370ae884 -> :sswitch_7
        0x2900f07 -> :sswitch_6
        0x29025b6 -> :sswitch_5
        0x29052c2 -> :sswitch_4
        0x3f786bf6 -> :sswitch_3
        0x4e2a5070 -> :sswitch_2
        0x4f7a109d -> :sswitch_1
        0x59e29d20 -> :sswitch_0
    .end sparse-switch

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    :sswitch_data_1
    .sparse-switch
        0x35c066 -> :sswitch_a
        0x6262b01 -> :sswitch_9
        0x67427ec -> :sswitch_8
    .end sparse-switch

    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->onHelp()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
