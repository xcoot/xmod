.class public final Lcom/android/server/hdmi/CecMessageBuffer$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/CecMessageBuffer;

.field public final synthetic val$message:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->this$0:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->this$0:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 10
    return-void
.end method
