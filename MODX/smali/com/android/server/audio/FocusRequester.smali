.class public final Lcom/android/server/audio/FocusRequester;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAttributes:Landroid/media/AudioAttributes;

.field public final mCallingUid:I

.field public final mClientId:Ljava/lang/String;

.field public mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

.field public mDevice:I

.field public final mFocusController:Lcom/android/server/audio/MediaFocusControl;

.field public mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field public final mFocusGainRequest:I

.field public mFocusLossFadeLimbo:Z

.field public mFocusLossReceived:I

.field public mFocusLossWasNotified:Z

.field public final mGrantFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mSdkTarget:I

.field public final mSourceRef:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 4
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 5
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 6
    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 8
    iput-object p8, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 9
    iput p9, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 10
    iput p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 11
    iput p3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 12
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 15
    iput-object p10, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 16
    iput p11, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 19
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 20
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 23
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 24
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 27
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 28
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getSdkTarget()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 29
    iput-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 30
    iput-object p3, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 31
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 32
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    return-void
.end method

.method public static focusChangeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    const-string v0, "[invalid focus change"

    .line 6
    const-string v1, "]"

    .line 8
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    const-string p0, "GAIN_TRANSIENT_EXCLUSIVE"

    .line 15
    return-object p0

    .line 16
    :pswitch_1
    const-string p0, "GAIN_TRANSIENT_MAY_DUCK"

    .line 18
    return-object p0

    .line 19
    :pswitch_2
    const-string p0, "GAIN_TRANSIENT"

    .line 21
    return-object p0

    .line 22
    :pswitch_3
    const-string p0, "GAIN"

    .line 24
    return-object p0

    .line 25
    :pswitch_4
    const-string/jumbo p0, "none"

    .line 28
    return-object p0

    .line 29
    :pswitch_5
    const-string p0, "LOSS"

    .line 31
    return-object p0

    .line 32
    :pswitch_6
    const-string p0, "LOSS_TRANSIENT"

    .line 34
    return-object p0

    .line 35
    :pswitch_7
    const-string p0, "LOSS_TRANSIENT_CAN_DUCK"

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final dispatchFocusChange(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "FocusRequester"

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string/jumbo p0, "dispatchFocusChange: no focus dispatcher"

    .line 13
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v2

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 19
    const-string/jumbo p0, "dispatchFocusChange: AUDIOFOCUS_NONE"

    .line 22
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v2

    .line 26
    :cond_1
    const/4 v4, 0x3

    .line 27
    const/4 v5, 0x1

    .line 28
    if-eq p1, v4, :cond_2

    .line 30
    const/4 v4, 0x4

    .line 31
    if-eq p1, v4, :cond_2

    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq p1, v4, :cond_2

    .line 36
    if-ne p1, v5, :cond_3

    .line 38
    :cond_2
    iget v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 40
    if-eq v4, p1, :cond_3

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v6, "focus gain was requested with "

    .line 47
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, ", dispatching "

    .line 55
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v4, -0x3

    .line 70
    if-eq p1, v4, :cond_4

    .line 72
    const/4 v4, -0x2

    .line 73
    if-eq p1, v4, :cond_4

    .line 75
    const/4 v4, -0x1

    .line 76
    if-ne p1, v4, :cond_5

    .line 78
    :cond_4
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 80
    :cond_5
    :goto_0
    :try_start_0
    invoke-interface {v1, p1, v0}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return v5

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v1, "dispatchFocusChange: error talking to focus listener "

    .line 90
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    return v2
.end method

.method public final dispatchFocusChangeWithFadeLocked(ILjava/util/List;)I
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 5
    if-eq p1, v0, :cond_2

    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_2

    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne p1, v3, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v4, -0x1

    .line 18
    if-ne p1, v4, :cond_3

    .line 20
    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->shouldEnforceFade()Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_3

    .line 26
    :goto_0
    move-object v4, p2

    .line 27
    check-cast v4, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v5

    .line 33
    if-ge v1, v5, :cond_3

    .line 35
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 41
    iget-object v5, v2, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 43
    invoke-interface {v5, v4, p0}, Lcom/android/server/audio/PlayerFocusEnforcer;->fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 49
    iput-boolean v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo p2, "postDelayedLossAfterFade loser="

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    const-string p2, "MediaFocusControl"

    .line 70
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, v2, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    .line 75
    invoke-virtual {p1, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 78
    move-result-object p0

    .line 79
    const-wide/16 v1, 0x0

    .line 81
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    return v0

    .line 85
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 90
    invoke-virtual {v2, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 93
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 96
    move-result p0

    .line 97
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "  source:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " -- pack: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " -- client: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, " -- gain: "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 40
    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " -- flags: "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v1, Ljava/lang/String;

    .line 54
    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 57
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 59
    and-int/lit8 v3, v2, 0x1

    .line 61
    if-eqz v3, :cond_0

    .line 63
    const-string v3, "DELAY_OK"

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    :cond_0
    and-int/lit8 v3, v2, 0x4

    .line 71
    const-string/jumbo v4, "|"

    .line 74
    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_1

    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    :cond_1
    const-string v3, "LOCK"

    .line 88
    invoke-static {v1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    :cond_2
    and-int/lit8 v2, v2, 0x2

    .line 94
    if-eqz v2, :cond_4

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_3

    .line 102
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    :cond_3
    const-string v2, "PAUSES_ON_DUCKABLE_LOSS"

    .line 108
    invoke-static {v1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, " -- loss: "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 122
    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, " -- notified: "

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, " -- limbo"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, " -- uid: "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, " -- attr: "

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, " -- device: "

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 176
    const-string v2, " -- sdk:"

    .line 178
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 181
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 183
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 186
    return-void
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method public final frameworkHandleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)Z
    .locals 6

    .line 1
    iget v0, p2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 6
    if-ne v0, v2, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    const/4 v3, -0x3

    .line 11
    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 13
    if-ne p1, v3, :cond_3

    .line 15
    const-string/jumbo p1, "not ducking uid "

    .line 18
    const-string v3, "FocusRequester"

    .line 20
    if-nez p3, :cond_1

    .line 22
    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 24
    and-int/2addr v0, v5

    .line 25
    if-eqz v0, :cond_1

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, " - flags"

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v1

    .line 48
    :cond_1
    if-nez p3, :cond_2

    .line 50
    const/16 v0, 0x19

    .line 52
    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 54
    if-gt v5, v0, :cond_2

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string p1, " - old SDK"

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v1

    .line 77
    :cond_2
    iget-object p1, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 79
    invoke-interface {p1, p2, p0, p3}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    .line 82
    move-result p0

    .line 83
    return p0

    .line 84
    :cond_3
    const/4 p2, -0x1

    .line 85
    if-ne p1, p2, :cond_4

    .line 87
    iget-object p1, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    .line 89
    new-instance p2, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 91
    invoke-direct {p2, v2}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    .line 94
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 97
    move-result-object p2

    .line 98
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 100
    invoke-virtual {v4, p0}, Lcom/android/server/audio/MediaFocusControl;->getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J

    .line 103
    move-result-wide v2

    .line 104
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    :cond_4
    return v1
.end method

.method public final handleFocusGain()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iput v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 6
    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 16
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-boolean v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 22
    if-eqz v3, :cond_0

    .line 24
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 26
    invoke-interface {v1, v2, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    const-string v0, "FocusRequester"

    .line 38
    const-string v1, "Failure to signal gain of audio focus due to: "

    .line 40
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :goto_2
    return-void
.end method

.method public final handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V
    .locals 8

    .line 1
    const-string v0, "FocusRequester"

    .line 3
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 5
    :try_start_0
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 7
    if-eq p1, v2, :cond_6

    .line 9
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 14
    iget-boolean v3, v1, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 16
    const/4 v4, -0x3

    .line 17
    if-nez v3, :cond_0

    .line 19
    if-ne p1, v4, :cond_0

    .line 21
    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 23
    and-int/lit8 v3, v3, 0x2

    .line 25
    if-nez v3, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto/16 :goto_1

    .line 38
    :cond_0
    const/4 v3, 0x1

    .line 39
    if-ne p1, v4, :cond_3

    .line 41
    if-eqz p2, :cond_3

    .line 43
    iget-object v4, v1, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-string v5, "AS.AudioService"

    .line 47
    if-eqz v4, :cond_1

    .line 49
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    const-string v7, "Ignore Ducking By AllApps = "

    .line 53
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget-boolean v7, v4, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByAllApps:Z

    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v4, v4, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByAllApps:Z

    .line 70
    if-eqz v4, :cond_1

    .line 72
    const-string/jumbo p1, "not duckPlayers - IgnoreDucking By ALL Apps"

    .line 75
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v1, p0, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 85
    return-void

    .line 86
    :cond_1
    iget-object v4, v1, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 88
    if-eqz v4, :cond_3

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    const-string v7, " Ignore Ducking By Navigation = "

    .line 94
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    iget-boolean v7, v4, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByNavigation:Z

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v6

    .line 106
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-boolean v4, v4, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByNavigation:Z

    .line 111
    if-eqz v4, :cond_3

    .line 113
    iget-object v4, p2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 115
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    .line 118
    move-result v4

    .line 119
    const/16 v5, 0xc

    .line 121
    if-eq v4, v5, :cond_2

    .line 123
    iget-object v4, p2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 125
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    .line 128
    move-result v4

    .line 129
    if-ne v4, v3, :cond_3

    .line 131
    iget-object v4, p2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 133
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getContentType()I

    .line 136
    move-result v4

    .line 137
    if-ne v4, v3, :cond_3

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {v1, p0, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 146
    return-void

    .line 147
    :cond_3
    if-eqz p2, :cond_4

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->frameworkHandleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 152
    move-result p1

    .line 153
    goto :goto_0

    .line 154
    :cond_4
    move p1, v2

    .line 155
    :goto_0
    if-eqz p1, :cond_5

    .line 157
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {v1, p0, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 164
    return-void

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 167
    if-eqz p1, :cond_6

    .line 169
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {v1, p2, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 176
    iput-boolean v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 178
    iget p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 180
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 182
    invoke-interface {p1, p2, p0}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    goto :goto_2

    .line 186
    :goto_1
    const-string p1, "Failure to signal loss of audio focus due to:"

    .line 188
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :cond_6
    :goto_2
    return-void
.end method

.method public final handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, -0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, -0x1

    .line 7
    const/4 v6, -0x3

    .line 8
    if-eq p1, v4, :cond_0

    .line 10
    const/4 v7, 0x2

    .line 11
    if-eq p1, v7, :cond_1

    .line 13
    if-eq p1, v2, :cond_2

    .line 15
    if-eq p1, v1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 20
    if-eq v7, v6, :cond_3

    .line 22
    if-eq v7, v3, :cond_3

    .line 24
    if-eq v7, v5, :cond_3

    .line 26
    if-eqz v7, :cond_3

    .line 28
    :cond_1
    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 30
    if-eq v7, v6, :cond_4

    .line 32
    if-eq v7, v3, :cond_4

    .line 34
    if-eq v7, v5, :cond_3

    .line 36
    if-eqz v7, :cond_4

    .line 38
    :cond_2
    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 40
    if-eq v7, v6, :cond_5

    .line 42
    if-eq v7, v3, :cond_4

    .line 44
    if-eq v7, v5, :cond_3

    .line 46
    if-eqz v7, :cond_5

    .line 48
    :goto_0
    const-string/jumbo v6, "focusLossForGainRequest() for invalid focus request "

    .line 51
    const-string v7, "FocusRequester"

    .line 53
    invoke-static {p1, v6, v7}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    move v6, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v6, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    move v6, v3

    .line 61
    :cond_5
    :goto_1
    if-ne v6, v5, :cond_6

    .line 63
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 65
    iget-object v7, p1, Lcom/android/server/audio/MediaFocusControl;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 67
    const-string/jumbo v8, "delay_loss_audio_focus"

    .line 70
    iget-object v9, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 72
    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_6

    .line 78
    if-eqz p2, :cond_6

    .line 80
    const-string/jumbo v7, "com.android.bluetooth"

    .line 83
    iget-object v8, p2, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 85
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v7

    .line 89
    if-nez v7, :cond_6

    .line 91
    const-string/jumbo v7, "com.samsung.android.mcfds"

    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_6

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v7, "postDelayedForLossAudioFocus: clientId = "

    .line 105
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget-object v7, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 110
    const-string v8, "MediaFocusControl"

    .line 112
    invoke-static {v6, v7, v8}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v6, p1, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    .line 117
    invoke-virtual {v6, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 120
    iget-object p1, p1, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    .line 122
    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 125
    move-result-object v1

    .line 126
    const-wide/16 v6, 0x3a98

    .line 128
    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    goto :goto_2

    .line 132
    :cond_6
    move v3, v6

    .line 133
    :goto_2
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 136
    if-ne v3, v5, :cond_7

    .line 138
    move v0, v4

    .line 139
    :cond_7
    return v0
.end method

.method public final hasSameBinder(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final hasSameClient(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final hasSameUid(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 3
    if-ne p0, p1, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 3
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 16
    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 18
    return-void
.end method

.method public final toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .locals 10

    .line 1
    new-instance v9, Landroid/media/AudioFocusInfo;

    .line 3
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 5
    iget v6, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 7
    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 9
    iget v8, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 11
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 13
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 15
    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 17
    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 19
    move-object v0, v9

    .line 20
    invoke-direct/range {v0 .. v8}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 23
    return-object v9
.end method
