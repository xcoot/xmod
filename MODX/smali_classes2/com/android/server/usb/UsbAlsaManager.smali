.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final IS_MULTI_MODE:Z

.field public static final sDeviceDenylist:Ljava/util/List;


# instance fields
.field public isBundleRemovedDone:Z

.field public final mAlsaCards:Ljava/util/HashSet;

.field public final mAlsaDevices:Ljava/util/ArrayList;

.field public final mAlsaObserver:Lcom/android/server/usb/UsbAlsaManager$1;

.field public final mAttachedDevices:Ljava/util/HashMap;

.field public mAudioService:Landroid/media/IAudioService;

.field public final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field public final mContext:Landroid/content/Context;

.field public final mHasMidiFeature:Z

.field public final mMidiDevices:Ljava/util/HashMap;

.field public mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

.field public mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.audio.multi_usb_mode"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/usb/UsbAlsaManager;->IS_MULTI_MODE:Z

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    .line 12
    .line 13
    const/16 v1, 0x5c4

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    .line 19
    .line 20
    const/16 v2, 0x9cc

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    .line 26
    .line 27
    const/16 v3, 0xce6

    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(I)V

    .line 30
    .line 31
    .line 32
    filled-new-array {v0, v1, v2}, [Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    .line 30
    .line 31
    new-instance v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 46
    .line 47
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$1;

    .line 48
    .line 49
    new-instance v1, Ljava/io/File;

    .line 50
    .line 51
    const-string v2, "/dev/snd/"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbAlsaManager$1;-><init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/io/File;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Lcom/android/server/usb/UsbAlsaManager$1;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "android.software.midi"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput-boolean p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    .line 74
    .line 75
    return-void
.end method

.method public static getCardNumberFromAlsaFilePath(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "pcmC"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    const-string v2, "UsbAlsaManager"

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string/jumbo v0, "p"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "c"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string/jumbo v0, "midiC"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    :goto_0
    const/16 v0, 0x43

    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v3, 0x44

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return p0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v3, "Could not parse ALSA file name "

    .line 66
    .line 67
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v2, p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    return v1

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v3, "Unknown type file("

    .line 78
    .line 79
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, ") added."

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    return v1
.end method

.method public static isDeviceDenylisted(III)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/16 v3, 0x54c

    .line 24
    .line 25
    if-ne v3, p0, :cond_0

    .line 26
    .line 27
    iget v1, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mProductId:I

    .line 28
    .line 29
    if-ne v1, p1, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    and-int p1, p0, p2

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    move v2, p0

    .line 37
    :cond_1
    return v2
.end method


# virtual methods
.method public final addDeviceToAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p1, "Ignore caching device as the type is NONE, device="

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "UsbAlsaManager"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/Stack;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Ljava/util/Stack;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    move-object v0, p0

    .line 62
    check-cast v0, Ljava/util/Stack;

    .line 63
    .line 64
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final declared-synchronized deselectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .locals 3

    .line 1
    const-string v0, "deselectAlsaDevice() selectedDevice "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "UsbAlsaManager"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->stopOutput()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->stopInput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_3
    monitor-exit p1

    .line 33
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public final deselectCurrentDevice(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "deselectCurrentDevice():"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "UsbAlsaManager"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/Stack;

    .line 34
    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "deselect current device:"

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Landroid/media/AudioManager;->isInputDevice(I)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopInput()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopOutput()V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    return-void
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 14

    .line 1
    const-string v0, "alsa_manager"

    .line 2
    .line 3
    const-wide v1, 0x10b00000004L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-string v2, "cards_parser"

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanStatus()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-wide v4, 0x10500000001L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/usb/UsbAlsaDevice;

    .line 45
    .line 46
    const-string v6, "alsa_devices"

    .line 47
    .line 48
    monitor-enter v3

    .line 49
    const-wide v7, 0x20b00000002L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    const-string v8, "card"

    .line 59
    .line 60
    iget v9, v3, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 61
    .line 62
    invoke-virtual {p1, v8, v4, v5, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 63
    .line 64
    .line 65
    const-string v8, "device"

    .line 66
    .line 67
    const-wide v9, 0x10500000002L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    invoke-virtual {p1, v8, v9, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v8, "name"

    .line 77
    .line 78
    .line 79
    iget-object v9, v3, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 80
    .line 81
    const-wide v12, 0x10900000003L

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v8, v12, v13, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v8, "has_output"

    .line 90
    .line 91
    iget-object v9, v3, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 92
    .line 93
    const/4 v10, 0x1

    .line 94
    aget-boolean v9, v9, v10

    .line 95
    .line 96
    const-wide v12, 0x10800000004L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v8, v12, v13, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 102
    .line 103
    .line 104
    const-string v8, "has_input"

    .line 105
    .line 106
    iget-object v9, v3, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 107
    .line 108
    aget-boolean v9, v9, v11

    .line 109
    .line 110
    const-wide v10, 0x10800000005L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v8, v10, v11, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 116
    .line 117
    .line 118
    const-string v8, "address"

    .line 119
    .line 120
    iget-object v9, v3, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    .line 121
    .line 122
    const-wide v10, 0x10900000006L

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v8, v10, v11, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    monitor-exit v3

    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    monitor-exit v3

    .line 137
    throw p0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_1

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    move-object v5, v3

    .line 159
    check-cast v5, Ljava/lang/String;

    .line 160
    .line 161
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    move-object v4, v3

    .line 168
    check-cast v4, Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 169
    .line 170
    const-string v7, "alsa_midi_devices"

    .line 171
    .line 172
    const-wide v8, 0x20b00000004L

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    move-object v6, p1

    .line 178
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usb/UsbAlsaMidiDevice;->dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final logDevices(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "UsbAlsaManager"

    .line 2
    .line 3
    const-string v1, "----------------"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 29
    .line 30
    const-string v0, "UsbAlsaManager"

    .line 31
    .line 32
    const-string v1, "[card:"

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " device:"

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " "

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, "]"

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p1

    .line 74
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    monitor-exit p1

    .line 80
    throw p0

    .line 81
    :cond_0
    const-string p0, "UsbAlsaManager"

    .line 82
    .line 83
    const-string p1, "----------------"

    .line 84
    .line 85
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final removeAlsaDevice(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/usb/UsbAlsaDevice;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v1, v3

    .line 33
    :goto_1
    if-le v1, v3, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 42
    .line 43
    iget-object v1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    aget v1, v1, v2

    .line 47
    .line 48
    invoke-virtual {p0, v1, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeDeviceFromAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 52
    .line 53
    aget v0, v1, v0

    .line 54
    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeDeviceFromAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method

.method public final removeDeviceFromAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Stack;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final declared-synchronized selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "selectAlsaDevice() "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "UsbAlsaManager"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string/jumbo v1, "usb_audio_automatic_routing_disabled"

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-string p1, "UsbAlsaManager"

    .line 39
    .line 40
    const-string v0, "USB_AUDIO_AUTOMATIC_ROUTING_DISABLED"

    .line 41
    .line 42
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    const/4 v0, 0x1

    .line 52
    :try_start_3
    invoke-virtual {p1, v0}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 53
    .line 54
    .line 55
    :try_start_4
    monitor-exit p1

    .line 56
    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 57
    :try_start_5
    invoke-virtual {p1, v2}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 58
    .line 59
    .line 60
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 61
    :try_start_7
    monitor-exit p1

    .line 62
    const-string p1, "UsbAlsaManager"

    .line 63
    .line 64
    const-string/jumbo v0, "selectAlsaDevice() - done."

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 68
    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    :try_start_8
    monitor-exit p1

    .line 74
    throw v0

    .line 75
    :catchall_2
    move-exception v0

    .line 76
    goto :goto_0

    .line 77
    :catchall_3
    move-exception v0

    .line 78
    monitor-exit p1

    .line 79
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 80
    :goto_0
    :try_start_9
    monitor-exit p1

    .line 81
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 82
    :goto_1
    monitor-exit p0

    .line 83
    throw p1
.end method

.method public final selectDefaultDevice(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "selectDefaultDevice():"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "UsbAlsaManager"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/util/Stack;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v2, "select default device:"

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroid/media/AudioManager;->isInputDevice(I)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    monitor-enter p0

    .line 73
    const/4 p1, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    .line 81
    throw p1

    .line 82
    :cond_1
    monitor-enter p0

    .line 83
    const/4 p1, 0x1

    .line 84
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .line 86
    .line 87
    monitor-exit p0

    .line 88
    :goto_0
    return-void

    .line 89
    :catchall_1
    move-exception p1

    .line 90
    monitor-exit p0

    .line 91
    throw p1

    .line 92
    :cond_2
    :goto_1
    return-void
.end method

.method public final usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p3

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "usbDeviceAdded(): "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " nm:"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v12, "UsbAlsaManager"

    .line 39
    .line 40
    invoke-static {v12, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()I

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 49
    .line 50
    invoke-virtual {v1, v10}, Lcom/android/internal/alsa/AlsaCardsParser;->findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    const/4 v14, 0x1

    .line 55
    if-nez v13, :cond_1

    .line 56
    .line 57
    const-string/jumbo v0, "no AlsaCardRecord"

    .line 58
    .line 59
    .line 60
    invoke-static {v12, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v14}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    xor-int/2addr v0, v14

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo v1, "usbDeviceAdded(): cannot find sound card for "

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v12, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1, v14}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(IZ)V

    .line 98
    .line 99
    .line 100
    const/4 v1, 0x2

    .line 101
    invoke-virtual {v11, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    const-string v4, "UsbDescriptorParser"

    .line 114
    .line 115
    const-string v5, " t:0x"

    .line 116
    .line 117
    const-string v6, "Undefined Audio Input terminal l: "

    .line 118
    .line 119
    const/16 v7, 0x100

    .line 120
    .line 121
    const/4 v15, 0x0

    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 129
    .line 130
    instance-of v8, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 131
    .line 132
    if-eqz v8, :cond_3

    .line 133
    .line 134
    check-cast v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 135
    .line 136
    iget v3, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    .line 137
    .line 138
    and-int/lit16 v3, v3, -0x100

    .line 139
    .line 140
    if-eq v3, v7, :cond_2

    .line 141
    .line 142
    const/16 v8, 0x300

    .line 143
    .line 144
    if-eq v3, v8, :cond_2

    .line 145
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_4

    .line 159
    .line 160
    move v8, v14

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget v6, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 168
    .line 169
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-byte v3, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 176
    .line 177
    invoke-static {v3, v7, v4}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_4
    move v8, v15

    .line 182
    :goto_1
    const/4 v1, 0x3

    .line 183
    invoke-virtual {v11, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    const/16 v9, 0x200

    .line 196
    .line 197
    if-eqz v2, :cond_7

    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 204
    .line 205
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 206
    .line 207
    if-eqz v3, :cond_6

    .line 208
    .line 209
    check-cast v2, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 210
    .line 211
    iget v2, v2, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    .line 212
    .line 213
    and-int/lit16 v2, v2, -0x100

    .line 214
    .line 215
    if-eq v2, v7, :cond_5

    .line 216
    .line 217
    if-eq v2, v9, :cond_5

    .line 218
    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-static {v1, v2, v14}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-nez v1, :cond_7

    .line 232
    .line 233
    move v5, v14

    .line 234
    goto :goto_3

    .line 235
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget v9, v2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 241
    .line 242
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-byte v2, v2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 249
    .line 250
    invoke-static {v2, v3, v4}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_7
    move v5, v15

    .line 255
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v2, "hasInput: "

    .line 258
    .line 259
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v2, " hasOutput:"

    .line 266
    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {v12, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    if-nez v8, :cond_8

    .line 281
    .line 282
    if-eqz v5, :cond_c

    .line 283
    .line 284
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    .line 289
    .line 290
    .line 291
    move-result v16

    .line 292
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isDock()Z

    .line 293
    .line 294
    .line 295
    move-result v17

    .line 296
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 297
    .line 298
    if-nez v2, :cond_9

    .line 299
    .line 300
    const-string/jumbo v0, "no AudioService"

    .line 301
    .line 302
    .line 303
    invoke-static {v12, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_9
    new-instance v6, Lcom/android/server/usb/UsbAlsaDevice;

    .line 308
    .line 309
    invoke-virtual {v13}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    move-object v1, v6

    .line 314
    move-object/from16 v4, p1

    .line 315
    .line 316
    move-object v14, v6

    .line 317
    move v6, v8

    .line 318
    move/from16 v8, v16

    .line 319
    .line 320
    move/from16 v9, v17

    .line 321
    .line 322
    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;ILjava/lang/String;ZZZZZ)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v13}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v13}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardDescription()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    monitor-enter v14

    .line 333
    :try_start_0
    iput-object v1, v14, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .line 335
    monitor-exit v14

    .line 336
    sget-boolean v1, Lcom/android/server/usb/UsbAlsaManager;->IS_MULTI_MODE:Z

    .line 337
    .line 338
    iget-object v2, v14, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 339
    .line 340
    if-eqz v1, :cond_a

    .line 341
    .line 342
    aget v1, v2, v15

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->deselectCurrentDevice(I)V

    .line 345
    .line 346
    .line 347
    const/4 v1, 0x1

    .line 348
    aget v3, v2, v1

    .line 349
    .line 350
    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbAlsaManager;->deselectCurrentDevice(I)V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_a
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-nez v1, :cond_b

    .line 361
    .line 362
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 371
    .line 372
    .line 373
    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-virtual {v1, v15, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    aget v1, v2, v15

    .line 379
    .line 380
    invoke-virtual {v0, v1, v14}, Lcom/android/server/usb/UsbAlsaManager;->addDeviceToAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    .line 381
    .line 382
    .line 383
    const/4 v1, 0x1

    .line 384
    aget v2, v2, v1

    .line 385
    .line 386
    invoke-virtual {v0, v2, v14}, Lcom/android/server/usb/UsbAlsaManager;->addDeviceToAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v14}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 390
    .line 391
    .line 392
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    const/16 v2, 0x200

    .line 397
    .line 398
    invoke-virtual {v11, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-static {v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    const-string v3, "hasMidi: "

    .line 407
    .line 408
    const-string v4, " mHasMidiFeature:"

    .line 409
    .line 410
    invoke-static {v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    iget-boolean v4, v0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    .line 415
    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-static {v12, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    const-string v5, "hasMidi2: "

    .line 429
    .line 430
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-static {v12, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    if-eqz v4, :cond_11

    .line 444
    .line 445
    if-eqz v1, :cond_11

    .line 446
    .line 447
    if-nez v2, :cond_11

    .line 448
    .line 449
    new-instance v1, Landroid/os/Bundle;

    .line 450
    .line 451
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    if-eqz v2, :cond_10

    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-eqz v5, :cond_d

    .line 473
    .line 474
    goto :goto_6

    .line 475
    :cond_d
    if-eqz v3, :cond_f

    .line 476
    .line 477
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    if-eqz v5, :cond_e

    .line 482
    .line 483
    goto :goto_5

    .line 484
    :cond_e
    const-string v5, " "

    .line 485
    .line 486
    invoke-static {v2, v5, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    goto :goto_7

    .line 491
    :cond_f
    :goto_5
    move-object v5, v2

    .line 492
    goto :goto_7

    .line 493
    :cond_10
    :goto_6
    move-object v5, v3

    .line 494
    :goto_7
    const-string/jumbo v6, "name"

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    const-string/jumbo v5, "manufacturer"

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    const-string/jumbo v2, "product"

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    const-string/jumbo v2, "version"

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    const-string/jumbo v2, "serial_number"

    .line 519
    .line 520
    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v13}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    const-string v3, "alsa_card"

    .line 533
    .line 534
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    .line 536
    .line 537
    const-string v2, "alsa_device"

    .line 538
    .line 539
    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    .line 541
    .line 542
    const-string/jumbo v2, "usb_device"

    .line 543
    .line 544
    .line 545
    move-object/from16 v3, p2

    .line 546
    .line 547
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v11, v15}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiPorts(Z)I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    const/4 v3, 0x1

    .line 555
    invoke-virtual {v11, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiPorts(Z)I

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    const-string/jumbo v5, "numLegacyMidiInputs: "

    .line 562
    .line 563
    .line 564
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    invoke-static {v12, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    const-string/jumbo v5, "numLegacyMidiOutputs:"

    .line 580
    .line 581
    .line 582
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-static {v12, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    iget-object v4, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 596
    .line 597
    invoke-virtual {v13}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    .line 598
    .line 599
    .line 600
    move-result v20

    .line 601
    const/16 v21, 0x0

    .line 602
    .line 603
    move-object/from16 v18, v4

    .line 604
    .line 605
    move-object/from16 v19, v1

    .line 606
    .line 607
    move/from16 v22, v2

    .line 608
    .line 609
    move/from16 v23, v3

    .line 610
    .line 611
    invoke-static/range {v18 .. v23}, Lcom/android/server/usb/UsbAlsaMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    if-eqz v1, :cond_11

    .line 616
    .line 617
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 618
    .line 619
    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    :cond_11
    const-string v1, "deviceAdded()"

    .line 623
    .line 624
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    const-string v0, "deviceAdded() - done"

    .line 628
    .line 629
    invoke-static {v12, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    return-void

    .line 633
    :catchall_0
    move-exception v0

    .line 634
    move-object v1, v0

    .line 635
    monitor-exit v14

    .line 636
    throw v1
.end method

.method public final declared-synchronized usbDeviceRemoved(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "USB MIDI Device Removed: "

    .line 2
    .line 3
    const-string v1, "USB Audio Device Removed: "

    .line 4
    .line 5
    const-string v2, "deviceRemoved("

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v3, "UsbAlsaManager"

    .line 9
    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeAlsaDevice(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "UsbAlsaManager"

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    const-string v1, "UsbAlsaManager"

    .line 61
    .line 62
    const-string/jumbo v4, "usbDeviceRemoved set mSelectedBundleDevice to null, as it\'s not set even Bundle Remove was done"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 70
    .line 71
    iput-boolean v3, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 77
    .line 78
    iget v1, v2, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 79
    .line 80
    invoke-virtual {p0, v1, v3}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(IZ)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 84
    .line 85
    .line 86
    sget-boolean v1, Lcom/android/server/usb/UsbAlsaManager;->IS_MULTI_MODE:Z

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    iget-object v1, v2, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 91
    .line 92
    const/4 v4, 0x1

    .line 93
    aget v1, v1, v4

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v2, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    .line 99
    .line 100
    aget v1, v1, v3

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 129
    .line 130
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 140
    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    const-string v2, "UsbAlsaManager"

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    const-string/jumbo p1, "usbDeviceRemoved()"

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    monitor-exit p0

    .line 170
    return-void

    .line 171
    :goto_2
    monitor-exit p0

    .line 172
    throw p1
.end method

.method public final waitForAlsaDevice(IZ)V
    .locals 7

    .line 1
    const-string v0, "UsbAlsaManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "waitForAlsaDevice(c:"

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ")"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    const-wide/16 v3, 0x9c4

    .line 34
    .line 35
    add-long/2addr v1, v3

    .line 36
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    xor-int/2addr v3, p2

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    cmp-long v3, v1, v3

    .line 54
    .line 55
    if-lez v3, :cond_1

    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sub-long v3, v1, v3

    .line 62
    .line 63
    const-wide/16 v5, 0x0

    .line 64
    .line 65
    cmp-long v5, v3, v5

    .line 66
    .line 67
    if-lez v5, :cond_0

    .line 68
    .line 69
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :catch_0
    :try_start_2
    const-string v3, "UsbAlsaManager"

    .line 78
    .line 79
    const-string/jumbo v4, "usb: InterruptedException while waiting for ALSA file."

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    xor-int v3, p2, p0

    .line 97
    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    cmp-long v1, v1, v3

    .line 105
    .line 106
    if-lez v1, :cond_2

    .line 107
    .line 108
    const-string p0, "UsbAlsaManager"

    .line 109
    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v1, "waitForAlsaDevice("

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, ") timeout"

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    const-string v1, "UsbAlsaManager"

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v3, "waitForAlsaDevice for device card="

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, ", isAdded="

    .line 154
    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, ", found="

    .line 162
    .line 163
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :goto_1
    monitor-exit v0

    .line 177
    return-void

    .line 178
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    throw p0
.end method
