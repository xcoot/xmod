.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->updateBtVolumeMonitor()V

    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->updateBtVolumeMonitor()V

    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
