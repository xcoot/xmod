.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/audio/AudioService;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda15;->f$1:Z

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 7
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result v2

    .line 13
    aget-object v1, v1, v2

    .line 15
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->doMute()V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1

    .line 22
    new-instance v1, Landroid/content/Intent;

    .line 24
    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 26
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 31
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const-string p1, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    .line 36
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    const/4 p0, 0x0

    .line 40
    invoke-virtual {v0, v1, p0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 43
    return-void
.end method
