.class public final Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_5

    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 11
    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroid/os/Bundle;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 36
    .line 37
    iget v3, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    if-ne v3, v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2, v4, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    :try_start_1
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p0

    .line 66
    const-string p1, "CoverManager_GenericCoverServiceController"

    .line 67
    .line 68
    const-string v2, "Shouldn\'t happen"

    .line 69
    .line 70
    invoke-static {p1, v2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    goto :goto_5

    .line 77
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p0

    .line 79
    :cond_4
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    .line 80
    .line 81
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Landroid/os/Bundle;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 86
    .line 87
    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_6

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 105
    .line 106
    iget v4, v3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    .line 107
    .line 108
    const/16 v5, 0xa

    .line 109
    .line 110
    if-ne v4, v5, :cond_5

    .line 111
    .line 112
    invoke-virtual {v3, v1, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    goto :goto_6

    .line 118
    :cond_6
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    :try_start_4
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catch_1
    move-exception p0

    .line 136
    const-string p1, "CoverManager_GenericCoverServiceController"

    .line 137
    .line 138
    const-string v2, "Shouldn\'t happen"

    .line 139
    .line 140
    invoke-static {p1, v2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    .line 145
    .line 146
    :goto_5
    return-void

    .line 147
    :goto_6
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 148
    throw p0
.end method
