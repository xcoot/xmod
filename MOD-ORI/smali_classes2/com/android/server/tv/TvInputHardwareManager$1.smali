.class public final Lcom/android/server/tv/TvInputHardwareManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$1;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$1;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x3

    .line 15
    const/4 v2, -0x1

    .line 16
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    .line 17
    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const-string v3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const-string p0, "TvInputHardwareManager"

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Unrecognized intent: "

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 53
    .line 54
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eq p1, v1, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 62
    .line 63
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v1, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 71
    .line 72
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iget p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 77
    .line 78
    if-ne p1, p2, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 82
    .line 83
    :cond_4
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter p1

    .line 86
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-ge v0, p2, :cond_6

    .line 93
    .line 94
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 101
    .line 102
    iget-object p2, p2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 103
    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    iget-object v1, p2, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 107
    .line 108
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 110
    .line 111
    .line 112
    monitor-exit v1

    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    throw p0

    .line 117
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    monitor-exit p1

    .line 123
    :goto_2
    return-void

    .line 124
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    throw p0
.end method
