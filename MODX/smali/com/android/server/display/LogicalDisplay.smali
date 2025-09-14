.class public final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;


# instance fields
.field public final mAlwaysRotateDisplayDeviceEnabled:Z

.field public final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field public mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDevicePosition:I

.field public mDirty:Z

.field public mDisplayGroupId:I

.field public mDisplayGroupName:Ljava/lang/String;

.field public final mDisplayId:I

.field public mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

.field public mDisplayOffsetX:I

.field public mDisplayOffsetY:I

.field public final mDisplayPosition:Landroid/graphics/Point;

.field public mDisplayScalingDisabled:Z

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mHasContent:Z

.field public final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field public final mIsAnisotropyCorrectionEnabled:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public final mLayerStack:I

.field public mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

.field public mLeadDisplayId:I

.field public mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

.field public mPowerThrottlingDataId:Ljava/lang/String;

.field public mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mRefreshRateMode:I

.field public mRequestedColorMode:I

.field public mRequestedMinimalPostProcessing:Z

.field public final mTempDisplayRect:Landroid/graphics/Rect;

.field public final mTempFrameRateOverride:Landroid/util/SparseArray;

.field public final mTempLayerStackRect:Landroid/graphics/Rect;

.field public mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public mThermalRefreshRateThrottling:Landroid/util/SparseArray;

.field public mUserDisabledHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/DisplayInfo;

    .line 3
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    .line 8
    return-void
.end method

