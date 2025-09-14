.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field public final synthetic val$recorderAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->val$recorderAddress:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->val$recorderAddress:I

    .line 4
    .line 5
    const/16 v0, 0xa1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
