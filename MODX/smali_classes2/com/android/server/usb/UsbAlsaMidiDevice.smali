.class public final Lcom/android/server/usb/UsbAlsaMidiDevice;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final BUFFER_SIZE:I = 0x200

.field public static final TAG:Ljava/lang/String; = "UsbAlsaMidiDevice"


# instance fields
.field public final mAlsaCard:I

.field public final mAlsaDevice:I

.field public final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field public mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field public mFileDescriptors:[Ljava/io/FileDescriptor;

.field public mInputStreams:[Ljava/io/FileInputStream;

.field public mIsOpen:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

.field public final mNumInputs:I

.field public final mNumOutputs:I

.field public mOutputStreams:[Ljava/io/FileOutputStream;

.field public mPipeFD:I

.field public mPollFDs:[Landroid/system/StructPollfd;

.field public mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

.field public mServer:Landroid/media/midi/MidiDeviceServer;

.field public mServerAvailable:Z


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPipeFD:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbAlsaMidiDevice$1;-><init>(Lcom/android/server/usb/UsbAlsaMidiDevice;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 23
    .line 24
    iput p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaCard:I

    .line 25
    .line 26
    iput p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaDevice:I

    .line 27
    .line 28
    iput p3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumInputs:I

    .line 29
    .line 30
    iput p4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumOutputs:I

    .line 31
    .line 32
    new-array p1, p4, [Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-ge p1, p4, :cond_0

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    .line 40
    .line 41
    new-instance p3, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    .line 42
    .line 43
    invoke-direct {p3}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 44
    .line 45
    .line 46
    aput-object p3, p2, p1

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Lcom/android/server/usb/PowerBoostSetter;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/android/server/usb/PowerBoostSetter;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    .line 57
    .line 58
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbAlsaMidiDevice;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/UsbAlsaMidiDevice;-><init>(IIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 13
    .line 14
    .line 15
    const-string p0, "UsbAlsaMidiDevice"

    .line 16
    .line 17
    const-string p1, "createDeviceServer failed"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_0
    return-object v0
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private native nativeOpen(IIII)[Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->closeLocked()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public final closeLocked()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    const/4 v4, 0x0

    .line 7
    if-ge v1, v3, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    .line 10
    .line 11
    aget-object v3, v3, v1

    .line 12
    .line 13
    iput-object v4, v3, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 14
    .line 15
    aget-object v2, v2, v1

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 24
    .line 25
    move v1, v0

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 27
    .line 28
    array-length v3, v2

    .line 29
    if-ge v1, v3, :cond_1

    .line 30
    .line 31
    aget-object v2, v2, v1

    .line 32
    .line 33
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 40
    .line 41
    move v1, v0

    .line 42
    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 43
    .line 44
    array-length v3, v2

    .line 45
    if-ge v1, v3, :cond_2

    .line 46
    .line 47
    aget-object v2, v2, v1

    .line 48
    .line 49
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 58
    .line 59
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    .line 60
    .line 61
    .line 62
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 63
    .line 64
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    .line 65
    .line 66
    return-void
.end method

.method public final dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-virtual {p2, p3, p4, p5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p3

    .line 5
    const-string p5, "device_address"

    .line 6
    .line 7
    const-wide v0, 0x10900000003L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p5, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-wide v0, 0x10500000001L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iget p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaCard:I

    .line 21
    .line 22
    const-string p5, "card"

    .line 23
    .line 24
    invoke-virtual {p2, p5, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 25
    .line 26
    .line 27
    const-wide v0, 0x10500000002L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaDevice:I

    .line 33
    .line 34
    const-string p1, "device"

    .line 35
    .line 36
    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final openLocked()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumInputs:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumOutputs:I

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaCard:I

    .line 10
    .line 11
    iget v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaDevice:I

    .line 12
    .line 13
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->nativeOpen(IIII)[Ljava/io/FileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    const-string p0, "UsbAlsaMidiDevice"

    .line 21
    .line 22
    const-string/jumbo v0, "nativeOpen failed"

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v3

    .line 29
    :cond_1
    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 30
    .line 31
    new-array v4, v0, [Landroid/system/StructPollfd;

    .line 32
    .line 33
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    .line 34
    .line 35
    new-array v4, v0, [Ljava/io/FileInputStream;

    .line 36
    .line 37
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 38
    .line 39
    move v4, v3

    .line 40
    :goto_0
    if-ge v4, v0, :cond_2

    .line 41
    .line 42
    aget-object v5, v2, v4

    .line 43
    .line 44
    new-instance v6, Landroid/system/StructPollfd;

    .line 45
    .line 46
    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v5, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 50
    .line 51
    sget v7, Landroid/system/OsConstants;->POLLIN:I

    .line 52
    .line 53
    int-to-short v7, v7

    .line 54
    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    .line 55
    .line 56
    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    .line 57
    .line 58
    aput-object v6, v7, v4

    .line 59
    .line 60
    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 61
    .line 62
    new-instance v7, Ljava/io/FileInputStream;

    .line 63
    .line 64
    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 65
    .line 66
    .line 67
    aput-object v7, v6, v4

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    new-array v4, v1, [Ljava/io/FileOutputStream;

    .line 73
    .line 74
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 75
    .line 76
    new-array v4, v1, [Lcom/android/internal/midi/MidiEventScheduler;

    .line 77
    .line 78
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 79
    .line 80
    move v4, v3

    .line 81
    :goto_1
    if-ge v4, v1, :cond_3

    .line 82
    .line 83
    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 84
    .line 85
    new-instance v6, Ljava/io/FileOutputStream;

    .line 86
    .line 87
    add-int v7, v0, v4

    .line 88
    .line 89
    aget-object v7, v2, v7

    .line 90
    .line 91
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 92
    .line 93
    .line 94
    aput-object v6, v5, v4

    .line 95
    .line 96
    new-instance v5, Lcom/android/internal/midi/MidiEventScheduler;

    .line 97
    .line 98
    invoke-direct {v5}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 102
    .line 103
    aput-object v5, v6, v4

    .line 104
    .line 105
    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    .line 106
    .line 107
    aget-object v6, v6, v4

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iput-object v5, v6, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 114
    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-lez v0, :cond_4

    .line 125
    .line 126
    new-instance v0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;

    .line 127
    .line 128
    invoke-direct {v0, p0, v2}, Lcom/android/server/usb/UsbAlsaMidiDevice$2;-><init>(Lcom/android/server/usb/UsbAlsaMidiDevice;[Landroid/media/midi/MidiReceiver;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_2
    if-ge v3, v1, :cond_5

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 137
    .line 138
    aget-object v0, v0, v3

    .line 139
    .line 140
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 141
    .line 142
    aget-object v2, v2, v3

    .line 143
    .line 144
    new-instance v4, Lcom/android/server/usb/UsbAlsaMidiDevice$3;

    .line 145
    .line 146
    const-string v5, "UsbAlsaMidiDevice output thread "

    .line 147
    .line 148
    invoke-static {v3, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-direct {v4, v5, v0, v2, v3}, Lcom/android/server/usb/UsbAlsaMidiDevice$3;-><init>(Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    .line 163
    .line 164
    return v0
.end method

.method public final register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 10

    .line 1
    const-class v0, Landroid/media/midi/MidiManager;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Landroid/media/midi/MidiManager;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p0, "UsbAlsaMidiDevice"

    .line 14
    .line 15
    const-string p2, "No MidiManager in UsbAlsaMidiDevice.register()"

    .line 16
    .line 17
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    const/4 v9, 0x1

    .line 22
    iput-boolean v9, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    .line 25
    .line 26
    iget v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumInputs:I

    .line 27
    .line 28
    const/4 v7, -0x1

    .line 29
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v6, 0x1

    .line 34
    move-object v5, p2

    .line 35
    invoke-virtual/range {v0 .. v8}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    return p1

    .line 44
    :cond_1
    return v9
.end method
