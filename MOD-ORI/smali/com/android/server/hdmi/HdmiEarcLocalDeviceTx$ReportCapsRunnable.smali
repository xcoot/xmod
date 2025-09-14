.class public final Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;->this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;->this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;->this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(Ljava/util/List;Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method
