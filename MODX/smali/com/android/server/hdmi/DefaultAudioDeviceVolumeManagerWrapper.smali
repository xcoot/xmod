.class public final Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;


# instance fields
.field public final mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/media/AudioDeviceVolumeManager;

    .line 6
    invoke-direct {v0, p1}, Landroid/media/AudioDeviceVolumeManager;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    .line 11
    return-void
.end method
