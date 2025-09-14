.class public Lcom/android/server/vibrator/VibratorController$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    .line 7
    .line 8
    return-void
.end method

.method private static native alwaysOnDisable(JJ)V
.end method

.method private static native alwaysOnEnable(JJJJ)V
.end method

.method private static native getAmplitudeList(JI)[I
.end method

.method private static native getInfo(JLandroid/os/VibratorInfo$Builder;)Z
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native getNumberOfPrebakedHapticPattern(J)I
.end method

.method private static native hasFeature(JLjava/lang/String;)Z
.end method

.method private static native isAvailable(J)Z
.end method

.method private static native nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J
.end method

.method private static native off(J)V
.end method

.method private static native on(JJJ)J
.end method

.method private static native performCommonInputff(J[IZI)V
.end method

.method private static native performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;J)J
.end method

.method private static native performEffect(JJJJ)J
.end method

.method private static native performHapticEngine(J[II)V
.end method

.method private static native performPrebakedHapticPattern(JJJZ)V
.end method

.method private static native performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJ)J
.end method

.method private static native sehPerformEffect(JJJLcom/android/server/vibrator/Vibration;Z)J
.end method

.method private static native setAmplitude(JF)V
.end method

.method private static native setExternalControl(JZ)V
.end method

.method private static native setFoldState(JZ)V
.end method

.method private static native setForceTouchAmplitude(JJ)V
.end method

.method private static native setFrequencyType(JJ)V
.end method

.method private static native setIntensity(JJ)V
.end method

.method private static native setTentState(JZ)V
.end method

.method private static native supportIntensityControl(J)Z
.end method

.method private static native supportsEnhancedSamsungHapticPattern(J)Z
.end method

.method private static native supportsFoldState(J)Z
.end method

.method private static native supportsFrequencyControl(J)Z
.end method

.method private static native supportsHapticEngine(J)Z
.end method

.method private static native supportsHasFeature(J)Z
.end method

.method private static native supportsPrebakedHapticPattern(J)Z
.end method

.method private static native supportsTentState(J)Z
.end method


# virtual methods
.method public final alwaysOnDisable(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(JJ)V

    return-void
.end method

.method public final alwaysOnEnable(JJJ)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJJ)V

    return-void
.end method

.method public final compose([Landroid/os/vibrator/PrimitiveSegment;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final composePwle([Landroid/os/vibrator/RampSegment;IJ)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    move v3, p2

    .line 5
    move-wide v4, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public final getAmplitudeList(I)[I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getAmplitudeList(JI)[I

    move-result-object p0

    return-object p0
.end method

.method public final getInfo(Landroid/os/VibratorInfo$Builder;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(JLandroid/os/VibratorInfo$Builder;)Z

    move-result p0

    return p0
.end method

.method public final getNumberOfPrebakedHapticPattern()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNumberOfPrebakedHapticPattern(J)I

    move-result p0

    return p0
.end method

.method public final hasFeature(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNativeFinalizer()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-class v0, Lcom/android/server/vibrator/VibratorController;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    .line 28
    .line 29
    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final isAvailable()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->isAvailable(J)Z

    move-result p0

    return p0
.end method

.method public final off()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off(J)V

    return-void
.end method

.method public final on(JJ)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final perform(JJJ)J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    .line 2
    .line 3
    move-wide v2, p1

    .line 4
    move-wide v4, p3

    .line 5
    move-wide v6, p5

    .line 6
    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performEffect(JJJJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public final performCommonInputff([IZI)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performCommonInputff(J[IZI)V

    return-void
.end method

.method public final performHapticEngine([II)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performHapticEngine(J[II)V

    return-void
.end method

.method public final performPrebakedHapticPattern(JJZ)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPrebakedHapticPattern(JJJZ)V

    return-void
.end method

.method public final sehPerformEffect(JJLcom/android/server/vibrator/Vibration;Z)J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->sehPerformEffect(JJJLcom/android/server/vibrator/Vibration;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public final setAmplitude(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(JF)V

    return-void
.end method

.method public final setExternalControl(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(JZ)V

    return-void
.end method

.method public final setFoldState(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFoldState(JZ)V

    return-void
.end method

.method public final setForceTouchAmplitude(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setForceTouchAmplitude(JJ)V

    return-void
.end method

.method public final setFrequencyType(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFrequencyType(JJ)V

    return-void
.end method

.method public final setIntensity(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(JJ)V

    return-void
.end method

.method public final setTentState(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setTentState(JZ)V

    return-void
.end method

.method public final supportIntensityControl()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportIntensityControl(J)Z

    move-result p0

    return p0
.end method

.method public final supportsEnhancedSamsungHapticPattern()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsEnhancedSamsungHapticPattern(J)Z

    move-result p0

    return p0
.end method

.method public final supportsFoldState()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFoldState(J)Z

    move-result p0

    return p0
.end method

.method public final supportsFrequencyControl()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFrequencyControl(J)Z

    move-result p0

    return p0
.end method

.method public final supportsHapticEngine()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHapticEngine(J)Z

    move-result p0

    return p0
.end method

.method public final supportsHasFeature()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHasFeature(J)Z

    move-result p0

    return p0
.end method

.method public final supportsPrebakedHapticPattern()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsPrebakedHapticPattern(J)Z

    move-result p0

    return p0
.end method

.method public final supportsTentState()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsTentState(J)Z

    move-result p0

    return p0
.end method
