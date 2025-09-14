.class public final Lcom/android/server/adb/AdbShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/android/server/adb/AdbService;

    .line 10
    iput-object p1, p0, Lcom/android/server/adb/AdbShellCommand;->mService:Lcom/android/server/adb/AdbService;

    .line 12
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 7
    move-result p0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string/jumbo v2, "is-wifi-qr-supported"

    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 23
    const-string/jumbo v2, "is-wifi-supported"

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/server/adb/AdbShellCommand;->mService:Lcom/android/server/adb/AdbService;

    .line 39
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->isAdbWifiSupported()Z

    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    return v1

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/server/adb/AdbShellCommand;->mService:Lcom/android/server/adb/AdbService;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->isAdbWifiQrSupported()Z

    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    return v1
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Adb service commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help or -h"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "    Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  is-wifi-supported"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "    Returns \"true\" if adb over wifi is supported."

    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v0, "  is-wifi-qr-supported"

    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    const-string v0, "    Returns \"true\" if adb over wifi + QR pairing is supported."

    .line 37
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 43
    return-void
.end method
