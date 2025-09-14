.class public final Lcom/samsung/android/server/audio/LiveTranslatorManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mCr:Landroid/content/ContentResolver;

.field public static sInstance:Lcom/samsung/android/server/audio/LiveTranslatorManager;

.field public static final sVoipLiveTranslateLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public final mCallAssistantUri:Landroid/net/Uri;

.field public mCurAudioMode:I

.field public mIsLiveTranslateOn:Z

.field public final mIsVoiceCapable:Z

.field public mPackageName:Ljava/lang/String;

.field public mStates:I

.field public mVoipPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const-string v2, "Live translate history"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->sVoipLiveTranslateLogger:Lcom/android/server/utils/EventLogger;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mVoipPackageName:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mStates:I

    .line 14
    .line 15
    const-string/jumbo v1, "phone"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsVoiceCapable:Z

    .line 34
    .line 35
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sput-object p1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    .line 46
    .line 47
    const-string p1, "content://com.samsung.android.callassistant.voipprovider"

    .line 48
    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCallAssistantUri:Landroid/net/Uri;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final setVoipTranslator(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->sVoipLiveTranslateLogger:Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    const-string v1, "LiveTranslatorManager"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    :try_start_0
    sget-object v3, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCallAssistantUri:Landroid/net/Uri;

    .line 11
    .line 12
    const-string v5, "isSupportedVoipTranslation"

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    invoke-virtual {v3, v4, v5, p1, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "is_support_voip_translation"

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move v3, v2

    .line 35
    :goto_0
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const-string v4, "l_voip_translate_package_name="

    .line 38
    .line 39
    invoke-static {v4, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 44
    .line 45
    invoke-direct {v5, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    move v3, v2

    .line 56
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v4, v2

    .line 63
    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsLiveTranslateOn:Z

    .line 64
    .line 65
    const-string/jumbo v4, "setVoipTranslator enable "

    .line 66
    .line 67
    .line 68
    const-string v5, ", supported "

    .line 69
    .line 70
    const-string v6, ", mode "

    .line 71
    .line 72
    invoke-static {v4, p2, v5, v3, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget v3, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    .line 77
    .line 78
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v3, ", "

    .line 82
    .line 83
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v0, v2, p2, v1}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object p2, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    .line 97
    .line 98
    const-string/jumbo v0, "voip_translator_package"

    .line 99
    .line 100
    .line 101
    sget-object v1, Lcom/samsung/android/server/audio/utils/AudioUtils;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    .line 102
    .line 103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    :try_start_1
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    .line 112
    .line 113
    sget-object p1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    .line 114
    .line 115
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsLiveTranslateOn:Z

    .line 116
    .line 117
    const-string/jumbo p2, "voip_translator_enable"

    .line 118
    .line 119
    .line 120
    invoke-static {p1, p2, p0}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public final updateAudioMode(ILjava/lang/String;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    iput p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v0, "updateAudioMode() audioMode="

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", caller="

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "LiveTranslatorManager"

    .line 31
    .line 32
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/LiveTranslatorManager;->updateVoipTranslator()V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    const-string p1, ""

    .line 43
    .line 44
    iput-object p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mVoipPackageName:Ljava/lang/String;

    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final updateVoipTranslator()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsVoiceCapable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const-string v0, "com.android.server.telecom"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, "android"

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mVoipPackageName:Ljava/lang/String;

    .line 30
    .line 31
    :goto_1
    sget-object v1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    .line 32
    .line 33
    const-string/jumbo v2, "translate_during_calls"

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v1, :cond_6

    .line 43
    .line 44
    iget v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    .line 45
    .line 46
    const/4 v4, 0x3

    .line 47
    if-ne v1, v4, :cond_6

    .line 48
    .line 49
    iget v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mStates:I

    .line 50
    .line 51
    and-int/2addr v1, v3

    .line 52
    if-lez v1, :cond_2

    .line 53
    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_2
    sget-object v1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    .line 57
    .line 58
    const-string/jumbo v4, "translate_during_allow_apps"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const-string v4, ";"

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_2
    const-string v4, "LiveTranslatorManager"

    .line 76
    .line 77
    if-nez v1, :cond_5

    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 80
    .line 81
    iget-object v5, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    move v1, v2

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    iget-object v1, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v5, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda1;

    .line 98
    .line 99
    invoke-direct {v5, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_3

    .line 107
    :cond_5
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string/jumbo v6, "voip allowPackages from globalDB packageName: "

    .line 118
    .line 119
    .line 120
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v6, ", result:"

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    sget-object v6, Lcom/samsung/android/server/audio/LiveTranslatorManager;->sVoipLiveTranslateLogger:Lcom/android/server/utils/EventLogger;

    .line 139
    .line 140
    invoke-virtual {v6, v2, v5, v4}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v6, " is supported voip "

    .line 152
    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    if-eqz v1, :cond_6

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_6
    :goto_4
    move v3, v2

    .line 170
    :goto_5
    sget-object v1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    .line 171
    .line 172
    const-string/jumbo v2, "voip_translator_package"

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-boolean v2, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsLiveTranslateOn:Z

    .line 180
    .line 181
    if-ne v2, v3, :cond_7

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_8

    .line 188
    .line 189
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/audio/LiveTranslatorManager;->setVoipTranslator(Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    :cond_8
    return-void
.end method