.method public constructor <init>(IILcom/android/server/display/DisplayDevice;ZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/view/DisplayInfo;

    .line 6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 14
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 16
    const/4 v2, 0x0

    .line 17
    iput v2, p0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    .line 19
    new-instance v3, Lcom/android/server/display/DisplayInfoProxy;

    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v4, 0x0

    .line 25
    iput-object v4, v3, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 27
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 29
    new-array v3, v2, [I

    .line 31
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 33
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 35
    invoke-direct {v3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    .line 38
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 40
    new-instance v3, Landroid/graphics/Point;

    .line 42
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 45
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 47
    new-instance v3, Landroid/graphics/Rect;

    .line 49
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 52
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 54
    new-instance v3, Landroid/graphics/Rect;

    .line 56
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 59
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 61
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 63
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 65
    new-instance v1, Landroid/util/SparseArray;

    .line 67
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 72
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 74
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 76
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 78
    new-instance p1, Landroid/util/ArraySet;

    .line 80
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 85
    new-instance p1, Landroid/util/SparseArray;

    .line 87
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 92
    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 97
    const-string/jumbo p1, "default"

    .line 100
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 104
    iput-object p1, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 106
    iput-boolean p4, p0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    .line 108
    iput-boolean p5, p0, Lcom/android/server/display/LogicalDisplay;->mAlwaysRotateDisplayDeviceEnabled:Z

    .line 110
    return-void
.end method

.method public static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 3
    and-int/lit16 v0, v0, 0x800

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 18
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    return-object p0
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "mDisplayId="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 11
    const-string/jumbo v2, "mIsEnabled="

    .line 14
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 20
    const-string/jumbo v2, "mIsInTransition="

    .line 23
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 27
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 29
    const-string/jumbo v2, "mLayerStack="

    .line 32
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 38
    const-string/jumbo v2, "mPosition="

    .line 41
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 47
    const-string/jumbo v2, "mHasContent="

    .line 50
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v0

    .line 54
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 56
    const-string/jumbo v2, "mDesiredDisplayModeSpecs={"

    .line 59
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, "}"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v1, "mRequestedColorMode="

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 91
    const-string/jumbo v2, "mDisplayOffset=("

    .line 94
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-result-object v0

    .line 98
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", "

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ")"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, "mDisplayScalingDisabled="

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 135
    const-string/jumbo v2, "mPrimaryDisplayDevice="

    .line 138
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 144
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 149
    move-result-object v1

    .line 150
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 152
    goto :goto_0

    .line 153
    :cond_0
    const-string/jumbo v1, "null"

    .line 156
    :goto_0
    const-string/jumbo v2, "mBaseDisplayInfo="

    .line 159
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 162
    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v1, "mOverrideDisplayInfo="

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    .line 200
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 205
    const-string/jumbo v2, "mFrameRateOverrides="

    .line 208
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 214
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 230
    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    .line 233
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, "mDisplayGroupName="

    .line 253
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    .line 258
    const-string/jumbo v2, "mThermalBrightnessThrottlingDataId="

    .line 261
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 264
    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 267
    const-string/jumbo v2, "mLeadDisplayId="

    .line 270
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 273
    move-result-object v0

    .line 274
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 276
    const-string/jumbo v2, "mLayoutLimitedRefreshRate="

    .line 279
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v1, "mThermalRefreshRateThrottling="

    .line 300
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 317
    const-string/jumbo v1, "mPowerThrottlingDataId="

    .line 320
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 325
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 328
    return-void
.end method

.method public final getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 3
    iget-object v1, v0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 5
    if-nez v1, :cond_2

    .line 7
    new-instance v1, Landroid/view/DisplayInfo;

    .line 9
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 14
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 19
    if-eqz v3, :cond_0

    .line 21
    iget v2, v3, Landroid/view/DisplayInfo;->appWidth:I

    .line 23
    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 25
    iget v2, v3, Landroid/view/DisplayInfo;->appHeight:I

    .line 27
    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 29
    iget v2, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 31
    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 33
    iget v2, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 35
    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 37
    iget v2, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 39
    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 41
    iget v2, v3, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 43
    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 45
    iget v2, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 47
    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 49
    iget v2, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 51
    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 53
    iget v2, v3, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 55
    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 57
    iget v2, v3, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 59
    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 61
    iget v2, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 63
    iput v2, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 65
    iget-object v2, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 67
    iput-object v2, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 69
    iget v2, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 71
    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 73
    iget-object v2, v3, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 75
    iput-object v2, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 77
    iget-object v2, v3, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 79
    iput-object v2, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 81
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 83
    if-eqz v2, :cond_1

    .line 85
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    .line 87
    iput p0, v1, Landroid/view/DisplayInfo;->refreshRateMode:I

    .line 89
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 92
    :cond_2
    iget-object p0, v0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 94
    return-object p0
.end method

.method public final setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 3
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 8
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    sget-object v2, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 15
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 20
    return-object v0
.end method

.method public final setUserDisabledHdrTypes([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 7
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 9
    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 11
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 17
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6
    new-instance v1, Ljava/io/PrintWriter;

    .line 8
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 7
    if-nez v2, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v3, v1, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 12
    check-cast v3, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 21
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 27
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 30
    move-result-object v2

    .line 31
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 33
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 36
    move-result-object v4

    .line 37
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 39
    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 45
    iget-boolean v5, v0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 47
    if-nez v5, :cond_2

    .line 49
    goto/16 :goto_11

    .line 51
    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MD_DEX_WIRELESS:Z

    .line 53
    const/4 v6, 0x2

    .line 54
    const/high16 v7, 0x20000000

    .line 56
    const/high16 v8, 0x4000000

    .line 58
    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 60
    if-eqz v5, :cond_5

    .line 62
    if-ne v9, v6, :cond_5

    .line 64
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 66
    check-cast v1, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v1

    .line 72
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_4

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lcom/android/server/display/DisplayDevice;

    .line 84
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 87
    move-result-object v5

    .line 88
    iget v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 90
    and-int/2addr v5, v8

    .line 91
    if-eqz v5, :cond_3

    .line 93
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 95
    const v5, -0x20000001

    .line 98
    and-int/2addr v1, v5

    .line 99
    iput v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 104
    or-int/2addr v1, v7

    .line 105
    iput v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 107
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 109
    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 111
    iput v5, v1, Landroid/view/DisplayInfo;->layerStack:I

    .line 113
    const/4 v5, 0x0

    .line 114
    iput v5, v1, Landroid/view/DisplayInfo;->flags:I

    .line 116
    iput v5, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 118
    iget v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 120
    and-int/lit8 v11, v10, 0x8

    .line 122
    const/4 v12, 0x1

    .line 123
    if-eqz v11, :cond_6

    .line 125
    iput v12, v1, Landroid/view/DisplayInfo;->flags:I

    .line 127
    :cond_6
    and-int/lit8 v11, v10, 0x4

    .line 129
    if-eqz v11, :cond_7

    .line 131
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 133
    or-int/2addr v11, v6

    .line 134
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 136
    :cond_7
    and-int/lit8 v11, v10, 0x10

    .line 138
    if-eqz v11, :cond_8

    .line 140
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 142
    or-int/lit8 v11, v11, 0x4

    .line 144
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 146
    iput v12, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 148
    :cond_8
    and-int/lit16 v11, v10, 0x400

    .line 150
    if-eqz v11, :cond_9

    .line 152
    iput v12, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 154
    :cond_9
    if-nez v9, :cond_a

    .line 156
    goto :goto_1

    .line 157
    :cond_a
    if-ne v9, v12, :cond_b

    .line 159
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 161
    or-int/lit8 v11, v11, 0x8

    .line 163
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 165
    goto :goto_1

    .line 166
    :cond_b
    and-int/lit8 v11, v10, 0x40

    .line 168
    if-eqz v11, :cond_c

    .line 170
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 172
    or-int/lit8 v11, v11, 0x8

    .line 174
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 176
    :cond_c
    :goto_1
    and-int/lit16 v11, v10, 0x100

    .line 178
    if-eqz v11, :cond_d

    .line 180
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 182
    or-int/lit8 v11, v11, 0x10

    .line 184
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 186
    :cond_d
    and-int/lit16 v11, v10, 0x200

    .line 188
    if-eqz v11, :cond_e

    .line 190
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 192
    or-int/lit8 v11, v11, 0x20

    .line 194
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 196
    :cond_e
    and-int/lit16 v11, v10, 0x1000

    .line 198
    if-eqz v11, :cond_f

    .line 200
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 202
    or-int/lit8 v11, v11, 0x40

    .line 204
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 206
    :cond_f
    and-int/lit16 v11, v10, 0x2000

    .line 208
    if-eqz v11, :cond_10

    .line 210
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 212
    or-int/lit16 v11, v11, 0x80

    .line 214
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 216
    :cond_10
    and-int/lit16 v11, v10, 0x4000

    .line 218
    if-eqz v11, :cond_11

    .line 220
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 222
    or-int/lit16 v11, v11, 0x100

    .line 224
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 226
    :cond_11
    const v11, 0x8000

    .line 229
    and-int v13, v10, v11

    .line 231
    if-eqz v13, :cond_12

    .line 233
    iget v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 235
    or-int/lit16 v13, v13, 0x200

    .line 237
    iput v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 239
    :cond_12
    and-int/lit8 v13, v10, 0x2

    .line 241
    if-eqz v13, :cond_13

    .line 243
    iget v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 245
    or-int/lit16 v13, v13, 0x4000

    .line 247
    iput v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 249
    :cond_13
    const/high16 v13, 0x10000

    .line 251
    and-int/2addr v13, v10

    .line 252
    if-eqz v13, :cond_14

    .line 254
    iget v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 256
    or-int/lit16 v13, v13, 0x400

    .line 258
    iput v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 260
    :cond_14
    const/high16 v13, 0x20000

    .line 262
    and-int/2addr v13, v10

    .line 263
    if-eqz v13, :cond_15

    .line 265
    iget v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 267
    or-int/lit16 v13, v13, 0x800

    .line 269
    iput v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 271
    :cond_15
    const/high16 v13, 0x80000

    .line 273
    and-int/2addr v10, v13

    .line 274
    if-eqz v10, :cond_16

    .line 276
    iget v10, v1, Landroid/view/DisplayInfo;->flags:I

    .line 278
    or-int/lit16 v10, v10, 0x1000

    .line 280
    iput v10, v1, Landroid/view/DisplayInfo;->flags:I

    .line 282
    :cond_16
    invoke-static {v2}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    .line 285
    move-result-object v1

    .line 286
    iget v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 288
    iget v14, v1, Landroid/graphics/Rect;->left:I

    .line 290
    sub-int/2addr v10, v14

    .line 291
    iget v14, v1, Landroid/graphics/Rect;->right:I

    .line 293
    sub-int/2addr v10, v14

    .line 294
    iget v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 296
    iget v15, v1, Landroid/graphics/Rect;->top:I

    .line 298
    sub-int/2addr v14, v15

    .line 299
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 301
    sub-int/2addr v14, v1

    .line 302
    iget-boolean v1, v0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    .line 304
    const/4 v15, 0x0

    .line 305
    if-eqz v1, :cond_18

    .line 307
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 309
    if-ne v1, v6, :cond_18

    .line 311
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 313
    cmpl-float v16, v1, v15

    .line 315
    if-lez v16, :cond_18

    .line 317
    iget v8, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 319
    cmpl-float v17, v8, v15

    .line 321
    if-lez v17, :cond_18

    .line 323
    const v17, 0x3f833333    # 1.025f

    .line 326
    mul-float v18, v8, v17

    .line 328
    cmpl-float v18, v1, v18

    .line 330
    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    .line 332
    if-lez v18, :cond_17

    .line 334
    int-to-float v14, v14

    .line 335
    mul-float/2addr v14, v1

    .line 336
    div-float/2addr v14, v8

    .line 337
    float-to-double v7, v14

    .line 338
    add-double v7, v7, v19

    .line 340
    double-to-int v14, v7

    .line 341
    goto :goto_2

    .line 342
    :cond_17
    mul-float v17, v17, v1

    .line 344
    cmpg-float v7, v17, v8

    .line 346
    if-gez v7, :cond_18

    .line 348
    int-to-float v7, v10

    .line 349
    mul-float/2addr v7, v8

    .line 350
    div-float/2addr v7, v1

    .line 351
    float-to-double v7, v7

    .line 352
    add-double v7, v7, v19

    .line 354
    double-to-int v10, v7

    .line 355
    :cond_18
    :goto_2
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 357
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 359
    iput v7, v1, Landroid/view/DisplayInfo;->type:I

    .line 361
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 363
    iput-object v7, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 365
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 367
    iput-object v7, v1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 369
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 371
    iput-object v7, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 373
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 375
    iput-object v7, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 377
    iput v10, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 379
    iput v14, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 381
    iput v10, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 383
    iput v14, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 385
    iput v5, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 387
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 389
    iput v7, v1, Landroid/view/DisplayInfo;->modeId:I

    .line 391
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 393
    iput v7, v1, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 395
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 397
    iput v7, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 399
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 401
    iput v7, v1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 403
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 405
    array-length v8, v7

    .line 406
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 409
    move-result-object v7

    .line 410
    check-cast v7, [Landroid/view/Display$Mode;

    .line 412
    iput-object v7, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 414
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 416
    iget-object v7, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 418
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    iget-boolean v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 423
    if-nez v4, :cond_19

    .line 425
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 427
    if-eqz v4, :cond_20

    .line 429
    :cond_19
    move-object/from16 v4, p2

    .line 431
    iget-boolean v4, v4, Lcom/android/server/display/mode/SyntheticModeManager;->mSynthetic60HzModesEnabled:Z

    .line 433
    if-nez v4, :cond_1a

    .line 435
    goto/16 :goto_5

    .line 437
    :cond_1a
    new-instance v4, Ljava/util/ArrayList;

    .line 439
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 442
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 444
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 447
    array-length v13, v7

    .line 448
    move v3, v5

    .line 449
    move v11, v3

    .line 450
    :goto_3
    if-ge v11, v13, :cond_1e

    .line 452
    aget-object v12, v7, v11

    .line 454
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 457
    move-result v21

    .line 458
    const v22, 0x42700a3d    # 60.01f

    .line 461
    cmpl-float v21, v21, v22

    .line 463
    if-lez v21, :cond_1b

    .line 465
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_1b
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 471
    move-result v15

    .line 472
    if-le v15, v3, :cond_1c

    .line 474
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 477
    move-result v3

    .line 478
    :cond_1c
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getVsyncRate()F

    .line 481
    move-result v15

    .line 482
    const/high16 v22, 0x42700000    # 60.0f

    .line 484
    div-float v15, v15, v22

    .line 486
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 489
    move-result v5

    .line 490
    int-to-float v5, v5

    .line 491
    sub-float/2addr v15, v5

    .line 492
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 495
    move-result v5

    .line 496
    const v15, 0x3c23d70a    # 0.01f

    .line 499
    cmpg-float v5, v5, v15

    .line 501
    if-gez v5, :cond_1d

    .line 503
    new-instance v5, Landroid/util/Size;

    .line 505
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 508
    move-result v15

    .line 509
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 512
    move-result v6

    .line 513
    invoke-direct {v5, v15, v6}, Landroid/util/Size;-><init>(II)V

    .line 516
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    .line 519
    move-result-object v6

    .line 520
    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    .line 525
    const/4 v5, 0x0

    .line 526
    const/4 v6, 0x2

    .line 527
    const/4 v12, 0x1

    .line 528
    const/4 v15, 0x0

    .line 529
    goto :goto_3

    .line 530
    :cond_1e
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 533
    move-result-object v5

    .line 534
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 537
    move-result-object v5

    .line 538
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 541
    move-result v6

    .line 542
    if-eqz v6, :cond_1f

    .line 544
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 547
    move-result-object v6

    .line 548
    check-cast v6, Ljava/util/Map$Entry;

    .line 550
    add-int/lit8 v24, v3, 0x1

    .line 552
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 555
    move-result-object v7

    .line 556
    check-cast v7, Landroid/util/Size;

    .line 558
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 561
    move-result-object v6

    .line 562
    move-object/from16 v31, v6

    .line 564
    check-cast v31, [I

    .line 566
    new-instance v6, Landroid/view/Display$Mode;

    .line 568
    const/4 v8, 0x2

    .line 569
    add-int/2addr v3, v8

    .line 570
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 573
    move-result v25

    .line 574
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    .line 577
    move-result v26

    .line 578
    const/4 v7, 0x0

    .line 579
    new-array v11, v7, [F

    .line 581
    const/high16 v28, 0x42700000    # 60.0f

    .line 583
    const/16 v29, 0x1

    .line 585
    const/high16 v27, 0x42700000    # 60.0f

    .line 587
    move-object/from16 v23, v6

    .line 589
    move-object/from16 v30, v11

    .line 591
    invoke-direct/range {v23 .. v31}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 594
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    goto :goto_4

    .line 598
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 601
    move-result v3

    .line 602
    new-array v3, v3, [Landroid/view/Display$Mode;

    .line 604
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 607
    move-result-object v3

    .line 608
    move-object v7, v3

    .line 609
    check-cast v7, [Landroid/view/Display$Mode;

    .line 611
    :cond_20
    :goto_5
    iput-object v7, v1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 613
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 615
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 617
    iput v3, v1, Landroid/view/DisplayInfo;->colorMode:I

    .line 619
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 621
    array-length v4, v3

    .line 622
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 625
    move-result-object v3

    .line 626
    iput-object v3, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 628
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 630
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 632
    iput-object v3, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 634
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 636
    iput-object v3, v1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 638
    iget-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 640
    if-nez v3, :cond_22

    .line 642
    iget-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 644
    if-eqz v3, :cond_21

    .line 646
    goto :goto_6

    .line 647
    :cond_21
    const/4 v3, 0x0

    .line 648
    goto :goto_7

    .line 649
    :cond_22
    :goto_6
    const/4 v3, 0x1

    .line 650
    :goto_7
    iput-boolean v3, v1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 652
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 654
    iput v3, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 656
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 658
    iput v3, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 660
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 662
    iput v3, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 664
    iget-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 666
    iput-wide v3, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 668
    iget-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 670
    iput-wide v3, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 672
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 674
    iput v3, v1, Landroid/view/DisplayInfo;->state:I

    .line 676
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 678
    iput v3, v1, Landroid/view/DisplayInfo;->committedState:I

    .line 680
    iput v10, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 682
    iput v14, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 684
    iput v10, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 686
    iput v14, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 688
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 690
    iput v3, v1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 692
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 694
    iput-object v3, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 696
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 698
    and-int/lit16 v3, v3, 0x800

    .line 700
    if-eqz v3, :cond_23

    .line 702
    const/4 v3, 0x0

    .line 703
    goto :goto_8

    .line 704
    :cond_23
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 706
    :goto_8
    iput-object v3, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 708
    iput v9, v1, Landroid/view/DisplayInfo;->displayId:I

    .line 710
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 712
    iput v3, v1, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 714
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 716
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 719
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 721
    if-eqz v1, :cond_24

    .line 723
    array-length v3, v1

    .line 724
    const/4 v4, 0x0

    .line 725
    :goto_9
    if-ge v4, v3, :cond_24

    .line 727
    aget-object v5, v1, v4

    .line 729
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 731
    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 733
    iget v5, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 735
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 738
    move-result-object v5

    .line 739
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 742
    add-int/lit8 v4, v4, 0x1

    .line 744
    goto :goto_9

    .line 745
    :cond_24
    iget-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 747
    iput-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 749
    if-eqz v1, :cond_27

    .line 751
    array-length v3, v1

    .line 752
    const/4 v4, 0x0

    .line 753
    :goto_a
    if-ge v4, v3, :cond_27

    .line 755
    aget-object v5, v1, v4

    .line 757
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 759
    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 761
    const/4 v8, 0x0

    .line 762
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 765
    move-result-object v9

    .line 766
    invoke-virtual {v6, v7, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 769
    move-result-object v6

    .line 770
    check-cast v6, Ljava/lang/Float;

    .line 772
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 775
    move-result v6

    .line 776
    cmpl-float v7, v6, v8

    .line 778
    if-eqz v7, :cond_26

    .line 780
    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 782
    cmpl-float v6, v7, v6

    .line 784
    if-eqz v6, :cond_25

    .line 786
    goto :goto_b

    .line 787
    :cond_25
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 789
    iget v5, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 791
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 794
    goto :goto_c

    .line 795
    :cond_26
    :goto_b
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 797
    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 799
    iget v5, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 801
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 804
    move-result-object v5

    .line 805
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 810
    goto :goto_a

    .line 811
    :cond_27
    const/4 v1, 0x0

    .line 812
    :goto_d
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 814
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 817
    move-result v3

    .line 818
    if-ge v1, v3, :cond_28

    .line 820
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 822
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 824
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 827
    move-result v4

    .line 828
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 831
    move-result-object v4

    .line 832
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 835
    add-int/lit8 v1, v1, 0x1

    .line 837
    goto :goto_d

    .line 838
    :cond_28
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 840
    const/4 v3, 0x0

    .line 841
    iput v3, v1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 843
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 845
    iput v3, v1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 847
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 849
    iput v3, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 851
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 853
    iput v3, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 855
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 857
    iput-object v3, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 859
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 861
    iput v3, v1, Landroid/view/DisplayInfo;->installOrientation:I

    .line 863
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 865
    iput-object v3, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 867
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 869
    const/4 v4, 0x1

    .line 870
    if-ne v3, v4, :cond_29

    .line 872
    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 874
    or-int/lit16 v3, v3, 0x2008

    .line 876
    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 878
    iput v4, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 880
    :cond_29
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 882
    iput-object v3, v1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 884
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 886
    iput-object v3, v1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 888
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 890
    iput-object v3, v1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 892
    iput-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 894
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 896
    const/4 v3, 0x0

    .line 897
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 900
    const/4 v1, 0x0

    .line 901
    iput-boolean v1, v0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 903
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 905
    if-eqz v1, :cond_2a

    .line 907
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 909
    const/high16 v3, 0x40000000    # 2.0f

    .line 911
    and-int/2addr v1, v3

    .line 912
    if-eqz v1, :cond_2a

    .line 914
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 916
    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 918
    const v4, 0x8000

    .line 921
    or-int/2addr v3, v4

    .line 922
    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 924
    :cond_2a
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 926
    const/high16 v3, 0x800000

    .line 928
    and-int/2addr v3, v1

    .line 929
    if-eqz v3, :cond_2b

    .line 931
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 933
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 935
    const/high16 v5, 0x40000

    .line 937
    or-int/2addr v4, v5

    .line 938
    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 940
    :cond_2b
    const/high16 v3, 0x400000

    .line 942
    and-int/2addr v3, v1

    .line 943
    if-eqz v3, :cond_2c

    .line 945
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 947
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 949
    const/high16 v5, 0x80000

    .line 951
    or-int/2addr v4, v5

    .line 952
    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 954
    :cond_2c
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 956
    if-eqz v3, :cond_2d

    .line 958
    const/high16 v3, -0x80000000

    .line 960
    and-int/2addr v3, v1

    .line 961
    if-eqz v3, :cond_2d

    .line 963
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 965
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 967
    const/high16 v5, 0x100000

    .line 969
    or-int/2addr v4, v5

    .line 970
    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 972
    :cond_2d
    const/high16 v3, 0x2000000

    .line 974
    and-int v4, v1, v3

    .line 976
    if-eqz v4, :cond_2e

    .line 978
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 980
    iget v5, v4, Landroid/view/DisplayInfo;->flags:I

    .line 982
    or-int/2addr v3, v5

    .line 983
    iput v3, v4, Landroid/view/DisplayInfo;->flags:I

    .line 985
    :cond_2e
    const/high16 v3, 0x10000000

    .line 987
    and-int v4, v1, v3

    .line 989
    if-eqz v4, :cond_31

    .line 991
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 993
    iget v5, v4, Landroid/view/DisplayInfo;->flags:I

    .line 995
    or-int/2addr v3, v5

    .line 996
    iput v3, v4, Landroid/view/DisplayInfo;->flags:I

    .line 998
    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 1000
    const/4 v3, 0x1

    .line 1001
    if-eq v2, v3, :cond_30

    .line 1003
    const/4 v5, 0x3

    .line 1004
    if-ne v2, v5, :cond_2f

    .line 1006
    goto :goto_f

    .line 1007
    :cond_2f
    :goto_e
    const/4 v2, 0x0

    .line 1008
    goto :goto_10

    .line 1009
    :cond_30
    :goto_f
    iput v3, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 1011
    goto :goto_e

    .line 1012
    :goto_10
    iput v2, v4, Landroid/view/DisplayInfo;->refreshRateMode:I

    .line 1014
    :cond_31
    const/high16 v2, 0x20000000

    .line 1016
    and-int v3, v1, v2

    .line 1018
    if-eqz v3, :cond_32

    .line 1020
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 1022
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 1024
    or-int/2addr v2, v4

    .line 1025
    iput v2, v3, Landroid/view/DisplayInfo;->flags:I

    .line 1027
    :cond_32
    const/high16 v2, 0x8000000

    .line 1029
    and-int v3, v1, v2

    .line 1031
    if-eqz v3, :cond_33

    .line 1033
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 1035
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 1037
    or-int/2addr v2, v4

    .line 1038
    iput v2, v3, Landroid/view/DisplayInfo;->flags:I

    .line 1040
    :cond_33
    const/high16 v2, 0x4000000

    .line 1042
    and-int/2addr v1, v2

    .line 1043
    if-eqz v1, :cond_34

    .line 1045
    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 1047
    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 1049
    or-int/2addr v1, v2

    .line 1050
    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 1052
    :cond_34
    :goto_11
    return-void
.end method
