.class public final Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentUsbStats:Ljava/lang/String;

.field public final mLogFile:Ljava/io/File;

.field public final mSysFs:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/usb/UsbMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbMonitorImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/io/File;

    .line 7
    .line 8
    const-string p2, "/sys/class/usb_notify/usb_control/usb_hw_param"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    .line 14
    .line 15
    new-instance p1, Ljava/io/File;

    .line 16
    .line 17
    const-string p2, "/efs/usb_hw_param/usb_hw_param.log"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    .line 23
    .line 24
    const-string/jumbo p1, "none"

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, "UsbStatsMonitor"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "Unexpected message "

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget p1, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->updateUsbStats()V

    .line 31
    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    const-string p1, "finishBoot"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    const-string p0, "No sysfs node"

    .line 48
    .line 49
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mreadFileAsStringOrNull(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, p1, v1}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    .line 76
    .line 77
    const-string v2, "0"

    .line 78
    .line 79
    invoke-static {v0, p1, v2}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->updateUsbStats()V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :goto_2
    const-string p1, "Couldn\'t create log file"

    .line 112
    .line 113
    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    :goto_3
    return-void
.end method

.method public final updateUsbStats()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mreadFileAsStringOrNull(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string v0, "UsbStatsMonitor"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-wide/32 v1, 0xea60

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
