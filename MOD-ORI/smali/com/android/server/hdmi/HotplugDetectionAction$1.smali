.class public final Lcom/android/server/hdmi/HotplugDetectionAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HotplugDetectionAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HotplugDetectionAction;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPollingFinished(Ljava/util/List;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->-$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->-$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V

    .line 17
    .line 18
    .line 19
    const-string p0, "HotPlugDetectionAction"

    .line 20
    .line 21
    const-string p1, "Finish poll all devices."

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
