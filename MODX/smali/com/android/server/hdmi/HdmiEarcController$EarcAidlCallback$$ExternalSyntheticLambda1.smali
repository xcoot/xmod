.class public final synthetic Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

.field public final synthetic f$1:[B

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda1;->f$1:[B

    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda1;->f$1:[B

    .line 5
    iget p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda1;->f$2:I

    .line 7
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->this$0:Lcom/android/server/hdmi/HdmiEarcController;

    .line 9
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiEarcController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 14
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 16
    invoke-virtual {v2, p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPortInfo;->isEarcSupported()Z

    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 26
    const-string p0, "HdmiControlService"

    .line 28
    const-string v0, "Tried to process eARC capabilities from a port that doesn\'t support eARC."

    .line 30
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 36
    if-eqz p0, :cond_2

    .line 38
    check-cast p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    .line 40
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget v2, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 45
    const/4 v3, 0x3

    .line 46
    if-ne v2, v3, :cond_1

    .line 48
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    .line 50
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    .line 52
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->parseCapabilities([B)Ljava/util/List;

    .line 67
    move-result-object v1

    .line 68
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(Ljava/util/List;Z)V

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    monitor-exit v0

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0

    .line 81
    :cond_2
    :goto_2
    return-void
.end method
