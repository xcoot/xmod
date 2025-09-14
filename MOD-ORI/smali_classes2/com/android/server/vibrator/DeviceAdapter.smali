.class public final Lcom/android/server/vibrator/DeviceAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/CombinedVibration$VibratorAdapter;


# instance fields
.field public final mAvailableVibratorIds:[I

.field public final mAvailableVibrators:Landroid/util/SparseArray;

.field public final mSegmentAdapters:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/vibrator/RampToStepAdapter;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/vibrator/RampToStepAdapter;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/android/server/vibrator/StepToRampAdapter;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/android/server/vibrator/RampDownAdapter;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-direct {v2, v3, p1}, Lcom/android/server/vibrator/RampDownAdapter;-><init>(II)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/android/server/vibrator/SplitSegmentsAdapter;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    filled-new-array {v0, v1, v2, p1, v3}, [Lcom/android/server/vibrator/VibrationSegmentsAdapter;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    new-array p1, p1, [I

    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-ge p1, v0, :cond_0

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    aput v1, v0, p1

    .line 81
    .line 82
    add-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public final adaptToVibrator(ILandroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .locals 4

    .line 1
    instance-of v0, p2, Landroid/os/VibrationEffect$Composed;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string p1, "Error adapting unsupported vibration effect: "

    .line 8
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "DeviceAdapter"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-object p2

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibrators:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    return-object p2

    .line 36
    :cond_1
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 37
    .line 38
    check-cast p2, Landroid/os/VibrationEffect$Composed;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iget-object v1, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, 0x0

    .line 60
    :goto_0
    if-ge v2, v1, :cond_2

    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/vibrator/DeviceAdapter;->mSegmentAdapters:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/android/server/vibrator/VibrationSegmentsAdapter;

    .line 69
    .line 70
    invoke-interface {v3, p1, v0, p2}, Lcom/android/server/vibrator/VibrationSegmentsAdapter;->adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-instance p0, Landroid/os/VibrationEffect$Composed;

    .line 78
    .line 79
    invoke-direct {p0, v0, p2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 80
    .line 81
    .line 82
    return-object p0
.end method

.method public final getAvailableVibratorIds()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    .line 2
    .line 3
    return-object p0
.end method
