.class public final Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRequiredSyncCapabilities:J

.field public final mVibratorEffects:Landroid/util/SparseArray;

.field public final mVibratorIds:[I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 3
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 4
    iget-object p1, p1, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p2

    .line 6
    instance-of v0, p2, Landroid/os/VibrationEffect$Composed;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    .line 9
    check-cast p2, Landroid/os/VibrationEffect$Composed;

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 11
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to map device vibrators to unexpected effect: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VibrationThread"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 16
    new-array p1, v1, [I

    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V
    .locals 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object p1, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 20
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 21
    iget-object p1, p1, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p2

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    .line 24
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 25
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 26
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    .line 28
    instance-of v4, v3, Landroid/os/VibrationEffect$Composed;

    if-eqz v4, :cond_0

    .line 29
    iget-object v4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    check-cast v3, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to map device vibrators to unexpected effect: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibrationThread"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    .line 32
    :goto_2
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    iget-object p2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 34
    :cond_3
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method

.method public static calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v2

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    const-wide/16 v5, 0x8

    .line 10
    .line 11
    const-wide/16 v7, 0x4

    .line 12
    .line 13
    const-wide/16 v9, 0x2

    .line 14
    .line 15
    if-ge v3, v4, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Landroid/os/VibrationEffect$Composed;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 32
    .line 33
    instance-of v11, v4, Landroid/os/vibrator/StepSegment;

    .line 34
    .line 35
    if-eqz v11, :cond_0

    .line 36
    .line 37
    or-long/2addr v0, v9

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    instance-of v9, v4, Landroid/os/vibrator/PrebakedSegment;

    .line 40
    .line 41
    if-eqz v9, :cond_1

    .line 42
    .line 43
    or-long/2addr v0, v7

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    instance-of v4, v4, Landroid/os/vibrator/PrimitiveSegment;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    or-long/2addr v0, v5

    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-static {v0, v1, v9, v10}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    const/16 v2, 0x10

    .line 60
    .line 61
    :cond_4
    invoke-static {v0, v1, v7, v8}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_5

    .line 66
    .line 67
    or-int/lit8 v2, v2, 0x20

    .line 68
    .line 69
    :cond_5
    invoke-static {v0, v1, v5, v6}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_6

    .line 74
    .line 75
    or-int/lit8 v2, v2, 0x40

    .line 76
    .line 77
    :cond_6
    const-wide/16 v3, 0x1

    .line 78
    .line 79
    or-long/2addr v0, v3

    .line 80
    int-to-long v2, v2

    .line 81
    or-long/2addr v0, v2

    .line 82
    return-wide v0
.end method

.method public static requireMixedTriggerCapability(JJ)Z
    .locals 4

    .line 1
    and-long v0, p0, p2

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    not-long p2, p2

    .line 10
    and-long/2addr p0, p2

    .line 11
    cmp-long p0, p0, v2

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method
