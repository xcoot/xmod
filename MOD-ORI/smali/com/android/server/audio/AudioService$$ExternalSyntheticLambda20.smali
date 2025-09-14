.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/audio/AudioService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eq p2, v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string p0, ""

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-static {p1, p0, p2, v0}, Landroid/media/AudioSystem;->setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
