.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;

    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string/jumbo v0, "default-service-enabled"

    .line 4
    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const-string/jumbo v4, "get"

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_5

    .line 26
    const-string/jumbo v4, "set"

    .line 29
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 53
    const-string/jumbo v0, "temporary-service"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 62
    const-string p0, "Invalid set: "

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    move-result p1

    .line 80
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_3

    .line 86
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    move-result v2

    .line 100
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 102
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    const-string p1, "ContentSuggestionsService temporarily set to "

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    const-string p1, " for "

    .line 114
    const-string/jumbo v4, "ms"

    .line 117
    invoke-static {v2, v0, p1, v4, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    :goto_0
    move v2, v3

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    move-result p1

    .line 134
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 141
    move-result v0

    .line 142
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 147
    goto :goto_0

    .line 148
    :goto_1
    return v2

    .line 149
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_6

    .line 162
    const-string p0, "Invalid get: "

    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    goto :goto_2

    .line 172
    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 179
    move-result p1

    .line 180
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDefaultServiceEnabled(I)Z

    .line 185
    move-result p0

    .line 186
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 189
    move v2, v3

    .line 190
    :goto_2
    return v2
.end method

.method public final onHelp()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v1, "ContentSuggestionsManagerService commands:"

    .line 9
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    const-string v1, "  help"

    .line 14
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    const-string v1, "    Prints this help text."

    .line 19
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v1, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    .line 27
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v1, "    Temporarily (for DURATION ms) changes the service implementation."

    .line 32
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    const-string v1, "    To reset, call with just the USER_ID argument."

    .line 37
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    const-string v1, "  set default-service-enabled USER_ID [true|false]"

    .line 45
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    const-string v1, "    Enable / disable the default service for the user."

    .line 50
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v1, "  get default-service-enabled USER_ID"

    .line 58
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    const-string v1, "    Checks whether the default service is enabled for the user."

    .line 63
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    if-eqz p0, :cond_0

    .line 76
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    :cond_0
    :goto_0
    throw v0
.end method
