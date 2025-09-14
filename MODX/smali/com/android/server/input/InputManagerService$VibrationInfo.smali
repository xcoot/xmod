.class public final Lcom/android/server/input/InputManagerService$VibrationInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAmplitudes:[I

.field public final mPattern:[J

.field public final mRepeat:I


# direct methods
.method public constructor <init>(Landroid/os/VibrationEffect;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    instance-of v0, p1, Landroid/os/VibrationEffect$Composed;

    .line 6
    const-string v1, "InputManager"

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eqz v0, :cond_3

    .line 12
    check-cast p1, Landroid/os/VibrationEffect$Composed;

    .line 14
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    new-array v4, v0, [J

    .line 24
    new-array v5, v0, [I

    .line 26
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 29
    move-result v6

    .line 30
    move v7, v2

    .line 31
    move v8, v7

    .line 32
    :goto_0
    if-ge v7, v0, :cond_4

    .line 34
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 37
    move-result-object v9

    .line 38
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v9

    .line 42
    check-cast v9, Landroid/os/vibrator/VibrationEffectSegment;

    .line 44
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 47
    move-result v10

    .line 48
    if-ne v10, v7, :cond_0

    .line 50
    move v6, v8

    .line 51
    :cond_0
    instance-of v10, v9, Landroid/os/vibrator/StepSegment;

    .line 53
    if-nez v10, :cond_1

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    const-string v0, "Input devices don\'t support segment "

    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    move v8, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    move-object v10, v9

    .line 75
    check-cast v10, Landroid/os/vibrator/StepSegment;

    .line 77
    invoke-virtual {v10}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 80
    move-result v10

    .line 81
    const/high16 v11, -0x40800000    # -1.0f

    .line 83
    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    .line 86
    move-result v11

    .line 87
    if-nez v11, :cond_2

    .line 89
    const/16 v10, 0xc0

    .line 91
    aput v10, v5, v8

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/high16 v11, 0x437f0000    # 255.0f

    .line 96
    mul-float/2addr v10, v11

    .line 97
    float-to-int v10, v10

    .line 98
    aput v10, v5, v8

    .line 100
    :goto_1
    add-int/lit8 v10, v8, 0x1

    .line 102
    invoke-virtual {v9}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    .line 105
    move-result-wide v11

    .line 106
    aput-wide v11, v4, v8

    .line 108
    add-int/lit8 v7, v7, 0x1

    .line 110
    move v8, v10

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    const/4 v4, 0x0

    .line 113
    move v6, v3

    .line 114
    move v8, v6

    .line 115
    move-object v5, v4

    .line 116
    :cond_4
    :goto_2
    if-gez v8, :cond_5

    .line 118
    const-string p1, "Only oneshot and step waveforms are supported on input devices"

    .line 120
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-array p1, v2, [J

    .line 125
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    .line 127
    new-array p1, v2, [I

    .line 129
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    .line 131
    iput v3, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    iput v6, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    .line 136
    new-array p1, v8, [J

    .line 138
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    .line 140
    new-array v0, v8, [I

    .line 142
    iput-object v0, p0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    .line 144
    invoke-static {v4, v2, p1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    array-length p0, p1

    .line 151
    if-ge v6, p0, :cond_6

    .line 153
    :goto_3
    return-void

    .line 154
    :cond_6
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 156
    const-string v0, "Repeat index "

    .line 158
    const-string v1, " must be within the bounds of the pattern.length "

    .line 160
    invoke-static {v6, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    move-result-object v0

    .line 164
    array-length p1, p1

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 175
    throw p0
.end method
