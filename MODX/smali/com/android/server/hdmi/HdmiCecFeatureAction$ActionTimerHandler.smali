.class public final Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecFeatureAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecFeatureAction;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->this$0:Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final clearTimerMessage()V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v1, 0x64

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    const-string v0, "Unsupported message:"

    .line 11
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget p1, p1, Landroid/os/Message;->what:I

    .line 16
    const-string v0, "HdmiCecFeatureAction"

    .line 18
    invoke-static {p0, p1, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->this$0:Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 24
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->handleTimerEvent(I)V

    .line 29
    :goto_0
    return-void
.end method
