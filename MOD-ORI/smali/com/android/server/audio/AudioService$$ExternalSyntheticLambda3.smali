.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/util/function/BooleanSupplier;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    check-cast p1, Landroid/media/AudioDeviceAttributes;

    .line 16
    .line 17
    sget p0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getRole()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-ne p0, v1, :cond_0

    .line 24
    .line 25
    move v0, v1

    .line 26
    :cond_0
    return v0

    .line 27
    :pswitch_1
    check-cast p1, Landroid/media/AudioAttributes;

    .line 28
    .line 29
    sget p0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 30
    .line 31
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getDefaultAttributes()Landroid/media/AudioAttributes;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    xor-int/2addr p0, v1

    .line 40
    return p0

    .line 41
    :pswitch_2
    check-cast p1, Landroid/media/AudioDeviceAttributes;

    .line 42
    .line 43
    sget p0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getRole()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    const/4 p1, 0x2

    .line 50
    if-ne p0, p1, :cond_1

    .line 51
    .line 52
    move v0, v1

    .line 53
    :cond_1
    return v0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
