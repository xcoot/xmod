.class public final synthetic Lcom/android/server/hdmi/HdmiControlService$33$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiControlService$2;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$33$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$33$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$33$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$33$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;->onChange(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "HdmiControlService"

    .line 18
    .line 19
    const-string v0, "Failed to report setting change"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
