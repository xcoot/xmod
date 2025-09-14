.class public final Lcom/samsung/android/server/vibrator/VibratorHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PKG_ACT_ALWAYS:Ljava/lang/String;

.field public static sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

.field public static sIsFrequencySupported:Z

.field public static sIsHapticEngineSupported:Z

.field public static sMotorType:I


# instance fields
.field public final mChangedPatternHash:Ljava/util/HashMap;

.field public mSepIndex:I

.field public final mVibePatternHash:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/vibrator/VibRune;->DND_EXCEPTION_PACKAGES:Ljava/lang/String;

    .line 2
    .line 3
    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->PKG_ACT_ALWAYS:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 18
    .line 19
    new-instance v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    .line 25
    .line 26
    sget-boolean p0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ALWAYS_VIBRATE:Z

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    sget-object p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->PKG_ACT_ALWAYS:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, ","

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public static getMotorTypeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const-string v0, "MOTOR_LINEAR_1030"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_1
    const-string v0, "MOTOR_LINEAR_RCVMOT"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    const-string v0, "MOTOR_LINEAR_1040"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_3
    const-string v0, "MOTOR_LINEAR_0832RC"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    const-string v0, "MOTOR_LINEAR_INDEX"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_5
    const-string v0, "MOTOR_COIN_DC_INDEX"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_6
    const-string v0, "MOTOR_COIN_DC_PMIC"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_7
    const-string v0, "MOTOR_LINEAR_0832"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_8
    const-string v0, "MOTOR_COIN_DC"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_9
    const-string v0, "MOTOR_NONE"

    .line 35
    .line 36
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " ("

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p0, ")"

    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSepIndex(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sub-int/2addr p0, v0

    .line 7
    return p0
.end method


# virtual methods
.method public final copyPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    .line 21
    .line 22
    iput-object p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    .line 23
    .line 24
    iget p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    .line 25
    .line 26
    iput p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    .line 29
    .line 30
    iput-object p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    .line 31
    .line 32
    iget p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    .line 33
    .line 34
    iput p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    .line 35
    .line 36
    iget p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->scale:I

    .line 37
    .line 38
    iput p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->scale:I

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->hybrid:[I

    .line 41
    .line 42
    iput-object p0, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->hybrid:[I

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method

.method public final createIndexDurationInfo(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    .line 8
    .line 9
    add-int/lit8 p2, p2, 0x64

    .line 10
    .line 11
    iput p2, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final createPatternInfo(ILandroid/content/res/Resources;III)V
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    const/4 v6, -0x1

    .line 15
    if-ge v4, v2, :cond_1

    .line 16
    .line 17
    aget v7, v1, v4

    .line 18
    .line 19
    if-ne v7, v6, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 23
    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    new-array v2, v5, [J

    .line 28
    .line 29
    move v4, v3

    .line 30
    :goto_2
    if-ge v4, v5, :cond_2

    .line 31
    .line 32
    aget v7, v1, v4

    .line 33
    .line 34
    int-to-long v7, v7

    .line 35
    aput-wide v7, v2, v4

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iput-object v2, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    .line 41
    .line 42
    iput p4, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    move v1, v3

    .line 49
    :goto_3
    array-length v2, p4

    .line 50
    if-ge v1, v2, :cond_4

    .line 51
    .line 52
    aget v2, p4, v1

    .line 53
    .line 54
    if-ne v2, v6, :cond_3

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    move v1, v6

    .line 63
    :goto_4
    const/4 v2, 0x0

    .line 64
    if-gez v1, :cond_5

    .line 65
    .line 66
    move-object v5, v2

    .line 67
    goto :goto_5

    .line 68
    :cond_5
    array-length v4, p4

    .line 69
    sub-int/2addr v4, v1

    .line 70
    new-array v5, v4, [I

    .line 71
    .line 72
    invoke-static {p4, v1, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    .line 75
    :goto_5
    if-nez v5, :cond_6

    .line 76
    .line 77
    filled-new-array {v6, v6}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    :cond_6
    iput-object v5, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    .line 82
    .line 83
    const/16 p4, 0x64

    .line 84
    .line 85
    add-int/2addr p5, p4

    .line 86
    iput p5, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    .line 87
    .line 88
    iput p4, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->scale:I

    .line 89
    .line 90
    const/16 p4, 0x2710

    .line 91
    .line 92
    if-lt p1, p4, :cond_7

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :cond_7
    iput-object v2, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->hybrid:[I

    .line 99
    .line 100
    iget-object p2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo p3, "mVibePatternHash.put("

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, ", pattern), mVibePatternHash.size() : "

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    const-string p1, "VibratorManagerService"

    .line 139
    .line 140
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final getEngineData(I)[I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "getEngineData(), IndexOutOfBoundsException occurred, type:"

    .line 17
    .line 18
    const-string v1, ", index:"

    .line 19
    .line 20
    const-string v2, "VibratorManagerService"

    .line 21
    .line 22
    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    filled-new-array {p0, p0}, [I

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final getIndexDuration(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 28
    .line 29
    iget p0, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    .line 30
    .line 31
    return p0

    .line 32
    :cond_0
    const/16 p0, 0x1388

    .line 33
    .line 34
    return p0
.end method

.method public final getPatternByIndex(I)[J
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "getPatternByIndex(), index out of bound, mVibePatternHash:"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ", type:"

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ", index:"

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, "VibratorManagerService"

    .line 46
    .line 47
    invoke-static {v1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x2

    .line 51
    new-array v1, p0, [J

    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    const-wide/16 v2, -0x1

    .line 55
    .line 56
    aput-wide v2, v1, p0

    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    aput-wide v2, v1, p0

    .line 60
    .line 61
    :goto_0
    return-object v1
.end method

.method public final getPatternFrequencyByIndex(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, v1, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "getPatternFrequencyByIndex(), index out of bound, mVibePatternHash:"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ", type:"

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, ", index:"

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, "VibratorManagerService"

    .line 51
    .line 52
    invoke-static {v1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    :goto_0
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_1
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public final getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getResourceIndexData(I)[Lcom/samsung/android/server/vibrator/CommonPatternInfo;
    .locals 10

    .line 1
    const-string v0, "VibratorManagerService"

    .line 2
    .line 3
    const-string v1, "get resource index data"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getEngineData(I)[I

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length p1, p0

    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    div-int/lit8 p1, p1, 0x4

    .line 16
    .line 17
    new-array v0, p1, [Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, p1, :cond_0

    .line 21
    .line 22
    mul-int/lit8 v2, v1, 0x4

    .line 23
    .line 24
    new-instance v9, Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    .line 25
    .line 26
    add-int/lit8 v3, v2, 0x2

    .line 27
    .line 28
    aget v6, p0, v3

    .line 29
    .line 30
    add-int/lit8 v3, v2, 0x1

    .line 31
    .line 32
    aget v7, p0, v3

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x3

    .line 35
    .line 36
    aget v8, p0, v2

    .line 37
    .line 38
    const/16 v4, 0x52

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v3, v9

    .line 42
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/vibrator/CommonPatternInfo;-><init>(IIIII)V

    .line 43
    .line 44
    .line 45
    aput-object v9, v0, v1

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object v0
.end method
