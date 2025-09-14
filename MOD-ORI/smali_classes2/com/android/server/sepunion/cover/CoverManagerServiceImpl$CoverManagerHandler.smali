.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

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
    .locals 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x12c

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 9
    .line 10
    const-string/jumbo p1, "updateCoverWindowSize: no need to update cover window for type: "

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "updateCoverWindowSize: updating cover window for type: "

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 20
    .line 21
    iget-object v3, v2, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x7

    .line 39
    if-eq v2, v3, :cond_2

    .line 40
    .line 41
    const/16 v3, 0x8

    .line 42
    .line 43
    if-eq v2, v3, :cond_2

    .line 44
    .line 45
    const/16 v3, 0xb

    .line 46
    .line 47
    if-eq v2, v3, :cond_2

    .line 48
    .line 49
    const-string v0, "CoverManager_CoverManagerServiceImpl"

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    const-string p1, "CoverManager_CoverManagerServiceImpl"

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/sepunion/cover/CoverVerifier;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    monitor-exit v1

    .line 123
    :goto_1
    return-void

    .line 124
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0
.end method
