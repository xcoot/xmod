.class public final Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConfig:Landroid/media/AudioRecordingConfiguration;

.field public final mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

.field public mIsActive:Z

.field public final mRiid:I


# direct methods
.method public constructor <init>(ILcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    .line 3
    iput-object p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioRecordingConfiguration;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    .line 7
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    return-void
.end method


# virtual methods
.method public final isActiveConfiguration()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
