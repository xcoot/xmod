.class public final Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;
.super Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUseStrongDuck:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;ZZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mUseStrongDuck:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getVSAction()Ljava/lang/String;
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mUseStrongDuck:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "ducking (strong)"

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string/jumbo p0, "ducking"

    .line 10
    .line 11
    .line 12
    :goto_0
    return-object p0
.end method
