.class public final Lcom/android/server/hdmi/HdmiCecConfig$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$listener:Lcom/android/server/hdmi/HdmiControlService$2;

.field public final synthetic val$setting:Lcom/android/server/hdmi/HdmiCecConfig$Setting;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$2;Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$listener:Lcom/android/server/hdmi/HdmiControlService$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$setting:Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$listener:Lcom/android/server/hdmi/HdmiControlService$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$setting:Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$2;->onChange(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
