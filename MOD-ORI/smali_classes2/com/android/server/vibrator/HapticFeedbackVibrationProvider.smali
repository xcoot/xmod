.class public final Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mHapticTextHandleEnabled:Z

.field public mIsDcMotor:Z

.field public final mKeyboardVibrationFixedAmplitude:F

.field public final mVibratorInfo:Landroid/os/VibratorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 8
    .line 9
    const/16 v0, 0x22

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 16
    .line 17
    const/16 v0, 0x32

    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 24
    .line 25
    const/16 v0, 0x41

    .line 26
    .line 27
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/Vibrator;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V
    .locals 3

    .line 12
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadVibrationsInternal(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/vibrator/persistence/VibrationXmlParser$VibrationXmlParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/vibrator/HapticFeedbackCustomization$CustomizationParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    :try_start_1
    new-instance v1, Lcom/android/server/vibrator/HapticFeedbackCustomization$CustomizationParserException;

    .line 14
    const-string v2, "Error parsing haptic feedback customization file."

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/vibrator/HapticFeedbackCustomization$CustomizationParserException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    .line 16
    const-string v1, "HapticFeedbackVibrationProvider"

    const-string v2, "Unable to load haptic customizations."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Landroid/util/SparseArray;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mIsDcMotor:Z

    .line 4
    iput-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    const p2, 0x1110175

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    if-eqz p3, :cond_1

    const/16 p2, 0x2711

    .line 7
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/VibrationEffect;

    goto :goto_0

    :cond_1
    const p2, 0x107014f

    .line 9
    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    :goto_0
    const p2, 0x10500ec

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    .line 11
    iput p1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    :cond_3
    return-void
.end method


# virtual methods
.method public final getVibrationAttributesForHapticFeedback(IZZ)Landroid/os/VibrationAttributes;
    .locals 7

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v1, :cond_1

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v3, 0xe

    .line 9
    .line 10
    if-eq p1, v3, :cond_0

    .line 11
    .line 12
    const/16 v3, 0xf

    .line 13
    .line 14
    if-eq p1, v3, :cond_0

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    packed-switch p1, :pswitch_data_1

    .line 20
    .line 21
    .line 22
    sget-object v3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :pswitch_0
    sget-object v3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :pswitch_1
    sget-object v3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    sget-object v3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/vibrator/Flags;->keyboardCategoryEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    if-nez p3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v3, Landroid/os/VibrationAttributes$Builder;

    .line 44
    .line 45
    sget-object v4, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 46
    .line 47
    invoke-direct {v3, v4}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2}, Landroid/os/VibrationAttributes$Builder;->setCategory(I)Landroid/os/VibrationAttributes$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    sget-object v3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 60
    .line 61
    :goto_1
    const/4 v4, 0x0

    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    const/4 p2, 0x2

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    move p2, v4

    .line 67
    :goto_2
    packed-switch p1, :pswitch_data_2

    .line 68
    .line 69
    .line 70
    move v5, v4

    .line 71
    goto :goto_3

    .line 72
    :pswitch_2
    invoke-static {}, Landroid/view/flags/Flags;->scrollFeedbackApi()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    :goto_3
    if-eqz v5, :cond_5

    .line 77
    .line 78
    or-int/lit8 p2, p2, 0x1

    .line 79
    .line 80
    :cond_5
    invoke-static {}, Landroid/os/vibrator/Flags;->keyboardCategoryEnabled()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_9

    .line 85
    .line 86
    iget v5, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    cmpg-float v5, v5, v6

    .line 90
    .line 91
    if-ltz v5, :cond_9

    .line 92
    .line 93
    if-nez p3, :cond_6

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    if-eq p1, v1, :cond_8

    .line 97
    .line 98
    if-eq p1, v0, :cond_7

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_7
    iget-object p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    goto :goto_4

    .line 108
    :cond_8
    iget-object p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 109
    .line 110
    invoke-virtual {p0, v2}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    .line 115
    .line 116
    or-int/lit8 p2, p2, 0x10

    .line 117
    .line 118
    :cond_a
    if-nez p2, :cond_b

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_b
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    .line 122
    .line 123
    invoke-direct {p0, v3}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p2}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    :goto_5
    return-object v3

    .line 135
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_1
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
