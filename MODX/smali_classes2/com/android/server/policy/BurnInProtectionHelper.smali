.class public final Lcom/android/server/policy/BurnInProtectionHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final BURNIN_PROTECTION_FIRST_WAKEUP_INTERVAL_MS:J

.field public static final BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

.field public static final BURNIN_PROTECTION_SUBSEQUENT_WAKEUP_INTERVAL_MS:J


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAppliedBurnInXOffset:I

.field public mAppliedBurnInYOffset:I

.field public mBurnInProtectionActive:Z

.field public final mBurnInProtectionIntent:Landroid/app/PendingIntent;

.field public final mBurnInProtectionReceiver:Lcom/android/server/policy/BurnInProtectionHelper$1;

.field public final mBurnInRadiusMaxSquared:I

.field public final mCenteringAnimator:Landroid/animation/ValueAnimator;

.field public final mDisplay:Landroid/view/Display;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mFirstUpdate:Z

.field public mLastBurnInXOffset:I

.field public mLastBurnInYOffset:I

.field public final mMaxHorizontalBurnInOffset:I

.field public final mMaxVerticalBurnInOffset:I

.field public final mMinHorizontalBurnInOffset:I

.field public final mMinVerticalBurnInOffset:I

.field public mXOffsetDirection:I

.field public mYOffsetDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_FIRST_WAKEUP_INTERVAL_MS:J

    .line 10
    .line 11
    const-wide/16 v1, 0x2

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_SUBSEQUENT_WAKEUP_INTERVAL_MS:J

    .line 18
    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    const-wide/16 v1, 0xa

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 11
    .line 12
    iput v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/policy/BurnInProtectionHelper$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/android/server/policy/BurnInProtectionHelper$1;-><init>(Lcom/android/server/policy/BurnInProtectionHelper;)V

    .line 21
    .line 22
    .line 23
    iput p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    .line 24
    .line 25
    iput p3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    .line 26
    .line 27
    iput p4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    .line 28
    .line 29
    iput p5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    .line 30
    .line 31
    const/4 p2, -0x1

    .line 32
    if-eq p6, p2, :cond_0

    .line 33
    .line 34
    mul-int/2addr p6, p6

    .line 35
    iput p6, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    .line 39
    .line 40
    :goto_0
    const-class p2, Landroid/hardware/display/DisplayManagerInternal;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/hardware/display/DisplayManagerInternal;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 49
    .line 50
    const-string p2, "alarm"

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/app/AlarmManager;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 59
    .line 60
    new-instance p2, Landroid/content/IntentFilter;

    .line 61
    .line 62
    const-string p3, "android.internal.policy.action.BURN_IN_PROTECTION"

    .line 63
    .line 64
    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    new-instance p2, Landroid/content/Intent;

    .line 71
    .line 72
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const/high16 p3, 0x40000000    # 2.0f

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const/high16 p3, 0xa000000

    .line 88
    .line 89
    invoke-static {p1, v0, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iput-object p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    .line 94
    .line 95
    const-string p2, "display"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iput-object p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 108
    .line 109
    const/4 p2, 0x0

    .line 110
    invoke-virtual {p1, p0, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 111
    .line 112
    .line 113
    const/4 p1, 0x2

    .line 114
    new-array p1, p1, [F

    .line 115
    .line 116
    fill-array-data p1, :array_0

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    .line 124
    .line 125
    const-wide/16 p2, 0x64

    .line 126
    .line 127
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    .line 130
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    .line 131
    .line 132
    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {v0, p0, p1, p1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    mul-float/2addr v2, p1

    .line 27
    float-to-int v2, v2

    .line 28
    iget p0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    .line 29
    .line 30
    int-to-float p0, p0

    .line 31
    mul-float/2addr p0, p1

    .line 32
    float-to-int p0, p0

    .line 33
    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x4

    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x6

    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 54
    .line 55
    iput-boolean p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateBurnInProtection()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-wide v1, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_FIRST_WAKEUP_INTERVAL_MS:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-wide v1, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_SUBSEQUENT_WAKEUP_INTERVAL_MS:J

    .line 13
    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    .line 21
    .line 22
    mul-int/lit8 v3, v0, 0x2

    .line 23
    .line 24
    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 25
    .line 26
    add-int/2addr v4, v3

    .line 27
    iput v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 28
    .line 29
    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    .line 30
    .line 31
    if-gt v4, v5, :cond_2

    .line 32
    .line 33
    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    .line 34
    .line 35
    if-ge v4, v5, :cond_4

    .line 36
    .line 37
    :cond_2
    sub-int/2addr v4, v3

    .line 38
    iput v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 39
    .line 40
    mul-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    .line 45
    .line 46
    mul-int/lit8 v3, v0, 0x2

    .line 47
    .line 48
    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 49
    .line 50
    add-int/2addr v4, v3

    .line 51
    iput v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 52
    .line 53
    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    .line 54
    .line 55
    if-gt v4, v5, :cond_3

    .line 56
    .line 57
    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    .line 58
    .line 59
    if-ge v4, v5, :cond_4

    .line 60
    .line 61
    :cond_3
    sub-int/2addr v4, v3

    .line 62
    iput v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 63
    .line 64
    mul-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    .line 67
    .line 68
    :cond_4
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    .line 69
    .line 70
    const/4 v3, -0x1

    .line 71
    if-eq v0, v3, :cond_5

    .line 72
    .line 73
    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 74
    .line 75
    mul-int/2addr v3, v3

    .line 76
    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 77
    .line 78
    mul-int/2addr v4, v4

    .line 79
    add-int/2addr v4, v3

    .line 80
    if-gt v4, v0, :cond_1

    .line 81
    .line 82
    :cond_5
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 83
    .line 84
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInXOffset:I

    .line 85
    .line 86
    iget v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 87
    .line 88
    iput v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAppliedBurnInYOffset:I

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 99
    .line 100
    iget v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 101
    .line 102
    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    sget-wide v7, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    .line 114
    .line 115
    add-long/2addr v7, v3

    .line 116
    rem-long v9, v7, v1

    .line 117
    .line 118
    sub-long/2addr v7, v9

    .line 119
    add-long/2addr v7, v1

    .line 120
    sub-long/2addr v7, v3

    .line 121
    add-long/2addr v7, v5

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 123
    .line 124
    const/4 v1, 0x3

    .line 125
    iget-object p0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    .line 126
    .line 127
    invoke-virtual {v0, v1, v7, v8, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 141
    .line 142
    .line 143
    :goto_2
    return-void
.end method
