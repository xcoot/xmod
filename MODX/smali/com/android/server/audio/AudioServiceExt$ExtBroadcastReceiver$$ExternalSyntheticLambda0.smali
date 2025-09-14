.class public final synthetic Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 10
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0, v0}, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V

    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 19
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V

    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
