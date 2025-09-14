.class public final Lcom/android/server/display/DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public address:Landroid/view/DisplayAddress;

.field public allmSupported:Z

.field public appVsyncOffsetNanos:J

.field public brightnessDefault:F

.field public brightnessMaximum:F

.field public colorMode:I

.field public committedState:I

.field public defaultModeId:I

.field public densityDpi:I

.field public deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

.field public displayCutout:Landroid/view/DisplayCutout;

.field public displayShape:Landroid/view/DisplayShape;

.field public flags:I

.field public frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public gameContentTypeSupported:Z

.field public hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public hdrSdrRatio:F

.field public height:I

.field public installOrientation:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public presentationDeadlineNanos:J

.field public renderFrameRate:F

.field public rotation:I

.field public roundedCorners:Landroid/view/RoundedCorners;

.field public state:I

.field public supportedColorModes:[I

.field public supportedModes:[Landroid/view/Display$Mode;

.field public touch:I

.field public type:I

.field public uniqueId:Ljava/lang/String;

.field public userPreferredModeId:I

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 7
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    .line 9
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 11
    const/4 v0, 0x0

    .line 12
    filled-new-array {v0}, [I

    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 18
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 20
    const/4 v1, 0x2

    .line 21
    iput v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 23
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 25
    new-array v1, v0, [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 27
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 29
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 31
    iput v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 33
    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 35
    return-void
.end method


# virtual methods
.method public final diff(Lcom/android/server/display/DisplayDeviceInfo;)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 3
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v0, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 12
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 14
    if-eq v1, v2, :cond_1

    .line 16
    or-int/lit8 v0, v0, 0x4

    .line 18
    :cond_1
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 20
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 22
    if-eq v1, v2, :cond_2

    .line 24
    or-int/lit8 v0, v0, 0x8

    .line 26
    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 28
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 30
    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_3

    .line 36
    or-int/lit8 v0, v0, 0x10

    .line 38
    :cond_3
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 40
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 42
    if-eq v1, v2, :cond_4

    .line 44
    or-int/lit8 v0, v0, 0x20

    .line 46
    :cond_4
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 48
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 50
    cmpl-float v1, v1, v2

    .line 52
    if-nez v1, :cond_5

    .line 54
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 56
    iget-wide v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 58
    cmp-long v1, v1, v3

    .line 60
    if-nez v1, :cond_5

    .line 62
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 64
    iget-wide v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 66
    cmp-long v1, v1, v3

    .line 68
    if-eqz v1, :cond_6

    .line 70
    :cond_5
    or-int/lit8 v0, v0, 0x40

    .line 72
    :cond_6
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 74
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 76
    if-eq v1, v2, :cond_7

    .line 78
    or-int/lit16 v0, v0, 0x80

    .line 80
    :cond_7
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 82
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 84
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_8

    .line 90
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 92
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 94
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_8

    .line 100
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 102
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 104
    if-ne v1, v2, :cond_8

    .line 106
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 108
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 110
    if-ne v1, v2, :cond_8

    .line 112
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 114
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 116
    if-ne v1, v2, :cond_8

    .line 118
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 120
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 122
    if-ne v1, v2, :cond_8

    .line 124
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 126
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 128
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_8

    .line 134
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 136
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 138
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_8

    .line 144
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 146
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 148
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_8

    .line 154
    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 156
    iget-boolean v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 158
    if-ne v1, v2, :cond_8

    .line 160
    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 162
    iget-boolean v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 164
    if-ne v1, v2, :cond_8

    .line 166
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 168
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 170
    if-ne v1, v2, :cond_8

    .line 172
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 174
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 176
    cmpl-float v1, v1, v2

    .line 178
    if-nez v1, :cond_8

    .line 180
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 182
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 184
    cmpl-float v1, v1, v2

    .line 186
    if-nez v1, :cond_8

    .line 188
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 190
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 192
    if-ne v1, v2, :cond_8

    .line 194
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 196
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 198
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_8

    .line 204
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 206
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 208
    if-ne v1, v2, :cond_8

    .line 210
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 212
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 214
    if-ne v1, v2, :cond_8

    .line 216
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 218
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 220
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_8

    .line 226
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 228
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 230
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_8

    .line 236
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 238
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 240
    if-ne v1, v2, :cond_8

    .line 242
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 244
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 246
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_8

    .line 252
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 254
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 256
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_8

    .line 262
    const/4 v1, 0x0

    .line 263
    invoke-static {v1, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_8

    .line 269
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 271
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 273
    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_8

    .line 279
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 281
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 283
    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_8

    .line 289
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 291
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 293
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_8

    .line 299
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 301
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 303
    if-ne v1, v2, :cond_8

    .line 305
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 307
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 309
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    move-result p0

    .line 313
    if-nez p0, :cond_9

    .line 315
    :cond_8
    or-int/lit8 v0, v0, 0x1

    .line 317
    :cond_9
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/server/display/DisplayDeviceInfo;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DisplayDeviceInfo{\""

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "\": uniqueId=\""

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "\", "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, " x "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, ", modeId "

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v2, ", renderFrameRate "

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    const-string v2, ", defaultModeId "

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, ", userPreferredModeId "

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v2, ", supportedModes "

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 90
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, ", colorMode "

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v2, ", supportedColorModes "

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 114
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v2, ", hdrCapabilities "

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, ", allmSupported "

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-boolean v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    const-string v2, ", gameContentTypeSupported "

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-boolean v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, ", density "

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v2, ", "

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, " dpi, appVsyncOff "

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", presDeadline "

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 196
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 201
    if-eqz v1, :cond_0

    .line 203
    const-string v1, ", cutout "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    :cond_0
    const-string v1, ", touch "

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 220
    if-eqz v1, :cond_4

    .line 222
    const/4 v2, 0x1

    .line 223
    if-eq v1, v2, :cond_3

    .line 225
    const/4 v2, 0x2

    .line 226
    if-eq v1, v2, :cond_2

    .line 228
    const/4 v2, 0x3

    .line 229
    if-eq v1, v2, :cond_1

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 234
    move-result-object v1

    .line 235
    goto :goto_0

    .line 236
    :cond_1
    const-string v1, "VIRTUAL"

    .line 238
    goto :goto_0

    .line 239
    :cond_2
    const-string v1, "EXTERNAL"

    .line 241
    goto :goto_0

    .line 242
    :cond_3
    const-string v1, "INTERNAL"

    .line 244
    goto :goto_0

    .line 245
    :cond_4
    const-string v1, "NONE"

    .line 247
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", rotation "

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ", type "

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 267
    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 276
    if-eqz v1, :cond_5

    .line 278
    const-string v1, ", address "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    :cond_5
    const-string v1, ", deviceProductInfo "

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, ", state "

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 305
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, ", committedState "

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 319
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 328
    if-nez v1, :cond_6

    .line 330
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 332
    if-eqz v1, :cond_7

    .line 334
    :cond_6
    const-string v1, ", owner "

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, " (uid "

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, ")"

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_7
    const-string v1, ", frameRateOverride "

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 366
    array-length v2, v1

    .line 367
    const/4 v3, 0x0

    .line 368
    :goto_1
    if-ge v3, v2, :cond_8

    .line 370
    aget-object v4, v1, v3

    .line 372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    const-string v4, " "

    .line 377
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v3, v3, 0x1

    .line 382
    goto :goto_1

    .line 383
    :cond_8
    const-string v1, ", brightnessMinimum 0.0, brightnessMaximum "

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, ", brightnessDefault "

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, ", hdrSdrRatio "

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 413
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 415
    if-eqz v1, :cond_9

    .line 417
    const-string v1, ", roundedCorners "

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    :cond_9
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    .line 431
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    and-int/lit8 v3, v1, 0x1

    .line 436
    if-eqz v3, :cond_a

    .line 438
    const-string v3, ", FLAG_ALLOWED_TO_BE_DEFAULT_DISPLAY"

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_a
    and-int/lit8 v3, v1, 0x2

    .line 445
    if-eqz v3, :cond_b

    .line 447
    const-string v3, ", FLAG_ROTATES_WITH_CONTENT"

    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_b
    and-int/lit8 v3, v1, 0x4

    .line 454
    if-eqz v3, :cond_c

    .line 456
    const-string v3, ", FLAG_SECURE"

    .line 458
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_c
    and-int/lit8 v3, v1, 0x8

    .line 463
    if-eqz v3, :cond_d

    .line 465
    const-string v3, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_d
    and-int/lit8 v3, v1, 0x10

    .line 472
    if-eqz v3, :cond_e

    .line 474
    const-string v3, ", FLAG_PRIVATE"

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_e
    and-int/lit8 v3, v1, 0x20

    .line 481
    if-eqz v3, :cond_f

    .line 483
    const-string v3, ", FLAG_NEVER_BLANK"

    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_f
    and-int/lit8 v3, v1, 0x40

    .line 490
    if-eqz v3, :cond_10

    .line 492
    const-string v3, ", FLAG_PRESENTATION"

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_10
    and-int/lit16 v3, v1, 0x80

    .line 499
    if-eqz v3, :cond_11

    .line 501
    const-string v3, ", FLAG_OWN_CONTENT_ONLY"

    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_11
    and-int/lit16 v3, v1, 0x100

    .line 508
    if-eqz v3, :cond_12

    .line 510
    const-string v3, ", FLAG_ROUND"

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_12
    and-int/lit16 v3, v1, 0x200

    .line 517
    if-eqz v3, :cond_13

    .line 519
    const-string v3, ", FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD"

    .line 521
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_13
    and-int/lit16 v3, v1, 0x400

    .line 526
    if-eqz v3, :cond_14

    .line 528
    const-string v3, ", FLAG_DESTROY_CONTENT_ON_REMOVAL"

    .line 530
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_14
    and-int/lit16 v3, v1, 0x800

    .line 535
    if-eqz v3, :cond_15

    .line 537
    const-string v3, ", FLAG_MASK_DISPLAY_CUTOUT"

    .line 539
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_15
    and-int/lit16 v3, v1, 0x1000

    .line 544
    if-eqz v3, :cond_16

    .line 546
    const-string v3, ", FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS"

    .line 548
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :cond_16
    and-int/lit16 v3, v1, 0x2000

    .line 553
    if-eqz v3, :cond_17

    .line 555
    const-string v3, ", FLAG_TRUSTED"

    .line 557
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_17
    and-int/lit16 v3, v1, 0x4000

    .line 562
    if-eqz v3, :cond_18

    .line 564
    const-string v3, ", FLAG_OWN_DISPLAY_GROUP"

    .line 566
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_18
    const v3, 0x8000

    .line 572
    and-int/2addr v3, v1

    .line 573
    if-eqz v3, :cond_19

    .line 575
    const-string v3, ", FLAG_ALWAYS_UNLOCKED"

    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_19
    const/high16 v3, 0x10000

    .line 582
    and-int/2addr v3, v1

    .line 583
    if-eqz v3, :cond_1a

    .line 585
    const-string v3, ", FLAG_TOUCH_FEEDBACK_DISABLED"

    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_1a
    const/high16 v3, 0x20000

    .line 592
    and-int/2addr v3, v1

    .line 593
    if-eqz v3, :cond_1b

    .line 595
    const-string v3, ", FLAG_OWN_FOCUS"

    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :cond_1b
    const/high16 v3, 0x80000

    .line 602
    and-int/2addr v3, v1

    .line 603
    if-eqz v3, :cond_1c

    .line 605
    const-string v3, ", FLAG_STEAL_TOP_FOCUS_DISABLED"

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_1c
    const/high16 v3, 0x4000000

    .line 612
    and-int/2addr v3, v1

    .line 613
    if-eqz v3, :cond_1d

    .line 615
    const-string v3, ", FLAG_WIRELESS_DEX_DISPLAY"

    .line 617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_1d
    const/high16 v3, 0x8000000

    .line 622
    and-int/2addr v3, v1

    .line 623
    if-eqz v3, :cond_1e

    .line 625
    const-string v3, ", FLAG_PC_DEX_DISPLAY"

    .line 627
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :cond_1e
    const/high16 v3, 0x10000000

    .line 632
    and-int/2addr v3, v1

    .line 633
    if-eqz v3, :cond_1f

    .line 635
    const-string v3, ", FLAG_WIFI_DISPLAY"

    .line 637
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_1f
    const/high16 v3, 0x20000000

    .line 642
    and-int/2addr v3, v1

    .line 643
    if-eqz v3, :cond_20

    .line 645
    const-string v3, ", FLAG_NO_LOCK_PRESENTATION"

    .line 647
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :cond_20
    const/high16 v3, 0x2000000

    .line 652
    and-int/2addr v3, v1

    .line 653
    if-eqz v3, :cond_21

    .line 655
    const-string v3, ", FLAG_HIDDEN_SPACE_DISPLAY"

    .line 657
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_21
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 662
    if-eqz v3, :cond_22

    .line 664
    const/high16 v3, 0x40000000    # 2.0f

    .line 666
    and-int/2addr v3, v1

    .line 667
    if-eqz v3, :cond_22

    .line 669
    const-string v3, ", FLAG_SPEG_DISPLAY"

    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_22
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 676
    if-eqz v3, :cond_23

    .line 678
    const/high16 v3, -0x80000000

    .line 680
    and-int/2addr v3, v1

    .line 681
    if-eqz v3, :cond_23

    .line 683
    const-string v3, ", FLAG_CARLIFE_DISPLAY"

    .line 685
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_23
    const/high16 v3, 0x800000

    .line 690
    and-int/2addr v3, v1

    .line 691
    if-eqz v3, :cond_24

    .line 693
    const-string v3, ", FLAG_EXTRA_BUILT_IN_DISPLAY"

    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_24
    const/high16 v3, 0x400000

    .line 700
    and-int/2addr v1, v3

    .line 701
    if-eqz v1, :cond_25

    .line 703
    const-string v1, ", FLAG_VIEW_COVER_DISPLAY"

    .line 705
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    move-result-object v1

    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string v1, ", installOrientation "

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 722
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 727
    if-eqz v1, :cond_26

    .line 729
    const-string v1, ", displayShape "

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 736
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 739
    :cond_26
    const-string/jumbo p0, "}"

    .line 742
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    move-result-object p0

    .line 749
    return-object p0
.end method
