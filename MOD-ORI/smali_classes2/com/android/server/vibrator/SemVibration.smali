.class public abstract Lcom/android/server/vibrator/SemVibration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAttrs:Landroid/os/VibrationAttributes;

.field public final mDeviceId:I

.field public final mEffect:Landroid/os/CombinedVibration;

.field public final mIndex:I

.field public final mMagnitude:I

.field public final mOpPkg:Ljava/lang/String;

.field public final mReason:Ljava/lang/String;

.field public final mRepeat:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    .line 11
    .line 12
    iget v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    .line 15
    .line 16
    iget v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mDeviceId:I

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mDeviceId:I

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    .line 31
    .line 32
    iget v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 35
    .line 36
    iget v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    .line 37
    .line 38
    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    .line 39
    .line 40
    iget p1, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    .line 41
    .line 42
    iput p1, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 43
    .line 44
    sget-object p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    new-instance p1, Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;-><init>()V

    .line 51
    .line 52
    .line 53
    sput-object p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 54
    .line 55
    :cond_0
    sget-object p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final commonValidation()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "VibratorManagerService"

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo p0, "magnitude value is under 0"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    const-string/jumbo p0, "repeat value is wrong."

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 27
    .line 28
    if-nez p0, :cond_2

    .line 29
    .line 30
    const-string/jumbo p0, "token is null"

    .line 31
    .line 32
    .line 33
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_2
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public final getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    .line 10
    .line 11
    iget v3, p0, Lcom/android/server/vibrator/SemVibration;->mDeviceId:I

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/Vibration$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v6
.end method

.method public final getCommonLog()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 7
    .line 8
    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->getPatternTitle(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "("

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const v3, 0xc368

    .line 21
    .line 22
    .line 23
    sub-int/2addr v1, v3

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "), repeat: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", usage: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "), magnitude: "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public abstract getVibration()Lcom/android/server/vibrator/HalVibration;
.end method
