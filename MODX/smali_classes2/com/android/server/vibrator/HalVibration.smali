.class public final Lcom/android/server/vibrator/HalVibration;
.super Lcom/android/server/vibrator/Vibration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdaptiveScale:F

.field public final mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public volatile mEffectToPlay:Landroid/os/CombinedVibration;

.field public final mEngineData:[I

.field public final mFallbacks:Landroid/util/SparseArray;

.field public mMagnitude:I

.field public final mOriginalEffect:Landroid/os/CombinedVibration;

.field public mScaleLevel:I

.field public mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public final mTimeout:J


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p8}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 14
    iput-wide p3, p0, Lcom/android/server/vibrator/HalVibration;->mTimeout:J

    .line 15
    iput p5, p0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    .line 16
    iput-object p6, p0, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    .line 17
    iput-object p7, p0, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/android/server/vibrator/HalVibration;->mTimeout:J

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    .line 7
    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 8
    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 9
    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 10
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 11
    iput p3, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    iput p1, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    return-void
.end method


# virtual methods
.method public final getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    move-object v5, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    new-instance v0, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 24
    .line 25
    iget v6, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    .line 26
    .line 27
    iget v7, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    .line 28
    .line 29
    iget-object v8, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IFLcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final isRepeating()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long p0, v0, v2

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final resolveEffects(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/vibrator/HalVibration$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/CombinedVibration;->transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 17
    .line 18
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ge v0, v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/os/VibrationEffect;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Landroid/os/VibrationEffect;->resolve(I)Landroid/os/VibrationEffect;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method
