.class public final Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 7
    move-result p0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "set"

    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 22
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    const-string/jumbo v2, "temporary-package"

    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_4

    .line 43
    const-string/jumbo v2, "token-duration"

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 52
    goto/16 :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    if-nez p1, :cond_3

    .line 60
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 62
    const p1, 0x927c0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->setTokenValidDurationMs(I)V

    .line 68
    const-string p0, "ContextualSearchManagerService token duration reset."

    .line 70
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    return v0

    .line 74
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    move-result p1

    .line 78
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->setTokenValidDurationMs(I)V

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "ContextualSearchManagerService temporarily set token duration to "

    .line 87
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo p1, "ms"

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    if-nez p1, :cond_5

    .line 113
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->resetTemporaryPackage()V

    .line 118
    const-string p0, "ContextualSearchManagerService reset."

    .line 120
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    return v0

    .line 124
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    move-result v2

    .line 132
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 134
    const-string v3, "Max duration is 120000 (called with "

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    const-string/jumbo v4, "setTemporaryPackage"

    .line 140
    invoke-static {v4}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    .line 143
    const v4, 0x1d4c0

    .line 146
    if-gt v2, v4, :cond_7

    .line 148
    iget-object v3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 150
    if-nez v3, :cond_6

    .line 152
    new-instance v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 154
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 157
    move-result-object v4

    .line 158
    invoke-direct {v3, p0, v4, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 161
    iput-object v3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 163
    goto :goto_0

    .line 164
    :catchall_0
    move-exception p1

    .line 165
    goto :goto_2

    .line 166
    :cond_6
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    :goto_0
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 171
    iget-object v3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 176
    move-result-object v3

    .line 177
    const-string/jumbo v4, "contextual_search_package"

    .line 180
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    .line 183
    move-result-object v5

    .line 184
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    iget-object v3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 189
    int-to-long v4, v2

    .line 190
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    const-string p0, "ContextualSearchManagerService temporarily set to "

    .line 196
    const-string v3, " for "

    .line 198
    const-string/jumbo v4, "ms"

    .line 201
    invoke-static {v2, p0, p1, v3, v4}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    :goto_1
    return v0

    .line 209
    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ")"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 231
    throw p1

    .line 232
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    throw p1
.end method

.method public final onHelp()V
    .locals 3

    .line 1
    const-string v0, "    To reset, call without any arguments."

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 8
    move-result-object p0

    .line 9
    :try_start_0
    const-string v2, "ContextualSearchService commands:"

    .line 11
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    const-string v2, "  help"

    .line 16
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    const-string v2, "    Prints this help text."

    .line 21
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    const-string v2, "  set temporary-package [PACKAGE_NAME DURATION]"

    .line 29
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    const-string v2, "    Temporarily (for DURATION ms) changes the Contextual Search implementation."

    .line 34
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    const-string v2, "  set token-duration [DURATION]"

    .line 42
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    const-string v2, "    Changes the Contextual Search token duration to DURATION ms."

    .line 47
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    if-eqz p0, :cond_0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    goto :goto_0

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    :cond_0
    :goto_0
    throw v0
.end method
