.class public final synthetic Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    goto :goto_1

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    .line 21
    .line 22
    if-nez v2, :cond_3

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mVisibleActivityInfoForToken:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/service/voice/VisibleActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    :try_start_1
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-interface {v0, p0, v2}, Landroid/service/voice/IVoiceInteractionSession;->notifyVisibleActivityInfoChanged(Landroid/service/voice/VisibleActivityInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :cond_2
    :try_start_2
    monitor-exit v1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    monitor-exit v1

    .line 48
    :goto_1
    return-void

    .line 49
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
.end method
