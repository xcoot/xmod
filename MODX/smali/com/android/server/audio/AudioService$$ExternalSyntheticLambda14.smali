.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda14;->f$0:I

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda14;->f$0:I

    .line 3
    check-cast p1, Ljava/util/Map$Entry;

    .line 5
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;

    .line 13
    iget p1, p1, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDeviceVolumeBehavior:I

    .line 15
    if-ne p1, p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method
