.class public final synthetic Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSoundTriggerDeviceStateUpdate(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onDeviceStateChanged(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onDeviceStateChanged(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
