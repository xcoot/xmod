.class public final synthetic Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/IBinder;Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;->f$1:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;->f$1:Landroid/os/IBinder;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mListeningVisibleActivity:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda2;

    .line 29
    .line 30
    invoke-direct {v2, v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;Landroid/os/IBinder;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda3;->f$1:Landroid/os/IBinder;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string v1, "destroyDetectorLocked"

    .line 47
    .line 48
    const-string v2, "VoiceInteractionServiceManager"

    .line 49
    .line 50
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    const-string p0, "destroy detector callback, but no hotword detection connection"

    .line 58
    .line 59
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getDetectorSessionByTokenLocked(Landroid/os/IBinder;)Lcom/android/server/voiceinteraction/DetectorSession;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ltz v1, :cond_a

    .line 82
    .line 83
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/4 v3, 0x1

    .line 90
    sub-int/2addr v2, v3

    .line 91
    if-le v1, v2, :cond_5

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 97
    .line 98
    .line 99
    instance-of p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    if-eqz p0, :cond_7

    .line 103
    .line 104
    iget-object p0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 105
    .line 106
    if-eqz p0, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 109
    .line 110
    .line 111
    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 112
    .line 113
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    .line 114
    .line 115
    .line 116
    :cond_7
    iget-object p0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_8

    .line 123
    .line 124
    iget-object p0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-ne p0, v3, :cond_a

    .line 131
    .line 132
    iget-object p0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    instance-of p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 140
    .line 141
    if-eqz p0, :cond_a

    .line 142
    .line 143
    :cond_8
    iget-object p0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 144
    .line 145
    if-eqz p0, :cond_9

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 148
    .line 149
    .line 150
    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 151
    .line 152
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->resetDetectionProcessIdentityIfEmptyLocked()V

    .line 153
    .line 154
    .line 155
    :cond_a
    :goto_1
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
