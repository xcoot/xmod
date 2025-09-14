.class public final Lcom/android/server/hdmi/HdmiControlService$30;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$30;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$30;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$30;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$30;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$30;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearEarcLocalDevice()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$30;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$31;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$31;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->disableCecLocalDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
