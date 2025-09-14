.class public final Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;
.super Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getVSAction()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string/jumbo p0, "fading out"

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_0
    const-string/jumbo p0, "fading in"

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
