.class public final Lcom/android/server/display/brightness/clamper/HdrClamper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAmbientLux:F

.field public mAutoBrightnessEnabled:Z

.field public final mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mDebouncer:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;

.field public mDesiredMaxBrightness:F

.field public mDesiredTransitionRate:F

.field public final mHandler:Landroid/os/Handler;

.field public mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field public final mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

.field public mHdrVisible:Z

.field public mMaxBrightness:F

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public mTransitionRate:F

.field public mUseSlowTransition:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 8
    .line 9
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 22
    .line 23
    const/high16 v1, -0x40800000    # -1.0f

    .line 24
    .line 25
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 26
    .line 27
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance p1, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDebouncer:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    new-instance p1, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p3, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    .line 53
    .line 54
    invoke-direct {p3, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;Landroid/os/Handler;)V

    .line 55
    .line 56
    .line 57
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public getMaxBrightness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 2
    .line 3
    return p0
.end method

.method public final recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDebouncer:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/high16 v2, -0x40800000    # -1.0f

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz p1, :cond_6

    .line 10
    .line 11
    if-eqz p3, :cond_6

    .line 12
    .line 13
    iget-boolean p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const p3, 0x7f7fffff    # Float.MAX_VALUE

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/Float;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    cmpl-float v6, v5, p2

    .line 54
    .line 55
    if-lez v6, :cond_1

    .line 56
    .line 57
    cmpg-float v6, v5, p3

    .line 58
    .line 59
    if-gez v6, :cond_1

    .line 60
    .line 61
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    check-cast p3, Ljava/lang/Float;

    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    move v1, p3

    .line 72
    move p3, v5

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 75
    .line 76
    cmpl-float p2, p1, v1

    .line 77
    .line 78
    if-nez p2, :cond_3

    .line 79
    .line 80
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 81
    .line 82
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 83
    .line 84
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    iget p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 91
    .line 92
    cmpl-float p2, p2, v1

    .line 93
    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 97
    .line 98
    cmpl-float p1, v1, p1

    .line 99
    .line 100
    if-lez p1, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 103
    .line 104
    iget-wide p2, p1, Lcom/android/server/display/config/HdrBrightnessData;->mBrightnessIncreaseDebounceMillis:J

    .line 105
    .line 106
    iget p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->mScreenBrightnessRampIncrease:F

    .line 107
    .line 108
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 112
    .line 113
    iget-wide p2, p1, Lcom/android/server/display/config/HdrBrightnessData;->mBrightnessDecreaseDebounceMillis:J

    .line 114
    .line 115
    iget p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->mScreenBrightnessRampDecrease:F

    .line 116
    .line 117
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 118
    .line 119
    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    :goto_2
    return-void

    .line 126
    :cond_6
    :goto_3
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 127
    .line 128
    cmpl-float p1, p1, v1

    .line 129
    .line 130
    if-nez p1, :cond_7

    .line 131
    .line 132
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 133
    .line 134
    cmpl-float p1, p1, v1

    .line 135
    .line 136
    if-nez p1, :cond_7

    .line 137
    .line 138
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 139
    .line 140
    cmpl-float p1, p1, v2

    .line 141
    .line 142
    if-nez p1, :cond_7

    .line 143
    .line 144
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 145
    .line 146
    cmpl-float p1, p1, v2

    .line 147
    .line 148
    if-nez p1, :cond_7

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_7
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    .line 153
    .line 154
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 155
    .line 156
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 157
    .line 158
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 159
    .line 160
    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 161
    .line 162
    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 166
    .line 167
    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 168
    .line 169
    .line 170
    :goto_4
    return-void
.end method
