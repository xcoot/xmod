.class public final Lcom/android/server/hdmi/HdmiCecController$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field public final synthetic val$allocated:Ljava/util/List;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

.field public final synthetic val$candidate:Ljava/lang/Integer;

.field public final synthetic val$candidates:Ljava/util/List;

.field public final synthetic val$pollingMessageInterval:J

.field public final synthetic val$retryCount:I

.field public final synthetic val$sourceAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidates:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    .line 17
    .line 18
    iput-wide p8, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$pollingMessageInterval:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$5$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecController$5$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$5;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
