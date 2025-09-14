.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClose()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/2addr v0, v3

    .line 42
    move v3, v0

    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter p1

    .line 51
    :try_start_0
    const-string p2, "UsbAlsaMidiDevice"

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v1, "numOpenPorts: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " isOpen: "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 73
    .line 74
    iget-boolean v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " mServerAvailable: "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 85
    .line 86
    iget-boolean v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    if-lez v3, :cond_4

    .line 99
    .line 100
    iget-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 101
    .line 102
    iget-boolean v0, p2, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    .line 103
    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    iget-boolean v0, p2, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/android/server/usb/UsbAlsaMidiDevice;->openLocked()Z

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    if-nez v3, :cond_5

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 119
    .line 120
    iget-boolean p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    .line 121
    .line 122
    if-eqz p2, :cond_5

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->closeLocked()V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_2
    monitor-exit p1

    .line 128
    return-void

    .line 129
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p0
.end method
