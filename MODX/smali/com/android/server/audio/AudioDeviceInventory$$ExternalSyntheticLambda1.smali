.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final deviceRoleAction(IILjava/util/List;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 13
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForCapturePreset(II)I

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 20
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 22
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 25
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->addDevicesRoleForCapturePreset(IILjava/util/List;)I

    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 32
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 37
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 44
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 49
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForStrategy(II)I

    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 56
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 61
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 68
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 70
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 73
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 80
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 85
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 92
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 97
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->addDevicesRoleForCapturePreset(IILjava/util/List;)I

    .line 100
    move-result p0

    .line 101
    return p0

    .line 102
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 104
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 106
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 109
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(IILjava/util/List;)I

    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 116
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 121
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(IILjava/util/List;)I

    .line 124
    move-result p0

    .line 125
    return p0

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
