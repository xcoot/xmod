.class public final Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
.super Landroid/speech/IRecognitionListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOnSessionFailure:Ljava/lang/Runnable;

.field public final mOnSessionSuccess:Ljava/lang/Runnable;

.field public final mRemoteListener:Landroid/speech/IRecognitionListener;


# direct methods
.method public constructor <init>(Landroid/speech/IRecognitionListener;Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/speech/IRecognitionListener$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionSuccess:Ljava/lang/Runnable;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionFailure:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onBeginningOfSpeech()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/speech/IRecognitionListener;->onBeginningOfSpeech()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBufferReceived([B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onBufferReceived([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onEndOfSegmentedSession()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionSuccess:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 7
    .line 8
    invoke-interface {p0}, Landroid/speech/IRecognitionListener;->onEndOfSegmentedSession()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onEndOfSpeech()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/speech/IRecognitionListener;->onEndOfSpeech()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onError(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionFailure:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/speech/IRecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onLanguageDetection(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onLanguageDetection(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPartialResults(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onResults(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionSuccess:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onRmsChanged(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onRmsChanged(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSegmentResults(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onSegmentResults(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
