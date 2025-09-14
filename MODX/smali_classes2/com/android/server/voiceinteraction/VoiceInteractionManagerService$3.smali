.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;
.super Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 4
    .line 5
    return-object p0
.end method

.method public final onSetUiHints(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onVoiceSessionHidden()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onVoiceSessionShown()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onVoiceSessionWindowVisibilityChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/16 p1, 0x13

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
