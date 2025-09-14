.class public final Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;
.super Lcom/android/server/display/color/TintController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mColorTemp:Ljava/lang/Integer;

.field public final mColorTempCoefficients:[F

.field public mIsAvailable:Ljava/lang/Boolean;

.field public final mMatrix:[F

.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 5
    .line 6
    const/16 p1, 0x10

    .line 7
    .line 8
    new-array p1, p1, [F

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    .line 11
    .line 12
    const/16 p1, 0x9

    .line 13
    .line 14
    new-array p1, p1, [F

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final clampNightDisplayColorTemperature(I)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const v0, 0x10e00f9

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->getMinimumColorTemperature(Landroid/content/Context;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->getMaximumColorTemperature(Landroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ge p1, v0, :cond_1

    .line 38
    .line 39
    move p1, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-le p1, p0, :cond_2

    .line 42
    .line 43
    move p1, p0

    .line 44
    :cond_2
    :goto_0
    return p1
.end method

.method public final getColorTemperatureSetting()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 4
    .line 5
    const/16 v2, -0x2710

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 20
    .line 21
    const-string/jumbo v2, "night_display_color_temperature"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final getLevel()I
    .locals 0

    .line 1
    const/16 p0, 0x64

    .line 2
    .line 3
    return p0
.end method

.method public final getMatrix()[F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 18
    .line 19
    :goto_0
    return-object p0
.end method

.method public final isActivatedSetting()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 4
    .line 5
    const/16 v1, -0x2710

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 20
    .line 21
    const-string/jumbo v1, "night_display_activated"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p0, v0, :cond_1

    .line 30
    .line 31
    move v2, v0

    .line 32
    :cond_1
    return v2
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget v3, v2, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 43
    .line 44
    const-string/jumbo v4, "night_display_last_activated_time"

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v4, p2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    if-eqz v0, :cond_8

    .line 57
    .line 58
    :cond_3
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eq p0, p2, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iget v0, v2, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 83
    .line 84
    const-string/jumbo v1, "night_display_activated"

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    const-string p1, "Turning on night display"

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    const-string p1, "Turning off night display"

    .line 100
    .line 101
    :goto_1
    const-string p2, "ColorDisplayService"

    .line 102
    .line 103
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iget-object p1, v2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 107
    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    invoke-virtual {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onActivated(Z)V

    .line 111
    .line 112
    .line 113
    :cond_6
    iget-object p0, v2, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_7

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-object p0, v2, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 129
    .line 130
    const/4 p1, 0x3

    .line 131
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    .line 133
    .line 134
    :cond_8
    return-void
.end method

.method public final setMatrix(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/16 v2, 0x10

    .line 5
    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    const-string p0, "ColorDisplayService"

    .line 9
    .line 10
    const-string p1, "The display transformation matrix must be 4x4"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 18
    .line 19
    .line 20
    mul-int v2, p1, p1

    .line 21
    .line 22
    int-to-float v2, v2

    .line 23
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    .line 24
    .line 25
    aget v3, p0, v1

    .line 26
    .line 27
    mul-float/2addr v3, v2

    .line 28
    int-to-float p1, p1

    .line 29
    const/4 v4, 0x1

    .line 30
    aget v4, p0, v4

    .line 31
    .line 32
    mul-float/2addr v4, p1

    .line 33
    add-float/2addr v4, v3

    .line 34
    const/4 v3, 0x2

    .line 35
    aget v3, p0, v3

    .line 36
    .line 37
    add-float/2addr v4, v3

    .line 38
    const/4 v3, 0x3

    .line 39
    aget v3, p0, v3

    .line 40
    .line 41
    mul-float/2addr v3, v2

    .line 42
    const/4 v5, 0x4

    .line 43
    aget v5, p0, v5

    .line 44
    .line 45
    mul-float/2addr v5, p1

    .line 46
    add-float/2addr v5, v3

    .line 47
    const/4 v3, 0x5

    .line 48
    aget v6, p0, v3

    .line 49
    .line 50
    add-float/2addr v5, v6

    .line 51
    const/4 v6, 0x6

    .line 52
    aget v6, p0, v6

    .line 53
    .line 54
    mul-float/2addr v2, v6

    .line 55
    const/4 v6, 0x7

    .line 56
    aget v6, p0, v6

    .line 57
    .line 58
    mul-float/2addr p1, v6

    .line 59
    add-float/2addr p1, v2

    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    aget p0, p0, v2

    .line 63
    .line 64
    add-float/2addr p1, p0

    .line 65
    aput v4, v0, v1

    .line 66
    .line 67
    aput v5, v0, v3

    .line 68
    .line 69
    const/16 p0, 0xa

    .line 70
    .line 71
    aput p1, v0, p0

    .line 72
    .line 73
    return-void
.end method

.method public final setUp(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const p2, 0x107012a

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const p2, 0x107012b

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    :goto_1
    const/16 v0, 0x9

    .line 20
    .line 21
    if-ge p2, v0, :cond_1

    .line 22
    .line 23
    array-length v0, p1

    .line 24
    if-ge p2, v0, :cond_1

    .line 25
    .line 26
    aget-object v0, p1, p2

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    .line 33
    .line 34
    aput v0, v1, p2

    .line 35
    .line 36
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return-void
.end method
