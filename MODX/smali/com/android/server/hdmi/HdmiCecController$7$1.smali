.class public final Lcom/android/server/hdmi/HdmiCecController$7$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$7;

.field public final synthetic val$finalError:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 5
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 7
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-ne v2, v3, :cond_0

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v2

    .line 20
    :cond_0
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    .line 26
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    .line 28
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    .line 34
    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    .line 37
    :cond_1
    return-void
.end method
