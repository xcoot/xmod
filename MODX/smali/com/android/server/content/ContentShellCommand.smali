.class public final Lcom/android/server/content/ContentShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInterface:Landroid/content/IContentService;


# direct methods
.method public constructor <init>(Landroid/content/IContentService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/ContentShellCommand;->mInterface:Landroid/content/IContentService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 3

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
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v1

    .line 16
    const v2, -0x2f770c6b

    .line 19
    if-eq v1, v2, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo v1, "reset-today-stats"

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 31
    iget-object p0, p0, Lcom/android/server/content/ContentShellCommand;->mInterface:Landroid/content/IContentService;

    .line 33
    invoke-interface {p0}, Landroid/content/IContentService;->resetTodayStats()V

    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 41
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return p0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    const-string p1, "Remote exception: "

    .line 46
    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 49
    const/4 p0, -0x1

    .line 50
    return p0
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Content service commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "    Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, ""

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "  reset-today-stats"

    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v0, "    Reset 1-day sync stats."

    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 38
    return-void
.end method
