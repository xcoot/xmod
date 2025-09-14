.class public final synthetic Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 2
    .line 3
    check-cast p2, Landroid/os/IBinder;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    check-cast p4, Landroid/os/IBinder;

    .line 12
    .line 13
    check-cast p5, Landroid/os/RemoteCallback;

    .line 14
    .line 15
    check-cast p6, Landroid/os/RemoteCallback;

    .line 16
    .line 17
    iget-object p3, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 18
    .line 19
    monitor-enter p3

    .line 20
    :try_start_0
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 26
    .line 27
    if-eq p2, v0, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 37
    .line 38
    invoke-virtual {p2, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    if-eq p2, p4, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 56
    .line 57
    invoke-interface {p2, p0, p1, p5, p6}, Landroid/app/IApplicationThread;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_4

    .line 63
    :catch_0
    move-exception p0

    .line 64
    :try_start_2
    const-string p1, "Unexpected remote error"

    .line 65
    .line 66
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p6, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    const-string p0, "VoiceInteractionServiceManager"

    .line 74
    .line 75
    const-string p1, "Unknown activity to query for direct actions during retrying"

    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p6, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    monitor-exit p3

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    :goto_2
    const-string p0, "VoiceInteractionServiceManager"

    .line 86
    .line 87
    const-string/jumbo p1, "retryRequestDirectActions does not match active session"

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p6, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    monitor-exit p3

    .line 97
    :goto_3
    return-void

    .line 98
    :goto_4
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p0
.end method
