.class public final synthetic Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

.field public final synthetic f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;->onSoundTriggerDeviceStateUpdate(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;->onSoundTriggerDeviceStateUpdate(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
