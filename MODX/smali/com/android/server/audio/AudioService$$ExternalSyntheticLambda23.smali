.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/audio/AudioService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/audio/AudioService;

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 12
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p2

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const-string p0, ""

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-static {p1, p0, v0, p2}, Landroid/media/AudioSystem;->setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I

    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result p2

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    const-string p0, ""

    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-static {p1, p0, v0, p2}, Landroid/media/AudioSystem;->setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I

    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
