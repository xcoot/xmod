.class public final Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;


# instance fields
.field public final mGatewayConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field public final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/Vcn;Landroid/net/vcn/VcnGatewayConnectionConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->mGatewayConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGatewayConnectionError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->onGatewayConnectionError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onQuit()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->mGatewayConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onSafeModeStatusChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;->this$0:Lcom/android/server/vcn/Vcn;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
