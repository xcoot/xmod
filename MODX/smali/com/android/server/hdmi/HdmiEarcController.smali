.class public final Lcom/android/server/hdmi/HdmiEarcController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mControlHandler:Landroid/os/Handler;

.field public final mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiEarcController;->mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;

    .line 8
    return-void
.end method


# virtual methods
.method public runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    .line 5
    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method
