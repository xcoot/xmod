.class public final Lcom/android/server/hdmi/HdmiControlService$21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$allocatedDevices:Ljava/util/ArrayList;

.field public final synthetic val$allocatingDevices:Ljava/util/ArrayList;

.field public final synthetic val$finished:[I

.field public final synthetic val$initiatedBy:I

.field public final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$21;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 8
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$21;->val$allocatedDevices:Ljava/util/ArrayList;

    .line 10
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$21;->val$allocatingDevices:Ljava/util/ArrayList;

    .line 12
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$21;->val$finished:[I

    .line 14
    iput p6, p0, Lcom/android/server/hdmi/HdmiControlService$21;->val$initiatedBy:I

    .line 16
    return-void
.end method
