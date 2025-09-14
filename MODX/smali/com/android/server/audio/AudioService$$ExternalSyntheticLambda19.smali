.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioDeviceAttributes;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioDeviceAttributes;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$0:Landroid/media/AudioDeviceAttributes;

    .line 6
    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$1:[I

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$0:Landroid/media/AudioDeviceAttributes;

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$1:[I

    .line 5
    check-cast p1, Landroid/media/IMuteAwaitConnectionCallback;

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 9
    sget p2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 11
    const/4 p2, 0x2

    .line 12
    :try_start_0
    invoke-interface {p1, p2, v0, p0}, Landroid/media/IMuteAwaitConnectionCallback;->dispatchOnUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    return-void
.end method
