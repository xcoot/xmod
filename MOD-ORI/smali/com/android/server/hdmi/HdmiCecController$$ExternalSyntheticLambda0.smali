.class public final synthetic Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiCecController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/ArrayList;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$3:I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$5:Ljava/util/ArrayList;

    .line 16
    .line 17
    iput-wide p6, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$6:J

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$5:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-wide v6, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$6:J

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
