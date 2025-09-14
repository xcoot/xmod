.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 3
    sget p0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 5
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 8
    return-void
.end method
