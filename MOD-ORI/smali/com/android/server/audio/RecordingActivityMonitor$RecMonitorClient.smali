.class public final Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;


# instance fields
.field public final mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

.field public final mIsPrivileged:Z


# direct methods
.method public constructor <init>(Landroid/media/IRecordingConfigDispatcher;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "AudioService.RecordingActivityMonitor"

    .line 2
    .line 3
    const-string/jumbo v1, "client died"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
