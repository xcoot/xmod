.class public abstract synthetic Lcom/android/server/vibrator/VibratorManagerService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

.field public static final synthetic $SwitchMap$com$android$server$vibrator$Vibration$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/VibrationEffect$SemMagnitudeType;->values()[Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    const/4 v0, 0x2

    .line 20
    :try_start_1
    sget-object v2, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    .line 21
    .line 22
    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    :catch_1
    const/4 v2, 0x3

    .line 31
    :try_start_2
    sget-object v3, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    .line 32
    .line 33
    sget-object v4, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    :catch_2
    const/4 v3, 0x4

    .line 42
    :try_start_3
    sget-object v4, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    .line 43
    .line 44
    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 51
    .line 52
    :catch_3
    invoke-static {}, Lcom/android/server/vibrator/Vibration$Status;->values()[Lcom/android/server/vibrator/Vibration$Status;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    array-length v4, v4

    .line 57
    new-array v4, v4, [I

    .line 58
    .line 59
    sput-object v4, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$com$android$server$vibrator$Vibration$Status:[I

    .line 60
    .line 61
    const/16 v5, 0x10

    .line 62
    .line 63
    :try_start_4
    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 64
    .line 65
    :catch_4
    :try_start_5
    sget-object v1, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$com$android$server$vibrator$Vibration$Status:[I

    .line 66
    .line 67
    const/16 v4, 0xb

    .line 68
    .line 69
    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 70
    .line 71
    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$com$android$server$vibrator$Vibration$Status:[I

    .line 72
    .line 73
    const/16 v1, 0x13

    .line 74
    .line 75
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 76
    .line 77
    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$com$android$server$vibrator$Vibration$Status:[I

    .line 78
    .line 79
    const/16 v1, 0x14

    .line 80
    .line 81
    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 82
    .line 83
    :catch_7
    :try_start_8
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$com$android$server$vibrator$Vibration$Status:[I

    .line 84
    .line 85
    const/4 v1, 0x5

    .line 86
    const/16 v2, 0x15

    .line 87
    .line 88
    aput v1, v0, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 89
    .line 90
    :catch_8
    :try_start_9
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$com$android$server$vibrator$Vibration$Status:[I

    .line 91
    .line 92
    const/4 v1, 0x6

    .line 93
    const/16 v2, 0x17

    .line 94
    .line 95
    aput v1, v0, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 96
    .line 97
    :catch_9
    :try_start_a
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$com$android$server$vibrator$Vibration$Status:[I

    .line 98
    .line 99
    const/4 v1, 0x7

    .line 100
    const/16 v2, 0x1a

    .line 101
    .line 102
    aput v1, v0, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 103
    .line 104
    :catch_a
    return-void
.end method
