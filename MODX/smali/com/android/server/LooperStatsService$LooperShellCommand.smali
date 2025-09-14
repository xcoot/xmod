.class public final Lcom/android/server/LooperStatsService$LooperShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/LooperStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LooperStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string/jumbo v0, "enable"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    .line 17
    return v1

    .line 18
    :cond_0
    const-string/jumbo v0, "disable"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    .line 32
    return v1

    .line 33
    :cond_1
    const-string/jumbo v0, "reset"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 42
    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    .line 44
    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 49
    return v1

    .line 50
    :cond_2
    const-string/jumbo v0, "sampling_interval"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    .line 66
    move-result p1

    .line 67
    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    .line 69
    if-lez p1, :cond_3

    .line 71
    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LooperStats;->setSamplingInterval(I)V

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    const-string v0, "Ignored invalid sampling interval (value must be positive): "

    .line 84
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    const-string p1, "LooperStatsService"

    .line 96
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return v1

    .line 100
    :cond_4
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 103
    move-result p0

    .line 104
    return p0
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "looper_stats commands:"

    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    const-string v0, "  enable: Enable collecting stats."

    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    const-string v0, "  disable: Disable collecting stats."

    .line 18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    const-string v0, "  sampling_interval: Change the sampling interval."

    .line 23
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    const-string v0, "  reset: Reset stats."

    .line 28
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    return-void
.end method
