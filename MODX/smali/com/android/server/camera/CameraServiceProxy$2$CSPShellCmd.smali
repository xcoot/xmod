.class public final Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "Camera usage events dumped: "

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x2d

    .line 16
    const/16 v3, 0x5f

    .line 18
    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 25
    move-result v3

    .line 26
    const v4, -0x48fab63c

    .line 29
    if-eq v3, v4, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string/jumbo v3, "dump_events"

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 41
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy;

    .line 43
    iget-object v2, p1, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 45
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    iget-object p1, p1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 48
    check-cast p1, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result p1

    .line 54
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :try_start_4
    throw p0

    .line 82
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 85
    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    return p0

    .line 87
    :goto_1
    const-string p1, "CameraService_proxy"

    .line 89
    const-string v0, "Error running shell command"

    .line 91
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 p0, 0x1

    .line 95
    return p0
.end method

.method public final onHelp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "usage: cmd media.camera.proxy SUBCMD [args]\n\nSUBCMDs:\n    dump_events: Write out all collected camera usage events to statsd.\n        Does not print to terminal.\n    help: You\'re reading it.\n"

    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    return-void
.end method
