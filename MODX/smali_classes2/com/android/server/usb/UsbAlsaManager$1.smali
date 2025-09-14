.class public final Lcom/android/server/usb/UsbAlsaManager$1;
.super Landroid/os/FileObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    .line 2
    .line 3
    const/16 p1, 0x300

    .line 4
    .line 5
    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 4

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/16 v0, 0x200

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lcom/android/server/usb/UsbAlsaManager;->getCardNumberFromAlsaFilePath(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_2
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string p1, "Adding ALSA device card="

    .line 47
    .line 48
    const-string v0, "UsbAlsaManager"

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "alsaFileAdded("

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, ")"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Lcom/android/server/usb/UsbAlsaManager;->getCardNumberFromAlsaFilePath(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-ne p2, v1, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 80
    .line 81
    monitor-enter v0

    .line 82
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    const-string v1, "UsbAlsaManager"

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    :goto_0
    monitor-exit v0

    .line 129
    :goto_1
    return-void

    .line 130
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    throw p0
.end method
