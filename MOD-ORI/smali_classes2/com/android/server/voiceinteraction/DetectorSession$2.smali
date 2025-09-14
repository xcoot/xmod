.class public final Lcom/android/server/voiceinteraction/DetectorSession$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    const-string p2, "DetectorSession"

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    .line 4
    .line 5
    invoke-interface {p3}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onDetected()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 9
    .line 10
    iget-object p3, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 11
    .line 12
    invoke-interface {p3, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p3

    .line 17
    const-string v0, "RemoteException when sending HotwordDetectedResult to VoiceInteractionService."

    .line 18
    .line 19
    invoke-static {p2, v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    iget-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    .line 23
    .line 24
    invoke-interface {p3, v0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/service/voice/HotwordDetectedResult;->getAudioStreams()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/service/voice/HotwordAudioStream;

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {p1}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception p1

    .line 61
    const-string p3, "Unable to close audio stream parcel file descriptor,"

    .line 62
    .line 63
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    return-void
.end method

.method public final onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "onHotwordDetectionServiceFailure: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onRejected()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
