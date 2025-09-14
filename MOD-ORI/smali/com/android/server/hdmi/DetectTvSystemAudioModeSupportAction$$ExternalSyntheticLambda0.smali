.class public final synthetic Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method
