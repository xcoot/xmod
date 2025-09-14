.class public final Lcom/android/server/hdmi/HdmiCecController$5$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$5;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidates:Ljava/util/List;

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    .line 14
    .line 15
    iget-wide v6, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$pollingMessageInterval:J

    .line 16
    .line 17
    sget-object p0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
