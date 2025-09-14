.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# instance fields
.field public final mReason:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    .line 8
    return-void
.end method


# virtual methods
.method public final handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 10
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 15
    const/4 p0, 0x1

    .line 16
    return p0
.end method
