.class public final Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# static fields
.field public static final USAGES_TO_MUTE_IN_RING_OR_CALL:[I

.field public static final mAudioFocusLock:Ljava/lang/Object;

.field public static final mEventLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mCallClientId:Ljava/lang/String;

.field public mDevice:I

.field public mExtFocusChangeCounter:J

.field public final mExtFocusChangeLock:Ljava/lang/Object;

.field public final mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

.field public final mFocusFollowers:Ljava/util/ArrayList;

.field public mFocusFreezeExemptUids:[I

.field public mFocusFreezerDeathHandler:Lcom/android/server/audio/MediaFocusControl$2;

.field public mFocusFreezerForTest:Landroid/os/IBinder;

.field public final mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

.field public final mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

.field public mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field public mFocusStack:Ljava/util/Stack;

.field public final mFocusThread:Landroid/os/HandlerThread;

.field public mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

.field public mIgnoredUid:I

.field public mIsMySpaceEffectFocus:Z

.field public mMultiAudioFocusEnabled:Z

.field public mMultiAudioFocusList:Ljava/util/ArrayList;

.field public final mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

.field public final mMySpaceHandler:Landroid/os/Handler;

.field public final mMySpaceRunnable:Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda0;

.field public mNotifyFocusOwnerOnDuck:Z

.field public mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field public mRingOrCallActive:Z

.field public mSplitSoundCb:Landroid/os/IBinder;

.field public mSplitSoundFR:Lcom/android/server/audio/FocusRequester;


# direct methods
.method public static -$$Nest$mremoveFocusEntryForExtPolicyOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 38
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 47
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v2, "focus requester:"

    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v2, v1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, " in uid:"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v2, v1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v2, " pack:"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v2, v1, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 79
    const-string v3, " died"

    .line 81
    invoke-static {v0, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-direct {p1, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 90
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 93
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 96
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    .line 103
    :cond_2
    :goto_0
    return-void
.end method

.method public static -$$Nest$mremoveFocusStackEntryOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 13
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v2

    .line 28
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 30
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v3

    .line 34
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_5

    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 46
    invoke-virtual {v4, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    const-string v6, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    .line 56
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    const-string v6, "MediaFocusControl"

    .line 68
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string/jumbo v5, "com.sec.android.app.voicenote"

    .line 74
    iget-object v7, v4, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 76
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_3

    .line 82
    const-string/jumbo v5, "com.sec.android.app.voicerecorder"

    .line 85
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_2

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    const-string/jumbo v5, "com.sec.android.app.dmb"

    .line 95
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_4

    .line 101
    const-string/jumbo v5, "g_dmb_spk_enable=off"

    .line 104
    invoke-static {v5}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    :goto_2
    const-string v5, "FORCE_NONE for Media"

    .line 110
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5, v1, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)V

    .line 120
    :cond_4
    :goto_3
    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v8, "focus requester:"

    .line 127
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v8, v4, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 132
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v8, " in uid:"

    .line 137
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget v8, v4, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 142
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v8, " pack:"

    .line 147
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v7, " died"

    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v6

    .line 162
    invoke-direct {v5, v6}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 165
    sget-object v6, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 167
    invoke-virtual {v6, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 170
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {p0, v5, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 180
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 183
    goto/16 :goto_1

    .line 185
    :cond_5
    if-eqz v0, :cond_6

    .line 187
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 190
    :cond_6
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 10
    const/16 v1, 0x32

    .line 12
    const-string/jumbo v2, "focus commands as seen by MediaFocusControl"

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 18
    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 20
    const/4 v0, 0x1

    .line 21
    const/16 v1, 0xe

    .line 23
    filled-new-array {v0, v1}, [I

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/PlaybackActivityMonitor;Lcom/android/server/audio/AudioService;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 9
    new-instance v1, Ljava/lang/Object;

    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 33
    const/4 v2, 0x0

    .line 34
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 36
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 38
    new-instance v3, Ljava/util/HashMap;

    .line 40
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 43
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 45
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    .line 47
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerDeathHandler:Lcom/android/server/audio/MediaFocusControl$2;

    .line 49
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezeExemptUids:[I

    .line 51
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    .line 53
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda0;

    .line 55
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceRunnable:Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda0;

    .line 60
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 64
    const/4 v2, -0x1

    .line 65
    iput v2, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 67
    const-string v2, "appops"

    .line 69
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/app/AppOpsManager;

    .line 75
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2}, Landroid/content/ContentResolver;->getUserId()I

    .line 84
    move-result v2

    .line 85
    const-string/jumbo v3, "multi_audio_focus_enabled"

    .line 88
    invoke-static {p2, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_0

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    move v1, v0

    .line 96
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 98
    new-instance p2, Landroid/os/HandlerThread;

    .line 100
    const-string v1, "MediaFocusControl"

    .line 102
    invoke-direct {p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 105
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusThread:Landroid/os/HandlerThread;

    .line 107
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance p2, Lcom/android/server/audio/MediaFocusControl$4;

    .line 112
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusThread:Landroid/os/HandlerThread;

    .line 114
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 117
    move-result-object v2

    .line 118
    invoke-direct {p2, p0, v2}, Lcom/android/server/audio/MediaFocusControl$4;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    .line 121
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    .line 123
    iput-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 125
    invoke-static {v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 128
    move-result-object p2

    .line 129
    new-instance p3, Landroid/os/Handler;

    .line 131
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 134
    move-result-object p2

    .line 135
    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    iput-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceHandler:Landroid/os/Handler;

    .line 140
    const/4 p2, 0x3

    .line 141
    invoke-static {p2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    .line 144
    move-result p2

    .line 145
    iput p2, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 147
    invoke-static {p2}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo p3, "force change device "

    .line 158
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    iget p3, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 163
    const-string v2, " to 2"

    .line 165
    invoke-static {p2, p3, v2, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 p2, 0x2

    .line 169
    iput p2, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 171
    :cond_1
    new-instance p2, Lcom/android/server/audio/MultiFocusStack;

    .line 173
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 176
    new-instance p3, Ljava/util/Stack;

    .line 178
    invoke-direct {p3}, Ljava/util/Stack;-><init>()V

    .line 181
    invoke-virtual {p2, v0, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 184
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 186
    iget p3, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 188
    invoke-virtual {p2, p3}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 191
    move-result-object p2

    .line 192
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 194
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 197
    move-result-object p1

    .line 198
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 200
    return-void
.end method

.method public static getFocusRampTimeMs(Landroid/media/AudioAttributes;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x10

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/16 v0, 0x3ea

    .line 11
    if-eq p0, v0, :cond_0

    .line 13
    const/16 v0, 0x3eb

    .line 15
    if-eq p0, v0, :cond_1

    .line 17
    packed-switch p0, :pswitch_data_0

    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :pswitch_0
    const/16 p0, 0x3e8

    .line 24
    return p0

    .line 25
    :cond_0
    :pswitch_1
    const/16 p0, 0x1f4

    .line 27
    return p0

    .line 28
    :cond_1
    :pswitch_2
    const/16 p0, 0x2bc

    .line 30
    return p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 1

    .line 1
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 11
    and-int/lit8 p0, p0, 0x4

    .line 13
    if-eqz p0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method


# virtual methods
.method public final abandonAudioFocus(Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v10, p1

    .line 5
    move-object/from16 v5, p3

    .line 7
    const-string v1, "abandonAudioFocus, clientId = "

    .line 9
    new-instance v2, Landroid/media/MediaMetrics$Item;

    .line 11
    const-string v3, "audio.focus"

    .line 13
    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v3

    .line 20
    invoke-virtual {v2, v3}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 26
    invoke-virtual {v2, v3, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 32
    invoke-virtual {v2, v3, v10}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 38
    const-string v4, "abandonAudioFocus"

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 47
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 49
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    const-string v6, "abandonAudioFocus() from uid/pid "

    .line 55
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 61
    move-result v6

    .line 62
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v6, "/"

    .line 67
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 73
    move-result v6

    .line 74
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v6, " clientId="

    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v6, " callingPack="

    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 97
    invoke-direct {v3, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v4, "MediaFocusControl"

    .line 102
    const/4 v11, 0x0

    .line 103
    invoke-virtual {v3, v11, v4}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 106
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 109
    :try_start_0
    sget-object v12, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 111
    monitor-enter v12
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    const-string v4, "[Android Auto] isConnectedAndroidAuto = "

    .line 118
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-boolean v4, v2, Lcom/android/server/audio/AudioService;->mConnectedAndroidAuto:Z

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v3

    .line 130
    const-string v4, "AS.AudioService"

    .line 132
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v13, v2, Lcom/android/server/audio/AudioService;->mConnectedAndroidAuto:Z

    .line 137
    iget-boolean v2, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 139
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 141
    invoke-virtual {v3, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 144
    move-result v3

    .line 145
    const/4 v14, 0x1

    .line 146
    if-nez v3, :cond_0

    .line 148
    move v3, v14

    .line 149
    goto :goto_0

    .line 150
    :cond_0
    move v3, v11

    .line 151
    :goto_0
    and-int v15, v2, v3

    .line 153
    if-eqz v15, :cond_1

    .line 155
    iput-boolean v11, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 157
    goto :goto_1

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto/16 :goto_8

    .line 161
    :cond_1
    :goto_1
    if-nez p2, :cond_2

    .line 163
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 168
    move-result v3

    .line 169
    invoke-virtual {v2, v3, v10, v11}, Lcom/android/server/audio/MultiFocusStack;->getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    .line 172
    move-result-object v2

    .line 173
    if-eqz v2, :cond_2

    .line 175
    iget-object v2, v2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 177
    goto :goto_2

    .line 178
    :cond_2
    move-object/from16 v2, p2

    .line 180
    :goto_2
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 182
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_3

    .line 188
    if-eqz v2, :cond_5

    .line 190
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    .line 193
    move-result v3

    .line 194
    if-eq v3, v14, :cond_3

    .line 196
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    .line 199
    move-result v3

    .line 200
    const/4 v4, 0x4

    .line 201
    if-ne v3, v4, :cond_5

    .line 203
    :cond_3
    const-string v3, "MediaFocusControl"

    .line 205
    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 209
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move v1, v11

    .line 213
    :goto_3
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 215
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 218
    move-result v3

    .line 219
    if-ge v1, v3, :cond_5

    .line 221
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 223
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Ljava/util/Stack;

    .line 229
    iput-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 231
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_4

    .line 237
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 239
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 245
    invoke-virtual {v3, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_4

    .line 251
    goto :goto_4

    .line 252
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 255
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 257
    goto :goto_3

    .line 258
    :cond_5
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 260
    if-eqz v1, :cond_7

    .line 262
    if-nez v13, :cond_7

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 267
    move-result v1

    .line 268
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->selectFocusList(I)Ljava/util/ArrayList;

    .line 271
    move-result-object v1

    .line 272
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 277
    move-result-object v1

    .line 278
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_7

    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    move-result-object v3

    .line 288
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 290
    invoke-virtual {v3, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 293
    move-result v4

    .line 294
    if-eqz v4, :cond_6

    .line 296
    iget v3, v3, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 298
    if-lez v3, :cond_6

    .line 300
    move v9, v14

    .line 301
    goto :goto_5

    .line 302
    :cond_7
    move v9, v11

    .line 303
    :goto_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 306
    move-result v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->selectFocusStack(I)Ljava/util/Stack;

    .line 310
    move-result-object v1

    .line 311
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 313
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 315
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result v1

    .line 319
    const/4 v8, 0x0

    .line 320
    if-eqz v1, :cond_8

    .line 322
    iput-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 324
    :cond_8
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    .line 326
    if-eqz v1, :cond_9

    .line 328
    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 330
    invoke-virtual {v1, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_9

    .line 336
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 338
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    .line 341
    move-result v1

    .line 342
    if-nez v1, :cond_9

    .line 344
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 346
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 352
    invoke-virtual {v1, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_9

    .line 358
    invoke-static {v11}, Lcom/samsung/android/media/MySpaceManager;->playMySpaceEffect(I)V

    .line 361
    iput-boolean v11, v0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    .line 363
    const-string v1, "MediaFocusControl"

    .line 365
    const-string v3, "abandonAudioFocus: playMySpaceEffect MUSIC FADE IN"

    .line 367
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_9
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 372
    if-eqz v1, :cond_a

    .line 374
    new-instance v7, Landroid/media/AudioFocusInfo;

    .line 376
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 379
    move-result v3

    .line 380
    const/4 v6, 0x0

    .line 381
    const/16 v16, 0x0

    .line 383
    const/16 v17, 0x0

    .line 385
    const/16 v18, 0x0

    .line 387
    move-object v1, v7

    .line 388
    move-object/from16 v4, p1

    .line 390
    move-object/from16 v5, p3

    .line 392
    move-object v11, v7

    .line 393
    move/from16 v7, v16

    .line 395
    move/from16 v8, v17

    .line 397
    move/from16 v19, v9

    .line 399
    move/from16 v9, v18

    .line 401
    invoke-direct/range {v1 .. v9}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 404
    invoke-virtual {v0, v11}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_b

    .line 410
    monitor-exit v12

    .line 411
    return-void

    .line 412
    :cond_a
    move/from16 v19, v9

    .line 414
    :cond_b
    invoke-virtual {v0, v10, v14, v14}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 417
    if-nez v13, :cond_11

    .line 419
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 421
    if-eqz v1, :cond_f

    .line 423
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 425
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 428
    move-result v1

    .line 429
    move/from16 v14, v19

    .line 431
    if-nez v1, :cond_e

    .line 433
    if-eqz v14, :cond_e

    .line 435
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 437
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 440
    move-result-object v1

    .line 441
    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_f

    .line 447
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    move-result-object v2

    .line 451
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 453
    invoke-virtual {v2, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 456
    move-result v3

    .line 457
    if-eqz v3, :cond_d

    .line 459
    const-string v3, "MediaFocusControl"

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    .line 463
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    const-string v5, "abandonAudioFocus( remove "

    .line 468
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v5, v2, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 473
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v5, " )"

    .line 478
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    move-result-object v4

    .line 485
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 491
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 494
    goto :goto_6

    .line 495
    :cond_d
    iget-boolean v3, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 497
    if-nez v3, :cond_c

    .line 499
    const-string v3, "MediaFocusControl"

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    .line 503
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    const-string v5, "abandonAudioFocus( AUDIOFOCUS_GAIN :: packagename = "

    .line 508
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v5, v2, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 513
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    move-result-object v4

    .line 520
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->handleFocusGain()V

    .line 526
    goto :goto_6

    .line 527
    :cond_e
    const-string v1, "MediaFocusControl"

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    .line 531
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    const-string/jumbo v3, "skip abandonAudioFocus because focus granted "

    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 543
    const-string v3, ", "

    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    move-result-object v2

    .line 555
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_f
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 560
    if-eqz v1, :cond_11

    .line 562
    if-eqz v15, :cond_10

    .line 564
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain()V

    .line 567
    goto :goto_7

    .line 568
    :cond_10
    invoke-virtual {v1, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 571
    move-result v1

    .line 572
    if-eqz v1, :cond_11

    .line 574
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 576
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 579
    const/4 v1, 0x0

    .line 580
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 582
    :cond_11
    :goto_7
    if-eqz v15, :cond_12

    .line 584
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$3;

    .line 586
    const/4 v2, 0x0

    .line 587
    invoke-direct {v1, v0, v2}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    .line 590
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 593
    :cond_12
    monitor-exit v12

    .line 594
    goto :goto_9

    .line 595
    :goto_8
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    const-string v1, "MediaFocusControl"

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    .line 602
    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    .line 604
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    move-result-object v2

    .line 614
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 620
    :goto_9
    return-void
.end method

.method public final canReassignAudioFocus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 11
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/audio/FocusRequester;

    .line 17
    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public final clearMultiAudiofocusfromAndroidAuto()V
    .locals 6

    .line 1
    const-string v0, "[Android Auto] clear MultiAudiofocus from AndroidAuto "

    .line 3
    const-string v1, "MediaFocusControl"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, -0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_0

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/android/server/audio/FocusRequester;

    .line 37
    invoke-virtual {v5, v3, v4, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 40
    const-string v5, "[Android Auto] Loss Multi Audiofocus"

    .line 42
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 53
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 58
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 63
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 65
    const-string p0, "[Android Auto] Loss Ignored Focus"

    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_2
    return-void
.end method

.method public final dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I
    .locals 3

    .line 1
    const-string v0, "MediaFocusControl"

    .line 3
    const-string/jumbo v1, "dispatchFocusChange "

    .line 6
    const-string v2, " to afi client="

    .line 8
    invoke-static {p2, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const/4 v1, -0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-ne p2, v1, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v2

    .line 40
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/MediaFocusControl;->getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_1

    .line 46
    const-string p0, "MediaFocusControl"

    .line 48
    const-string p1, "> failed: no such focus requester known"

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    monitor-exit v0

    .line 54
    return v2

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 60
    move-result p0

    .line 61
    monitor-exit v0

    .line 62
    return p0

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final dispatchFocusChangeWithFade(Landroid/media/AudioFocusInfo;ILjava/util/List;)I
    .locals 6

    .line 1
    const-string v0, "MediaFocusControl"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "dispatchFocusChangeWithFade "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Landroid/media/AudioManager;->audioFocusToString(I)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " to afi client="

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v2, " other active afis="

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/MediaFocusControl;->getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    .line 56
    move-result-object v2

    .line 57
    if-nez v2, :cond_0

    .line 59
    const-string p0, "MediaFocusControl"

    .line 61
    const-string p1, "> failed: no such focus requester known"

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    monitor-exit v0

    .line 67
    return v1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    move v4, v1

    .line 76
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 79
    move-result v5

    .line 80
    if-ge v4, v5, :cond_2

    .line 82
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroid/media/AudioFocusInfo;

    .line 88
    invoke-virtual {v5}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {p0, v5, v1}, Lcom/android/server/audio/MediaFocusControl;->getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    .line 95
    move-result-object v5

    .line 96
    if-nez v5, :cond_1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v2, p2, v3}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChangeWithFadeLocked(ILjava/util/List;)I

    .line 108
    move-result p3

    .line 109
    const/4 v1, 0x2

    .line 110
    if-eq p3, v1, :cond_3

    .line 112
    const/4 v1, -0x1

    .line 113
    if-ne p2, v1, :cond_3

    .line 115
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 117
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_3
    monitor-exit v0

    .line 121
    return p3

    .line 122
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p0
.end method

.method public final duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dumpMultiSoundStack(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "\nMultiFocusStack:"

    .line 3
    const-string/jumbo v1, "size:"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 12
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v2, "device:"

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget v2, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 54
    move-result v2

    .line 55
    const-string v3, "------------------------------"

    .line 57
    if-ge v0, v2, :cond_1

    .line 59
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/util/Stack;

    .line 65
    const-string/jumbo v4, "device = "

    .line 68
    invoke-static {p1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 75
    move-result v4

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v2

    .line 94
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_0

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 106
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 118
    if-eqz v0, :cond_2

    .line 120
    const-string v0, "Ignored focus"

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    .line 130
    :cond_2
    return-void
.end method

.method public final fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/audio/PlayerFocusEnforcer;->fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final forgetUid(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    .line 6
    return-void
.end method

.method public final getAppDevice(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const/4 p0, 0x2

    .line 16
    :cond_0
    return p0
.end method

.method public final getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-wide/16 p0, 0x0

    .line 5
    return-wide p0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 8
    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J

    .line 11
    move-result-wide p0

    .line 12
    return-wide p0
.end method

.method public final getFadeOutDurationMillis(Landroid/media/AudioAttributes;)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-wide/16 p0, 0x0

    .line 5
    return-wide p0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 8
    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->getFadeOutDurationMillis(Landroid/media/AudioAttributes;)J

    .line 11
    move-result-wide p0

    .line 12
    return-wide p0
.end method

.method public final getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 3
    const-string v1, "MediaFocusControl"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "> failed: no focus policy"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/audio/FocusRequester;

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 27
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/audio/FocusRequester;

    .line 33
    :goto_0
    if-nez p0, :cond_2

    .line 35
    const-string p1, "> failed: no such focus requester known"

    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_2
    return-object p0
.end method

.method public final mutePlayersForCall([I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    .line 6
    return-void
.end method

.method public final notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 24
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 26
    invoke-interface {v0, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "Can\'t call notifyAudioFocusAbandon() on IAudioPolicyCallback "

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 40
    invoke-interface {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    const-string v0, "MediaFocusControl"

    .line 53
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_0
    const/4 p0, 0x1

    .line 57
    return p0
.end method

.method public final notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    .locals 10

    .line 1
    const-string v0, "MediaFocusControl"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "notifyExtFocusPolicyFocusRequest client="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " dispatcher="

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    .line 38
    const-wide/16 v3, 0x1

    .line 40
    add-long/2addr v3, v1

    .line 41
    iput-wide v3, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/media/AudioFocusInfo;->setGen(J)V

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 49
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_1

    .line 62
    iget-object v2, v0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 64
    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v2, p2}, Landroid/media/IAudioFocusDispatcher;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 76
    :cond_1
    new-instance v7, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 78
    invoke-direct {v7, p0, p3}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 81
    :try_start_1
    invoke-interface {p3, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 86
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    new-instance v9, Lcom/android/server/audio/FocusRequester;

    .line 92
    move-object v3, v9

    .line 93
    move-object v4, p1

    .line 94
    move-object v5, p2

    .line 95
    move-object v6, p3

    .line 96
    move-object v8, p0

    .line 97
    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    .line 100
    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 105
    const/4 p3, 0x1

    .line 106
    invoke-interface {p2, p1, p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    return p3

    .line 110
    :catch_0
    move-exception p1

    .line 111
    const-string p2, "MediaFocusControl"

    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    .line 115
    const-string v0, "Can\'t call notifyAudioFocusRequest() on IAudioPolicyCallback "

    .line 117
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 122
    invoke-interface {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :catch_1
    return v1

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    throw p0
.end method

.method public final notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 19
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    const-string v4, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    const-string v3, "MediaFocusControl"

    .line 44
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CARLIFE:Z

    .line 50
    if-eqz v0, :cond_1

    .line 52
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 54
    if-eqz p0, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 57
    if-ne p2, v0, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    .line 62
    move-result p2

    .line 63
    const/4 v1, 0x3

    .line 64
    if-ne p2, v1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    const/16 p2, 0x200

    .line 72
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToSoundEventReceiver(IILjava/lang/String;)V

    .line 75
    :cond_1
    return-void
.end method

.method public final notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 19
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    const-string v4, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    const-string v3, "MediaFocusControl"

    .line 44
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CARLIFE:Z

    .line 50
    if-eqz p2, :cond_1

    .line 52
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 54
    if-eqz p0, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    .line 59
    move-result p2

    .line 60
    const/4 v0, 0x3

    .line 61
    if-ne p2, v0, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    const/16 p2, 0x200

    .line 69
    const/4 v0, 0x2

    .line 70
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToSoundEventReceiver(IILjava/lang/String;)V

    .line 73
    :cond_1
    return-void
.end method

.method public final notifyTopOfAudioFocusStack()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 17
    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 21
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 27
    iget-object v0, v0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 31
    const-string/jumbo v2, "delay_loss_audio_focus"

    .line 34
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v1, "notifyTopOfAudioFocusStack: "

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 50
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 56
    iget-object v1, v1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 58
    const-string v2, "MediaFocusControl"

    .line 60
    invoke-static {v0, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    .line 65
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 67
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x3

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    .line 77
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 79
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x4

    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 87
    move-result-object v1

    .line 88
    const-wide/16 v2, 0x1f4

    .line 90
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 96
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 102
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->handleFocusGain()V

    .line 105
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 107
    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_3

    .line 117
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object p0

    .line 123
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_3

    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 135
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->handleFocusGain()V

    .line 144
    goto :goto_1

    .line 145
    :cond_3
    return-void
.end method

.method public final propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "propagateFocusLossFromGain_syncAf gain:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "MediaFocusControl"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    .line 23
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 28
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 36
    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v2

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v5, "propagateFocusLossFromGain_syncAf checking client:"

    .line 57
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v5, v3, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 62
    invoke-static {v4, v5, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_0

    .line 71
    iget-object v3, v3, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-string/jumbo v2, "propagateFocusLossFromGain_syncAf empty stack"

    .line 80
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 85
    if-eqz v1, :cond_5

    .line 87
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_5

    .line 95
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v1

    .line 101
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_5

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 113
    if-eqz p2, :cond_4

    .line 115
    iget-object v3, v2, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 117
    iget-object v4, p2, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 119
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_4

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_3

    .line 132
    iget-object v2, v2, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 137
    goto :goto_1

    .line 138
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    move-result-object p1

    .line 142
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_6

    .line 148
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    move-result-object p2

    .line 152
    check-cast p2, Ljava/lang/String;

    .line 154
    const/4 p3, 0x0

    .line 155
    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 159
    goto :goto_2

    .line 160
    :cond_6
    return-void
.end method

.method public final pushBelowLockedFocusOwnersAndPropagate(Lcom/android/server/audio/FocusRequester;)I
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "pushBelowLockedFocusOwnersAndPropagate client="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaFocusControl"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 25
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    .line 28
    move-result v0

    .line 29
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 31
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x1

    .line 36
    sub-int/2addr v2, v3

    .line 37
    :goto_0
    if-ltz v2, :cond_1

    .line 39
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 41
    invoke-virtual {v4, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 47
    invoke-static {v4}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 53
    move v0, v2

    .line 54
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 59
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    .line 62
    move-result v2

    .line 63
    const/4 v4, 0x0

    .line 64
    iget v5, p1, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 66
    if-ne v0, v2, :cond_2

    .line 68
    new-instance v0, Ljava/lang/Exception;

    .line 70
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 73
    const-string v2, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    .line 75
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {p0, v5, p1, v4}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 81
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 83
    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return v3

    .line 87
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    const-string v6, "> lastLockedFocusOwnerIndex="

    .line 91
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 106
    invoke-virtual {v2, p1, v0}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 109
    new-instance v2, Ljava/util/LinkedList;

    .line 111
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 114
    sub-int/2addr v0, v3

    .line 115
    :goto_1
    if-ltz v0, :cond_4

    .line 117
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 119
    invoke-virtual {v6, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Lcom/android/server/audio/FocusRequester;

    .line 125
    invoke-virtual {v6, v5, p1, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_3

    .line 131
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 133
    invoke-virtual {v6, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Lcom/android/server/audio/FocusRequester;

    .line 139
    iget-object v6, v6, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 141
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    move-result-object p1

    .line 151
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_5

    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Ljava/lang/String;

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    const-string v5, "> removing focus client "

    .line 167
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 183
    goto :goto_2

    .line 184
    :cond_5
    const/4 p0, 0x2

    .line 185
    return p0
.end method

.method public final removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 25
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 28
    move-result-object v3

    .line 29
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v3, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 39
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6

    .line 1
    const-string/jumbo v0, "removeFocusStackEntry client:"

    .line 4
    const-string v1, "MediaFocusControl"

    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 11
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 20
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 34
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 40
    iget-boolean v1, v0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 42
    if-nez v1, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 47
    :cond_0
    if-eqz p3, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 52
    move-result-object v2

    .line 53
    :cond_1
    if-eqz p2, :cond_5

    .line 55
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 61
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v0

    .line 65
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_5

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 77
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_3

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    .line 87
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 97
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 103
    if-eqz p3, :cond_4

    .line 105
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 108
    move-result-object v2

    .line 109
    :cond_4
    iget-boolean v4, v3, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 111
    if-nez v4, :cond_3

    .line 113
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 116
    goto :goto_0

    .line 117
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 119
    invoke-virtual {v2}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 122
    const/4 p3, 0x0

    .line 123
    invoke-virtual {p0, v2, p3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 126
    :cond_6
    iget-boolean p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 128
    if-eqz p3, :cond_9

    .line 130
    iget-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 135
    move-result p3

    .line 136
    if-nez p3, :cond_9

    .line 138
    iget-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object p3

    .line 144
    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_8

    .line 150
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 156
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_7

    .line 162
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 165
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 168
    goto :goto_2

    .line 169
    :cond_8
    if-eqz p2, :cond_9

    .line 171
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 174
    :cond_9
    return-void
.end method

.method public final requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZI)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v13, p2

    .line 5
    move-object/from16 v14, p3

    .line 7
    move-object/from16 v15, p5

    .line 9
    move-object/from16 v12, p6

    .line 11
    move/from16 v10, p7

    .line 13
    move/from16 v11, p9

    .line 15
    new-instance v1, Landroid/media/MediaMetrics$Item;

    .line 17
    const-string v2, "audio.focus"

    .line 19
    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 32
    invoke-virtual {v1, v2, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 38
    invoke-virtual {v1, v2, v15}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 44
    const-string/jumbo v3, "requestAudioFocus"

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 50
    move-result-object v1

    .line 51
    sget-object v2, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 53
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 60
    move-result-object v1

    .line 61
    sget-object v2, Landroid/media/MediaMetrics$Property;->FOCUS_CHANGE_HINT:Landroid/media/MediaMetrics$Key;

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/media/AudioManager;->audioFocusToString(I)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 74
    const/16 v1, 0x8

    .line 76
    if-ne v10, v1, :cond_0

    .line 78
    move/from16 v9, p10

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 84
    move-result v2

    .line 85
    move v9, v2

    .line 86
    :goto_0
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 88
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 90
    const-string/jumbo v4, "requestAudioFocus() from uid/pid "

    .line 93
    const-string v5, "/"

    .line 95
    invoke-static {v9, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-result-object v4

    .line 99
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 102
    move-result v5

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v5, " AA="

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v5, "/"

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v5, " clientId="

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v5, " callingPack="

    .line 137
    const-string v6, " req="

    .line 139
    invoke-static {v4, v15, v5, v12, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v5, " flags=0x"

    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v5, " sdk="

    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    move/from16 v8, p8

    .line 164
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v4

    .line 171
    invoke-direct {v3, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v4, "MediaFocusControl"

    .line 176
    const/4 v7, 0x0

    .line 177
    invoke-virtual {v3, v7, v4}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 180
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 183
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_1

    .line 189
    const-string v0, "MediaFocusControl"

    .line 191
    const-string v1, " AudioFocus DOA client for requestAudioFocus(), aborting."

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v7

    .line 197
    :cond_1
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_ACH_RINGTONE:Z

    .line 199
    const/4 v6, 0x1

    .line 200
    if-eqz v2, :cond_2

    .line 202
    const-string/jumbo v2, "com.android.systemui"

    .line 205
    invoke-static {v12, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_2

    .line 211
    if-eq v13, v6, :cond_2

    .line 213
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 215
    invoke-static/range {p1 .. p1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    .line 218
    move-result v3

    .line 219
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    .line 222
    move-result v2

    .line 223
    if-nez v2, :cond_2

    .line 225
    const-string v0, "MediaFocusControl"

    .line 227
    const-string v1, "Notification volume is 0,  failing requestAudioFocus()"

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v7

    .line 233
    :cond_2
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    .line 237
    const-string v4, "[Android Auto] isConnectedAndroidAuto = "

    .line 239
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    iget-boolean v4, v2, Lcom/android/server/audio/AudioService;->mConnectedAndroidAuto:Z

    .line 244
    const-string v5, "AS.AudioService"

    .line 246
    invoke-static {v5, v3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 249
    iget-boolean v5, v2, Lcom/android/server/audio/AudioService;->mConnectedAndroidAuto:Z

    .line 251
    sget-object v16, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 253
    monitor-enter v16

    .line 254
    :try_start_0
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    .line 256
    if-eqz v2, :cond_7

    .line 258
    and-int/lit8 v2, v10, 0x8

    .line 260
    if-ne v2, v1, :cond_3

    .line 262
    move/from16 v1, p10

    .line 264
    goto :goto_1

    .line 265
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 268
    move-result v1

    .line 269
    :goto_1
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    .line 271
    if-eqz v2, :cond_4

    .line 273
    goto :goto_3

    .line 274
    :cond_4
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezeExemptUids:[I

    .line 276
    array-length v3, v2

    .line 277
    move v4, v7

    .line 278
    :goto_2
    if-ge v4, v3, :cond_6

    .line 280
    aget v6, v2, v4

    .line 282
    if-ne v6, v1, :cond_5

    .line 284
    :goto_3
    const-string v2, "MediaFocusControl"

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    .line 288
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    const-string/jumbo v4, "requestAudioFocus: focus frozen for test but uid:"

    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, " is exempt"

    .line 302
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object v1

    .line 309
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    goto :goto_4

    .line 313
    :catchall_0
    move-exception v0

    .line 314
    goto/16 :goto_13

    .line 316
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 318
    const/4 v6, 0x1

    .line 319
    goto :goto_2

    .line 320
    :cond_6
    const-string v0, "MediaFocusControl"

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 324
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    const-string/jumbo v3, "requestAudioFocus: focus frozen for test for uid:"

    .line 330
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    monitor-exit v16

    .line 344
    return v7

    .line 345
    :cond_7
    :goto_4
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 347
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    .line 350
    move-result v1

    .line 351
    const/16 v6, 0x64

    .line 353
    if-le v1, v6, :cond_8

    .line 355
    const-string v0, "MediaFocusControl"

    .line 357
    const-string v1, "Max AudioFocus stack size reached, failing requestAudioFocus()"

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    monitor-exit v16

    .line 363
    return v7

    .line 364
    :cond_8
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 366
    if-eqz v1, :cond_a

    .line 368
    and-int/lit8 v1, v10, 0x1

    .line 370
    if-nez v1, :cond_9

    .line 372
    const-string v0, "MediaFocusControl"

    .line 374
    const-string/jumbo v1, "requestAudioFocus failed while call"

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    monitor-exit v16

    .line 381
    return v7

    .line 382
    :cond_9
    const-string v1, "MediaFocusControl"

    .line 384
    const-string/jumbo v2, "requestAudioFocus NOT failed while call - FLAG_DELAY_OK "

    .line 387
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 393
    move-result v1

    .line 394
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->selectFocusStack(I)Ljava/util/Stack;

    .line 397
    move-result-object v1

    .line 398
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 400
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 402
    if-eqz v1, :cond_b

    .line 404
    if-nez v5, :cond_b

    .line 406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 409
    move-result v1

    .line 410
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->selectFocusList(I)Ljava/util/ArrayList;

    .line 413
    move-result-object v1

    .line 414
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 416
    :cond_b
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 418
    const/4 v4, 0x1

    .line 419
    xor-int/2addr v1, v4

    .line 420
    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 422
    invoke-virtual {v2, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 425
    move-result v2

    .line 426
    if-nez v2, :cond_c

    .line 428
    move v2, v4

    .line 429
    goto :goto_5

    .line 430
    :cond_c
    move v2, v7

    .line 431
    :goto_5
    and-int v17, v1, v2

    .line 433
    if-eqz v17, :cond_d

    .line 435
    iput-boolean v4, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 437
    :cond_d
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 439
    const/4 v3, 0x0

    .line 440
    if-eqz v1, :cond_e

    .line 442
    new-instance v18, Landroid/media/AudioFocusInfo;

    .line 444
    const/16 v19, 0x0

    .line 446
    move-object/from16 v1, v18

    .line 448
    move-object/from16 v2, p1

    .line 450
    move v3, v9

    .line 451
    move/from16 v20, v4

    .line 453
    move-object/from16 v4, p5

    .line 455
    move/from16 v21, v5

    .line 457
    move-object/from16 v5, p6

    .line 459
    move/from16 v13, v20

    .line 461
    move/from16 v20, v6

    .line 463
    move/from16 v6, p2

    .line 465
    move/from16 v7, v19

    .line 467
    move/from16 v8, p7

    .line 469
    move/from16 v22, v9

    .line 471
    move/from16 v9, p8

    .line 473
    invoke-direct/range {v1 .. v9}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 476
    move-object/from16 v3, v18

    .line 478
    goto :goto_6

    .line 479
    :cond_e
    move v13, v4

    .line 480
    move/from16 v21, v5

    .line 482
    move/from16 v20, v6

    .line 484
    move/from16 v22, v9

    .line 486
    const/4 v3, 0x0

    .line 487
    :goto_6
    sget-boolean v1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 489
    if-eqz v1, :cond_11

    .line 491
    const-string/jumbo v1, "com.android.server.telecom"

    .line 494
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 497
    move-result v1

    .line 498
    if-nez v1, :cond_f

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 503
    move-result v1

    .line 504
    const/4 v2, 0x4

    .line 505
    if-eq v1, v2, :cond_f

    .line 507
    const/4 v2, 0x5

    .line 508
    if-eq v1, v2, :cond_f

    .line 510
    const/4 v2, 0x6

    .line 511
    if-eq v1, v2, :cond_f

    .line 513
    goto :goto_7

    .line 514
    :cond_f
    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 516
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    move-result v1

    .line 520
    if-eqz v1, :cond_10

    .line 522
    new-instance v11, Lcom/android/server/audio/FocusRequester;

    .line 524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 527
    move-result v17

    .line 528
    const/4 v8, 0x0

    .line 529
    move-object v1, v11

    .line 530
    move-object/from16 v2, p1

    .line 532
    move/from16 v3, p2

    .line 534
    move/from16 v4, p7

    .line 536
    move-object/from16 v5, p4

    .line 538
    move-object/from16 v6, p3

    .line 540
    move-object/from16 v7, p5

    .line 542
    move-object/from16 v9, p6

    .line 544
    move/from16 v10, v17

    .line 546
    move-object v15, v11

    .line 547
    move-object/from16 v11, p0

    .line 549
    move/from16 v12, p8

    .line 551
    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    .line 554
    iput-object v15, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 556
    iput-object v14, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    .line 558
    :cond_10
    monitor-exit v16

    .line 559
    return v13

    .line 560
    :cond_11
    :goto_7
    const-string/jumbo v1, "com.android.server.telecom"

    .line 563
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 566
    move-result v1

    .line 567
    if-eqz v1, :cond_12

    .line 569
    iput-object v15, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 571
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    .line 574
    move-result v1

    .line 575
    if-nez v1, :cond_14

    .line 577
    and-int/lit8 v1, v10, 0x1

    .line 579
    if-nez v1, :cond_13

    .line 581
    monitor-exit v16

    .line 582
    const/4 v9, 0x0

    .line 583
    return v9

    .line 584
    :cond_13
    const/4 v9, 0x0

    .line 585
    move/from16 v18, v13

    .line 587
    goto :goto_8

    .line 588
    :cond_14
    const/4 v9, 0x0

    .line 589
    move/from16 v18, v9

    .line 591
    :goto_8
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 593
    if-eqz v1, :cond_16

    .line 595
    move-object/from16 v5, p4

    .line 597
    invoke-virtual {v0, v3, v5, v14}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z

    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_15

    .line 603
    monitor-exit v16

    .line 604
    return v20

    .line 605
    :cond_15
    monitor-exit v16

    .line 606
    return v9

    .line 607
    :cond_16
    move-object/from16 v5, p4

    .line 609
    new-instance v8, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 611
    invoke-direct {v8, v0, v14}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :try_start_1
    invoke-interface {v14, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    :try_start_2
    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 619
    invoke-virtual {v1, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 622
    move-result v1

    .line 623
    if-nez v1, :cond_18

    .line 625
    invoke-static {}, Lcom/samsung/android/audio/AudioManagerHelper;->isFMPlayerActive()Z

    .line 628
    move-result v1

    .line 629
    if-nez v1, :cond_18

    .line 631
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 633
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    .line 636
    move-result v1

    .line 637
    if-nez v1, :cond_18

    .line 639
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 641
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 643
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 646
    move-result-object v2

    .line 647
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 649
    iget v2, v2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 651
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    .line 654
    move-result v1

    .line 655
    if-eqz v1, :cond_18

    .line 657
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 659
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 661
    const/4 v2, 0x3

    .line 662
    aget-object v1, v1, v2

    .line 664
    iget-object v1, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 666
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    .line 669
    move-result v1

    .line 670
    and-int/lit8 v1, v1, 0xc

    .line 672
    if-eqz v1, :cond_17

    .line 674
    invoke-static {v13}, Lcom/samsung/android/media/MySpaceManager;->playMySpaceEffect(I)V

    .line 677
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceHandler:Landroid/os/Handler;

    .line 679
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceRunnable:Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda0;

    .line 681
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceRunnable:Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda0;

    .line 686
    const-wide/16 v3, 0x3e8

    .line 688
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 691
    :try_start_3
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 693
    const-wide/16 v2, 0x5dc

    .line 695
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 698
    :catch_0
    :try_start_4
    const-string v1, "MediaFocusControl"

    .line 700
    const-string/jumbo v2, "requestAudioFocus: playMySpaceEffect MUSIC FADE OUT"

    .line 703
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_17
    iput-boolean v13, v0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    .line 708
    :cond_18
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 710
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    .line 713
    move-result v1

    .line 714
    if-nez v1, :cond_1b

    .line 716
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 718
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 721
    move-result-object v1

    .line 722
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 724
    invoke-virtual {v1, v15}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 727
    move-result v1

    .line 728
    if-eqz v1, :cond_1b

    .line 730
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 732
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 735
    move-result-object v1

    .line 736
    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 738
    iget v2, v1, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 740
    move v7, v13

    .line 741
    move/from16 v13, p2

    .line 743
    if-ne v2, v13, :cond_1a

    .line 745
    iget v2, v1, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 747
    if-ne v2, v10, :cond_1a

    .line 749
    invoke-interface {v14, v8, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 752
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 755
    move-result-object v1

    .line 756
    invoke-virtual {v0, v1, v7}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 759
    if-ne v13, v7, :cond_19

    .line 761
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 763
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    .line 766
    move-result v1

    .line 767
    if-nez v1, :cond_19

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    .line 772
    move-result v1

    .line 773
    if-eqz v1, :cond_19

    .line 775
    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 777
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 780
    move-result-object v0

    .line 781
    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 783
    iput v9, v0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 785
    :cond_19
    monitor-exit v16

    .line 786
    return v7

    .line 787
    :cond_1a
    if-nez v18, :cond_1c

    .line 789
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 791
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 794
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 797
    goto :goto_9

    .line 798
    :cond_1b
    move v7, v13

    .line 799
    move/from16 v13, p2

    .line 801
    :cond_1c
    :goto_9
    invoke-virtual {v0, v15, v9, v9}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 804
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 806
    move/from16 v6, v22

    .line 808
    invoke-virtual {v1, v6, v15, v7}, Lcom/android/server/audio/MultiFocusStack;->getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    .line 811
    move-result-object v1

    .line 812
    if-eqz v1, :cond_1d

    .line 814
    iput v9, v1, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 816
    :cond_1d
    if-nez v1, :cond_1e

    .line 818
    new-instance v19, Lcom/android/server/audio/FocusRequester;

    .line 820
    move-object/from16 v1, v19

    .line 822
    move-object/from16 v2, p1

    .line 824
    move/from16 v3, p2

    .line 826
    move/from16 v4, p7

    .line 828
    move-object/from16 v5, p4

    .line 830
    move/from16 v22, v6

    .line 832
    move-object/from16 v6, p3

    .line 834
    move v14, v7

    .line 835
    move-object/from16 v7, p5

    .line 837
    move v10, v9

    .line 838
    move-object/from16 v9, p6

    .line 840
    move/from16 v10, v22

    .line 842
    move-object/from16 v11, p0

    .line 844
    move/from16 v12, p8

    .line 846
    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    .line 849
    move-object/from16 v1, v19

    .line 851
    goto :goto_a

    .line 852
    :cond_1e
    move/from16 v22, v6

    .line 854
    move v14, v7

    .line 855
    :goto_a
    iget v2, v1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 857
    invoke-virtual {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    .line 860
    move-result v2

    .line 861
    iput v2, v1, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 863
    if-eqz v21, :cond_1f

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->clearMultiAudiofocusfromAndroidAuto()V

    .line 868
    move-object/from16 v5, p6

    .line 870
    move/from16 v4, p9

    .line 872
    goto/16 :goto_10

    .line 874
    :cond_1f
    iget-boolean v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 876
    if-eqz v2, :cond_20

    .line 878
    if-ne v13, v14, :cond_20

    .line 880
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_REMOTE_MIC:Z

    .line 882
    if-eqz v2, :cond_21

    .line 884
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    .line 887
    move-result-object v2

    .line 888
    const-string v3, "AUDIO_REMOTE_MIC"

    .line 890
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 893
    move-result v2

    .line 894
    if-nez v2, :cond_20

    .line 896
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 898
    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mRemoteMic:Z

    .line 900
    if-eqz v2, :cond_21

    .line 902
    :cond_20
    move/from16 v4, p9

    .line 904
    goto :goto_d

    .line 905
    :cond_21
    if-eqz v17, :cond_22

    .line 907
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 909
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 912
    move-result v2

    .line 913
    if-nez v2, :cond_20

    .line 915
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 917
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 920
    move-result-object v2

    .line 921
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 924
    move-result v3

    .line 925
    if-eqz v3, :cond_20

    .line 927
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 930
    move-result-object v3

    .line 931
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 933
    move/from16 v4, p9

    .line 935
    invoke-virtual {v3, v13, v1, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 938
    goto :goto_b

    .line 939
    :cond_22
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 941
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 944
    move-result v2

    .line 945
    if-nez v2, :cond_24

    .line 947
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 949
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 952
    move-result-object v2

    .line 953
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 956
    move-result v3

    .line 957
    if-eqz v3, :cond_24

    .line 959
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 962
    move-result-object v3

    .line 963
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 965
    iget v3, v3, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 967
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 970
    move-result v4

    .line 971
    if-ne v3, v4, :cond_23

    .line 973
    goto :goto_c

    .line 974
    :cond_24
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 976
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 981
    iget v3, v1, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 983
    invoke-virtual {v2, v3}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 986
    move-result-object v2

    .line 987
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :goto_c
    iget-object v2, v1, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 992
    invoke-virtual {v2, v1}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 995
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 998
    move-result-object v1

    .line 999
    invoke-virtual {v0, v1, v14}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1002
    monitor-exit v16

    .line 1003
    return v14

    .line 1004
    :goto_d
    iget v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 1006
    move/from16 v3, v22

    .line 1008
    if-ne v2, v3, :cond_28

    .line 1010
    const-string v2, "MediaFocusControl"

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1014
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    const-string v4, "Ignore AudioFocus for "

    .line 1019
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    move-object/from16 v5, p6

    .line 1024
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1030
    move-result-object v3

    .line 1031
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 1036
    if-eqz v2, :cond_26

    .line 1038
    invoke-virtual {v2, v15}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    .line 1041
    move-result v2

    .line 1042
    if-nez v2, :cond_25

    .line 1044
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 1046
    const/4 v3, 0x0

    .line 1047
    invoke-virtual {v2, v13, v1, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 1050
    goto :goto_e

    .line 1051
    :cond_25
    const/4 v3, 0x0

    .line 1052
    :goto_e
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 1054
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 1057
    const/4 v2, 0x0

    .line 1058
    iput-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 1060
    goto :goto_f

    .line 1061
    :cond_26
    const/4 v3, 0x0

    .line 1062
    :goto_f
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 1064
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1066
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    .line 1069
    move-result v2

    .line 1070
    if-nez v2, :cond_27

    .line 1072
    const-string/jumbo v2, "com.google.android.projection.gearhead"

    .line 1075
    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1077
    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 1080
    move-result-object v4

    .line 1081
    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 1083
    iget-object v4, v4, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 1085
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1088
    move-result v2

    .line 1089
    if-eqz v2, :cond_27

    .line 1091
    const-string v2, "MediaFocusControl"

    .line 1093
    const-string v4, "Loss to Android Auto"

    .line 1095
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1100
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 1103
    move-result-object v2

    .line 1104
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 1106
    invoke-virtual {v2, v13, v1, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 1109
    :cond_27
    iget-object v2, v1, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 1111
    invoke-virtual {v2, v1}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 1114
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 1117
    move-result-object v1

    .line 1118
    invoke-virtual {v0, v1, v14}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1121
    monitor-exit v16

    .line 1122
    return v14

    .line 1123
    :cond_28
    move-object/from16 v5, p6

    .line 1125
    if-eqz v17, :cond_29

    .line 1127
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 1129
    if-eqz v2, :cond_29

    .line 1131
    invoke-virtual {v2, v13, v1, v14}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 1134
    :cond_29
    :goto_10
    if-eqz v18, :cond_2b

    .line 1136
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwnersAndPropagate(Lcom/android/server/audio/FocusRequester;)I

    .line 1139
    move-result v2

    .line 1140
    if-eqz v2, :cond_2a

    .line 1142
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 1145
    move-result-object v1

    .line 1146
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1149
    :cond_2a
    monitor-exit v16

    .line 1150
    return v2

    .line 1151
    :cond_2b
    invoke-virtual {v0, v13, v1, v4}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 1154
    const-string/jumbo v2, "com.android.server.telecom"

    .line 1157
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1160
    move-result v2

    .line 1161
    if-nez v2, :cond_2c

    .line 1163
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getContentType()I

    .line 1166
    move-result v2

    .line 1167
    if-ne v2, v14, :cond_2e

    .line 1169
    :cond_2c
    const-string/jumbo v2, "propagateFocusLossFromGainToAll, "

    .line 1172
    const-string v3, "MediaFocusControl"

    .line 1174
    invoke-static {v13, v2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1177
    const/4 v2, 0x0

    .line 1178
    :goto_11
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 1180
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 1183
    move-result v4

    .line 1184
    if-ge v2, v4, :cond_2e

    .line 1186
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1189
    move-result-object v3

    .line 1190
    check-cast v3, Ljava/util/Stack;

    .line 1192
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 1195
    move-result-object v3

    .line 1196
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1199
    move-result v4

    .line 1200
    if-eqz v4, :cond_2d

    .line 1202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1205
    move-result-object v4

    .line 1206
    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 1208
    const/4 v5, 0x1

    .line 1209
    invoke-virtual {v4, v13, v1, v5}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 1212
    goto :goto_12

    .line 1213
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    .line 1215
    goto :goto_11

    .line 1216
    :cond_2e
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1218
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    iget-object v2, v1, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 1223
    invoke-virtual {v2, v1}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 1226
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    .line 1229
    move-result-object v1

    .line 1230
    invoke-virtual {v0, v1, v14}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1233
    if-eqz v17, :cond_2f

    .line 1235
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$3;

    .line 1237
    invoke-direct {v1, v0, v14}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    .line 1240
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1243
    :cond_2f
    monitor-exit v16

    .line 1244
    return v14

    .line 1245
    :catch_1
    move v3, v9

    .line 1246
    const-string v0, "MediaFocusControl"

    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1253
    const-string v2, "AudioFocus  requestAudioFocus() could not link to "

    .line 1255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1261
    const-string v2, " binder death"

    .line 1263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1269
    move-result-object v1

    .line 1270
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    monitor-exit v16

    .line 1274
    return v3

    .line 1275
    :goto_13
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1276
    throw v0
.end method

.method public final restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    .line 8
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 10
    iget p1, p1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 12
    invoke-direct {v0, p1}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 19
    return-void
.end method

.method public final selectFocusList(I)Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    .line 4
    move-result p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "selectFocusStack, uid = "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ", appDevice = "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", device = "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "MediaFocusControl"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz p1, :cond_0

    .line 57
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 59
    if-ne p1, v0, :cond_1

    .line 61
    :cond_0
    const/4 p1, 0x0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    return-object v0
.end method

.method public final selectFocusStack(I)Ljava/util/Stack;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    .line 4
    move-result p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "selectFocusStack, uid = "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ", appDevice = "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", device = "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "MediaFocusControl"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz p1, :cond_0

    .line 57
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 59
    if-ne p1, v0, :cond_1

    .line 61
    :cond_0
    const/4 p1, 0x0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public final setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGen()J

    .line 7
    move-result-wide v1

    .line 8
    iget-wide v3, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    .line 10
    cmp-long v1, v1, v3

    .line 12
    if-lez v1, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_4

    .line 18
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 21
    monitor-enter v1

    .line 22
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x1

    .line 27
    if-nez p2, :cond_1

    .line 29
    move v2, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRequesterLocked(Ljava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_3

    .line 38
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 42
    const-string v3, "FocusRequester"

    .line 44
    if-nez v2, :cond_2

    .line 46
    const-string/jumbo p1, "dispatchFocusResultFromExtPolicy: no focus dispatcher"

    .line 49
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :try_start_2
    invoke-interface {v2, p2, p1}, Landroid/media/IAudioFocusDispatcher;->dispatchFocusResultFromExtPolicy(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v2

    .line 58
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v5, "dispatchFocusResultFromExtPolicy: error talking to focus listener"

    .line 63
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-static {v3, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_1
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 82
    if-ne p2, v0, :cond_3

    .line 84
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 86
    invoke-virtual {p1, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 89
    goto :goto_2

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    :goto_2
    monitor-exit v1

    .line 93
    return-void

    .line 94
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    throw p0

    .line 96
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    throw p0
.end method

.method public final setIgnoreAudioFocus(IZ)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 16
    if-nez p2, :cond_1

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 26
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 29
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 36
    iput v2, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :cond_3
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 42
    iget-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p2, p1, v1}, Lcom/android/server/audio/MultiFocusStack;->getFocusRequester(IZ)Ljava/util/ArrayList;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_4

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 60
    move-result p2

    .line 61
    sub-int/2addr p2, v1

    .line 62
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 68
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final shouldEnforceFade()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 11
    invoke-interface {p0}, Lcom/android/server/audio/PlayerFocusEnforcer;->shouldEnforceFade()Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final unmutePlayersForCall()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 3
    invoke-interface {p0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 6
    return-void
.end method

.method public final updateFocusRequester(IZ)V
    .locals 5

    .line 1
    const-string v0, "MediaFocusControl"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "updateFocusRequester, uid:"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 27
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    .line 30
    move-result v1

    .line 31
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-virtual {v3, p1, v4}, Lcom/android/server/audio/MultiFocusStack;->getFocusRequester(IZ)Ljava/util/ArrayList;

    .line 40
    move-result-object p1

    .line 41
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;

    .line 43
    invoke-direct {v3, p0, v0, v1, p2}, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/MediaFocusControl;IZZ)V

    .line 46
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    monitor-exit v2

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method
