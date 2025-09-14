.class public final Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;
.super Landroid/media/AudioDeviceCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/AudioManagerRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/AudioManagerRouteController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 3
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    aget-object v2, p1, v1

    .line 7
    sget-object v3, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 21
    iget-object v0, p1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    iget-object p1, p1, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    .line 25
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z

    .line 28
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    aget-object v2, p1, v1

    .line 7
    sget-object v3, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    return-void
.end method
