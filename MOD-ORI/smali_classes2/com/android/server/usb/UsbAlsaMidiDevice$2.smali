.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$2;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;[Landroid/media/midi/MidiReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    .line 4
    .line 5
    const-string p1, "UsbAlsaMidiDevice input thread"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v7

    .line 9
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 10
    .line 11
    iget-object v9, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    monitor-exit v9

    .line 21
    goto :goto_4

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    const/4 v10, 0x0

    .line 25
    move v11, v10

    .line 26
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    if-ge v11, v3, :cond_4

    .line 32
    .line 33
    aget-object v3, v2, v11

    .line 34
    .line 35
    iget-short v4, v3, Landroid/system/StructPollfd;->revents:S

    .line 36
    .line 37
    sget v5, Landroid/system/OsConstants;->POLLERR:I

    .line 38
    .line 39
    sget v6, Landroid/system/OsConstants;->POLLHUP:I

    .line 40
    .line 41
    or-int/2addr v5, v6

    .line 42
    and-int/2addr v5, v4

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    sget v5, Landroid/system/OsConstants;->POLLIN:I

    .line 47
    .line 48
    and-int/2addr v4, v5

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    iput-short v10, v3, Landroid/system/StructPollfd;->revents:S

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 54
    .line 55
    array-length v3, v1

    .line 56
    const/4 v12, 0x1

    .line 57
    sub-int/2addr v3, v12

    .line 58
    if-ne v11, v3, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    aget-object v1, v1, v11

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    .line 68
    .line 69
    aget-object v1, v1, v11

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    move-object v2, v0

    .line 73
    move v4, v13

    .line 74
    move-wide v5, v7

    .line 75
    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    if-le v13, v12, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/server/usb/PowerBoostSetter;->boostPower()V

    .line 87
    .line 88
    .line 89
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    const/4 v1, -0x1

    .line 94
    :try_start_2
    invoke-static {v2, v1}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :goto_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    .line 100
    :catch_0
    const-string p0, "UsbAlsaMidiDevice"

    .line 101
    .line 102
    const-string/jumbo v0, "reader thread exiting"

    .line 103
    .line 104
    .line 105
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :catch_1
    const-string p0, "UsbAlsaMidiDevice"

    .line 110
    .line 111
    const-string/jumbo v0, "reader thread exiting"

    .line 112
    .line 113
    .line 114
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :goto_4
    const-string p0, "UsbAlsaMidiDevice"

    .line 118
    .line 119
    const-string v0, "input thread exit"

    .line 120
    .line 121
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return-void
.end method
