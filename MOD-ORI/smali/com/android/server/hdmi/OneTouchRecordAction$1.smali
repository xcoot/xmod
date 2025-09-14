.class public final Lcom/android/server/hdmi/OneTouchRecordAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/OneTouchRecordAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/OneTouchRecordAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/OneTouchRecordAction$1;->this$0:Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    .line 10
    .line 11
    const/16 v1, 0x31

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
