.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    .line 5
    check-cast p2, Lcom/android/server/audio/AdiDeviceState;

    .line 7
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 14
    move-result v1

    .line 15
    if-eq v0, v1, :cond_0

    .line 17
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    :cond_0
    return-object p1
.end method
