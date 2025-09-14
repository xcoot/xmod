.class public final Lcom/android/server/hdmi/SystemAudioAction$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/SystemAudioAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/SystemAudioAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioAction$2;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string v0, "Failed to send <System Audio Mode Request>:"

    .line 5
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v1, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object p0, p0, Lcom/android/server/hdmi/SystemAudioAction$2;->this$0:Lcom/android/server/hdmi/SystemAudioAction;

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 20
    const/4 p1, 0x7

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 24
    :cond_0
    return-void
.end method
