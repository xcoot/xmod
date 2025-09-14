.class public final Lcom/android/server/hdmi/ResendCecCommandAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/ResendCecCommandAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/ResendCecCommandAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mRetransmissionCount:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mRetransmissionCount:I

    .line 11
    .line 12
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 15
    .line 16
    const/16 p1, 0x12c

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mResultCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v1, p1}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
