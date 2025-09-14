.class public final synthetic Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 10
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->checkAndUpdateLiveTranslateList()V

    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 18
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->checkAndUpdateAppList()V

    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
