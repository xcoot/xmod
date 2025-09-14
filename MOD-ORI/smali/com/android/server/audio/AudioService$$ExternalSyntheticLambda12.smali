.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:Landroid/media/AudioDeviceAttributes;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceAttributes;[II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/audio/AudioService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$1:Landroid/media/AudioDeviceAttributes;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$2:[I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/audio/AudioService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$1:Landroid/media/AudioDeviceAttributes;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$2:[I

    .line 11
    .line 12
    check-cast p1, Landroid/media/IMuteAwaitConnectionCallback;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Boolean;

    .line 15
    .line 16
    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->anonymizeAudioDeviceAttributesUnchecked(Landroid/media/AudioDeviceAttributes;)Landroid/media/AudioDeviceAttributes;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    const/4 p2, 0x1

    .line 32
    invoke-interface {p1, p2, v1, p0}, Landroid/media/IMuteAwaitConnectionCallback;->dispatchOnUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/audio/AudioService;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$1:Landroid/media/AudioDeviceAttributes;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$2:[I

    .line 41
    .line 42
    check-cast p1, Landroid/media/IMuteAwaitConnectionCallback;

    .line 43
    .line 44
    check-cast p2, Ljava/lang/Boolean;

    .line 45
    .line 46
    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->anonymizeAudioDeviceAttributesUnchecked(Landroid/media/AudioDeviceAttributes;)Landroid/media/AudioDeviceAttributes;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_1
    invoke-interface {p1, v1, p0}, Landroid/media/IMuteAwaitConnectionCallback;->dispatchOnMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    .line 64
    :catch_1
    return-void

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/audio/AudioService;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$1:Landroid/media/AudioDeviceAttributes;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$2:[I

    .line 70
    .line 71
    check-cast p1, Landroid/media/IMuteAwaitConnectionCallback;

    .line 72
    .line 73
    check-cast p2, Ljava/lang/Boolean;

    .line 74
    .line 75
    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_2

    .line 85
    .line 86
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->anonymizeAudioDeviceAttributesUnchecked(Landroid/media/AudioDeviceAttributes;)Landroid/media/AudioDeviceAttributes;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :cond_2
    const/4 p2, 0x3

    .line 91
    invoke-interface {p1, p2, v1, p0}, Landroid/media/IMuteAwaitConnectionCallback;->dispatchOnUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    .line 93
    .line 94
    :catch_2
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
