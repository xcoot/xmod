.class public final Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/appprediction/AppPredictionManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;

    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->mService:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "set"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 21
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const/4 v1, 0x0

    .line 34
    const-string/jumbo v2, "temporary-service"

    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    if-nez v2, :cond_3

    .line 58
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->mService:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 63
    return v1

    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    move-result v3

    .line 72
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->mService:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 74
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    const-string p1, "AppPredictionService temporarily set to "

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    const-string p1, " for "

    .line 86
    const-string/jumbo v4, "ms"

    .line 89
    invoke-static {v3, v2, p1, v4, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    :goto_0
    return v1
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
    const-string v1, "AppPredictionManagerService commands:"

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
    const-string v1, "    Temporarily (for DURATION ms) changes the service implemtation."

    .line 32
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    const-string v1, "    To reset, call with just the USER_ID argument."

    .line 37
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    if-eqz p0, :cond_0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    :cond_0
    :goto_0
    throw v0
.end method
