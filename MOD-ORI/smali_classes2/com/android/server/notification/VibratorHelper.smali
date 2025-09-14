.class public final Lcom/android/server/notification/VibratorHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_VIBRATE_PATTERN:[J


# instance fields
.field public final mDefaultVibrationAmplitude:I

.field public final mFallbackPattern:[J

.field public final mFallbackPwlePattern:[F

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/os/Vibrator;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/Vibrator;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    .line 19
    .line 20
    const v2, 0x10700c6

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2, v1}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;I[J)[J

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v2, 0x107012e

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2, v1}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;I[J)[J

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const v1, 0x10700c7

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const v1, 0x107012f

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const v0, 0x10e0082

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultVibrationAmplitude:I

    .line 74
    .line 75
    return-void
.end method

.method public static createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    array-length v1, p0

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    rem-int/lit8 v2, v1, 0x3

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v1, :cond_2

    .line 19
    .line 20
    add-int/lit8 v4, v3, 0x2

    .line 21
    .line 22
    aget v4, p0, v4

    .line 23
    .line 24
    float-to-int v4, v4

    .line 25
    int-to-long v4, v4

    .line 26
    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    aget v5, p0, v3

    .line 31
    .line 32
    invoke-static {v5}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    add-int/lit8 v6, v3, 0x1

    .line 37
    .line 38
    aget v6, p0, v6

    .line 39
    .line 40
    invoke-static {v6}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v2}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object p0

    .line 69
    :cond_3
    return-object v1

    .line 70
    :cond_4
    :goto_1
    return-object v0

    .line 71
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "Error creating vibration PWLE waveform with pattern: "

    .line 74
    .line 75
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string p1, "NotificationVibratorHelper"

    .line 90
    .line 91
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method public static createWaveformVibration([JZ)Landroid/os/VibrationEffect;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, -0x1

    .line 8
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Error creating vibration waveform with pattern: "

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "NotificationVibratorHelper"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/Resources;I)[F
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-array v0, p1, [F

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_1

    .line 13
    .line 14
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 15
    .line 16
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    aput v2, v0, v1

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static getLongArray(Landroid/content/res/Resources;I[J)[J
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    array-length p1, p0

    .line 9
    const/16 p2, 0x11

    .line 10
    .line 11
    if-le p1, p2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    array-length p2, p0

    .line 15
    :goto_0
    new-array p1, p2, [J

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_1
    if-ge v0, p2, :cond_2

    .line 19
    .line 20
    aget v1, p0, v0

    .line 21
    .line 22
    int-to-long v1, v1

    .line 23
    aput-wide v1, p1, v0

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    return-object p1
.end method


# virtual methods
.method public final vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 2
    .line 3
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    const/16 v1, 0x3e8

    .line 13
    .line 14
    const-string v2, "android"

    .line 15
    .line 16
    move-object v3, p1

    .line 17
    move-object v4, p3

    .line 18
    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
