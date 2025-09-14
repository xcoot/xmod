.class public final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUEventInfo:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 3
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-boolean p1, p1, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 13
    const-string v1, "WiredAccessoryManager"

    .line 15
    if-nez p1, :cond_1

    .line 17
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 19
    const/4 v2, 0x2

    .line 20
    const/16 v3, 0x20

    .line 22
    const-string/jumbo v4, "h2w"

    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {p1, v4, v5, v2, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;III)V

    .line 29
    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p1, "This kernel does not have wired headset support"

    .line 41
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 46
    const/4 v2, 0x4

    .line 47
    const/16 v3, 0x8

    .line 49
    const-string/jumbo v4, "usb_audio"

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-direct {p1, v4, v2, v3, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;III)V

    .line 56
    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string p1, "This kernel does not have usb audio support"

    .line 68
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_1
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 73
    const-string/jumbo v2, "ch_hdmi_audio"

    .line 76
    const/16 v3, 0x10

    .line 78
    invoke-direct {p1, v2, v3, v5, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;III)V

    .line 81
    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 93
    const-string/jumbo v2, "hdmi_audio"

    .line 96
    invoke-direct {p1, v2, v3, v5, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;III)V

    .line 99
    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_4

    .line 105
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 111
    const-string/jumbo v2, "hdmi"

    .line 114
    invoke-direct {p1, v2, v3, v5, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;III)V

    .line 117
    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_5

    .line 123
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    const-string p1, "This kernel does not have HDMI audio support"

    .line 129
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_2
    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 134
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "DEVPATH"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SWITCH_NAME"

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "SWITCH_STATE"

    .line 15
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 25
    iget-object v3, v3, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 27
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    monitor-exit v3

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    :catch_0
    const-string p0, "WiredAccessoryManager"

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "Could not parse switch state from event "

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void
.end method

.method public final updateStateLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 5
    check-cast v2, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_7

    .line 13
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 15
    check-cast v2, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 23
    invoke-virtual {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_6

    .line 33
    const-string/jumbo p2, "ch_hdmi_audio"

    .line 36
    iget-object v1, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p2

    .line 42
    const/4 v1, 0x1

    .line 43
    if-eqz p2, :cond_2

    .line 45
    and-int/lit16 p2, p1, 0xff

    .line 47
    const-string p3, "WiredAccessoryManager"

    .line 49
    if-nez p2, :cond_0

    .line 51
    const-string p0, "This is for DVI and No-Speaker HDMI Device"

    .line 53
    invoke-static {p3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 57
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    const/4 v3, -0x1

    .line 62
    if-ne p1, v3, :cond_1

    .line 64
    move p1, v0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move p1, v1

    .line 67
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    const-string v4, "HDMI config "

    .line 71
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v4, ", state "

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    invoke-static {p3, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    move-object p3, p2

    .line 93
    :cond_2
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 95
    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 97
    iget v3, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 99
    iget v4, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .line 101
    or-int v5, v3, v4

    .line 103
    iget v2, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    .line 105
    or-int/2addr v5, v2

    .line 106
    not-int v5, v5

    .line 107
    if-ne p1, v1, :cond_3

    .line 109
    move v0, v3

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    const/4 v1, 0x2

    .line 112
    if-ne p1, v1, :cond_4

    .line 114
    move v0, v4

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    if-ne p1, v2, :cond_5

    .line 118
    move v0, v2

    .line 119
    :cond_5
    :goto_2
    and-int p1, p2, v5

    .line 121
    or-int/2addr p1, v0

    .line 122
    invoke-virtual {p0, p1, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(ILjava/lang/String;)V

    .line 125
    return-void

    .line 126
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_7
    return-void
.end method
