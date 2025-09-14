.class public final Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;->this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCapturedContentResize(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCapturedContentVisibilityChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;->this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
