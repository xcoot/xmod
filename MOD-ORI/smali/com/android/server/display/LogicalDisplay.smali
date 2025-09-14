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

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(IILcom/android/server/display/DisplayDevice;ZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/DisplayInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 13
    .line 14
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput v2, p0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    .line 18
    .line 19
    new-instance v3, Lcom/android/server/display/DisplayInfoProxy;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    iput-object v4, v3, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 26
    .line 27
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 28
    .line 29
    new-array v3, v2, [I

    .line 30
    .line 31
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 32
    .line 33
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 34
    .line 35
    invoke-direct {v3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 39
    .line 40
    new-instance v3, Landroid/graphics/Point;

    .line 41
    .line 42
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 46
    .line 47
    new-instance v3, Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 53
    .line 54
    new-instance v3, Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 60
    .line 61
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 62
    .line 63
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 64
    .line 65
    new-instance v1, Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 71
    .line 72
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 73
    .line 74
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 75
    .line 76
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 77
    .line 78
    new-instance p1, Landroid/util/ArraySet;

    .line 79
    .line 80
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 84
    .line 85
    new-instance p1, Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 94
    .line 95
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 96
    .line 97
    const-string/jumbo p1, "default"

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 103
    .line 104
    iput-object p1, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 105
    .line 106
    iput-boolean p4, p0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    .line 107
    .line 108
    iput-boolean p5, p0, Lcom/android/server/display/LogicalDisplay;->mAlwaysRotateDisplayDeviceEnabled:Z

    .line 109
    .line 110
    return-void
.end method

.method public static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "mDisplayId="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 10
    .line 11
    const-string/jumbo v2, "mIsEnabled="

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 19
    .line 20
    const-string/jumbo v2, "mIsInTransition="

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 28
    .line 29
    const-string/jumbo v2, "mLayerStack="

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 37
    .line 38
    const-string/jumbo v2, "mPosition="

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 46
    .line 47
    const-string/jumbo v2, "mHasContent="

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 55
    .line 56
    const-string/jumbo v2, "mDesiredDisplayModeSpecs={"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string/jumbo v1, "}"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v1, "mRequestedColorMode="

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 90
    .line 91
    const-string/jumbo v2, "mDisplayOffset=("

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ")"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string/jumbo v1, "mDisplayScalingDisabled="

    .line 128
    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 134
    .line 135
    const-string/jumbo v2, "mPrimaryDisplayDevice="

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 143
    .line 144
    if-eqz v1, :cond_0

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    const-string/jumbo v1, "null"

    .line 154
    .line 155
    .line 156
    :goto_0
    const-string/jumbo v2, "mBaseDisplayInfo="

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string/jumbo v1, "mOverrideDisplayInfo="

    .line 178
    .line 179
    .line 180
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    .line 198
    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 204
    .line 205
    const-string/jumbo v2, "mFrameRateOverrides="

    .line 206
    .line 207
    .line 208
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 213
    .line 214
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    .line 231
    .line 232
    .line 233
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string/jumbo v1, "mDisplayGroupName="

    .line 251
    .line 252
    .line 253
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    .line 257
    .line 258
    const-string/jumbo v2, "mThermalBrightnessThrottlingDataId="

    .line 259
    .line 260
    .line 261
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 266
    .line 267
    const-string/jumbo v2, "mLeadDisplayId="

    .line 268
    .line 269
    .line 270
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 275
    .line 276
    const-string/jumbo v2, "mLayoutLimitedRefreshRate="

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string/jumbo v1, "mThermalRefreshRateThrottling="

    .line 298
    .line 299
    .line 300
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string/jumbo v1, "mPowerThrottlingDataId="

    .line 318
    .line 319
    .line 320
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 326
    .line 327
    .line 328
    return-void
.end method

.method public final getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 4
    .line 5
    if-nez v1, :cond_2

    .line 6
    .line 7
    new-instance v1, Landroid/view/DisplayInfo;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 17
    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget v2, v3, Landroid/view/DisplayInfo;->appWidth:I

    .line 22
    .line 23
    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 24
    .line 25
    iget v2, v3, Landroid/view/DisplayInfo;->appHeight:I

    .line 26
    .line 27
    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 28
    .line 29
    iget v2, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 30
    .line 31
    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 32
    .line 33
    iget v2, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 34
    .line 35
    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 36
    .line 37
    iget v2, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 38
    .line 39
    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 40
    .line 41
    iget v2, v3, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 42
    .line 43
    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 44
    .line 45
    iget v2, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 46
    .line 47
    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 48
    .line 49
    iget v2, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 50
    .line 51
    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 52
    .line 53
    iget v2, v3, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 54
    .line 55
    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 56
    .line 57
    iget v2, v3, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 58
    .line 59
    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 60
    .line 61
    iget v2, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 62
    .line 63
    iput v2, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 64
    .line 65
    iget-object v2, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 66
    .line 67
    iput-object v2, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 68
    .line 69
    iget v2, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 70
    .line 71
    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 72
    .line 73
    iget-object v2, v3, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 74
    .line 75
    iput-object v2, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 76
    .line 77
    iget-object v2, v3, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 78
    .line 79
    iput-object v2, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 80
    .line 81
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    .line 86
    .line 87
    iput p0, v1, Landroid/view/DisplayInfo;->refreshRateMode:I

    .line 88
    .line 89
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object p0, v0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 93
    .line 94
    return-object p0
.end method

.method public final setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 9
    .line 10
    sget-object v2, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final setUserDisabledHdrTypes([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    .line 9
    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/PrintWriter;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v3, v1, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 11
    .line 12
    check-cast v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 38
    .line 39
    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    iget-boolean v5, v0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 46
    .line 47
    if-nez v5, :cond_2

    .line 48
    .line 49
    goto/16 :goto_11

    .line 50
    .line 51
    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MD_DEX_WIRELESS:Z

    .line 52
    .line 53
    const/4 v6, 0x2

    .line 54
    const/high16 v7, 0x20000000

    .line 55
    .line 56
    const/high16 v8, 0x4000000

    .line 57
    .line 58
    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 59
    .line 60
    if-eqz v5, :cond_5

    .line 61
    .line 62
    if-ne v9, v6, :cond_5

    .line 63
    .line 64
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 65
    .line 66
    check-cast v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lcom/android/server/display/DisplayDevice;

    .line 83
    .line 84
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 89
    .line 90
    and-int/2addr v5, v8

    .line 91
    if-eqz v5, :cond_3

    .line 92
    .line 93
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 94
    .line 95
    const v5, -0x20000001

    .line 96
    .line 97
    .line 98
    and-int/2addr v1, v5

    .line 99
    iput v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 103
    .line 104
    or-int/2addr v1, v7

    .line 105
    iput v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 106
    .line 107
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 108
    .line 109
    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 110
    .line 111
    iput v5, v1, Landroid/view/DisplayInfo;->layerStack:I

    .line 112
    .line 113
    const/4 v5, 0x0

    .line 114
    iput v5, v1, Landroid/view/DisplayInfo;->flags:I

    .line 115
    .line 116
    iput v5, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 117
    .line 118
    iget v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 119
    .line 120
    and-int/lit8 v11, v10, 0x8

    .line 121
    .line 122
    const/4 v12, 0x1

    .line 123
    if-eqz v11, :cond_6

    .line 124
    .line 125
    iput v12, v1, Landroid/view/DisplayInfo;->flags:I

    .line 126
    .line 127
    :cond_6
    and-int/lit8 v11, v10, 0x4

    .line 128
    .line 129
    if-eqz v11, :cond_7

    .line 130
    .line 131
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 132
    .line 133
    or-int/2addr v11, v6

    .line 134
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 135
    .line 136
    :cond_7
    and-int/lit8 v11, v10, 0x10

    .line 137
    .line 138
    if-eqz v11, :cond_8

    .line 139
    .line 140
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 141
    .line 142
    or-int/lit8 v11, v11, 0x4

    .line 143
    .line 144
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 145
    .line 146
    iput v12, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 147
    .line 148
    :cond_8
    and-int/lit16 v11, v10, 0x400

    .line 149
    .line 150
    if-eqz v11, :cond_9

    .line 151
    .line 152
    iput v12, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 153
    .line 154
    :cond_9
    if-nez v9, :cond_a

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_a
    if-ne v9, v12, :cond_b

    .line 158
    .line 159
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 160
    .line 161
    or-int/lit8 v11, v11, 0x8

    .line 162
    .line 163
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_b
    and-int/lit8 v11, v10, 0x40

    .line 167
    .line 168
    if-eqz v11, :cond_c

    .line 169
    .line 170
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 171
    .line 172
    or-int/lit8 v11, v11, 0x8

    .line 173
    .line 174
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 175
    .line 176
    :cond_c
    :goto_1
    and-int/lit16 v11, v10, 0x100

    .line 177
    .line 178
    if-eqz v11, :cond_d

    .line 179
    .line 180
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 181
    .line 182
    or-int/lit8 v11, v11, 0x10

    .line 183
    .line 184
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 185
    .line 186
    :cond_d
    and-int/lit16 v11, v10, 0x200

    .line 187
    .line 188
    if-eqz v11, :cond_e

    .line 189
    .line 190
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 191
    .line 192
    or-int/lit8 v11, v11, 0x20

    .line 193
    .line 194
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 195
    .line 196
    :cond_e
    and-int/lit16 v11, v10, 0x1000

    .line 197
    .line 198
    if-eqz v11, :cond_f

    .line 199
    .line 200
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 201
    .line 202
    or-int/lit8 v11, v11, 0x40

    .line 203
    .line 204
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 205
    .line 206
    :cond_f
    and-int/lit16 v11, v10, 0x2000

    .line 207
    .line 208
    if-eqz v11, :cond_10

    .line 209
    .line 210
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 211
    .line 212
    or-int/lit16 v11, v11, 0x80

    .line 213
    .line 214
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 215
    .line 216
    :cond_10
    and-int/lit16 v11, v10, 0x4000

    .line 217
    .line 218
    if-eqz v11, :cond_11

    .line 219
    .line 220
    iget v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 221
    .line 222
    or-int/lit16 v11, v11, 0x100

    .line 223
    .line 224
    iput v11, v1, Landroid/view/DisplayInfo;->flags:I

    .line 225
    .line 226
    :cond_11
    const v11, 0x8000

    .line 227
    .line 228
    .line 229
    and-int v13, v10, v11

    .line 230
    .line 231
    if-eqz v13, :cond_12

    .line 232
    .line 233
    iget v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 234
    .line 235
    or-int/lit16 v13, v13, 0x200

    .line 236
    .line 237
    iput v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 238
    .line 239
    :cond_12
    and-int/lit8 v13, v10, 0x2

    .line 240
    .line 241
    if-eqz v13, :cond_13

    .line 242
    .line 243
    iget v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 244
    .line 245
    or-int/lit16 v13, v13, 0x4000

    .line 246
    .line 247
    iput v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 248
    .line 249
    :cond_13
    const/high16 v13, 0x10000

    .line 250
    .line 251
    and-int/2addr v13, v10

    .line 252
    if-eqz v13, :cond_14

    .line 253
    .line 254
    iget v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 255
    .line 256
    or-int/lit16 v13, v13, 0x400

    .line 257
    .line 258
    iput v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 259
    .line 260
    :cond_14
    const/high16 v13, 0x20000

    .line 261
    .line 262
    and-int/2addr v13, v10

    .line 263
    if-eqz v13, :cond_15

    .line 264
    .line 265
    iget v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 266
    .line 267
    or-int/lit16 v13, v13, 0x800

    .line 268
    .line 269
    iput v13, v1, Landroid/view/DisplayInfo;->flags:I

    .line 270
    .line 271
    :cond_15
    const/high16 v13, 0x80000

    .line 272
    .line 273
    and-int/2addr v10, v13

    .line 274
    if-eqz v10, :cond_16

    .line 275
    .line 276
    iget v10, v1, Landroid/view/DisplayInfo;->flags:I

    .line 277
    .line 278
    or-int/lit16 v10, v10, 0x1000

    .line 279
    .line 280
    iput v10, v1, Landroid/view/DisplayInfo;->flags:I

    .line 281
    .line 282
    :cond_16
    invoke-static {v2}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iget v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 287
    .line 288
    iget v14, v1, Landroid/graphics/Rect;->left:I

    .line 289
    .line 290
    sub-int/2addr v10, v14

    .line 291
    iget v14, v1, Landroid/graphics/Rect;->right:I

    .line 292
    .line 293
    sub-int/2addr v10, v14

    .line 294
    iget v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 295
    .line 296
    iget v15, v1, Landroid/graphics/Rect;->top:I

    .line 297
    .line 298
    sub-int/2addr v14, v15

    .line 299
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 300
    .line 301
    sub-int/2addr v14, v1

    .line 302
    iget-boolean v1, v0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    .line 303
    .line 304
    const/4 v15, 0x0

    .line 305
    if-eqz v1, :cond_18

    .line 306
    .line 307
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 308
    .line 309
    if-ne v1, v6, :cond_18

    .line 310
    .line 311
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 312
    .line 313
    cmpl-float v16, v1, v15

    .line 314
    .line 315
    if-lez v16, :cond_18

    .line 316
    .line 317
    iget v8, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 318
    .line 319
    cmpl-float v17, v8, v15

    .line 320
    .line 321
    if-lez v17, :cond_18

    .line 322
    .line 323
    const v17, 0x3f833333    # 1.025f

    .line 324
    .line 325
    .line 326
    mul-float v18, v8, v17

    .line 327
    .line 328
    cmpl-float v18, v1, v18

    .line 329
    .line 330
    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    .line 331
    .line 332
    if-lez v18, :cond_17

    .line 333
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

    .line 339
    .line 340
    double-to-int v14, v7

    .line 341
    goto :goto_2

    .line 342
    :cond_17
    mul-float v17, v17, v1

    .line 343
    .line 344
    cmpg-float v7, v17, v8

    .line 345
    .line 346
    if-gez v7, :cond_18

    .line 347
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

    .line 353
    .line 354
    double-to-int v10, v7

    .line 355
    :cond_18
    :goto_2
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 356
    .line 357
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 358
    .line 359
    iput v7, v1, Landroid/view/DisplayInfo;->type:I

    .line 360
    .line 361
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 362
    .line 363
    iput-object v7, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 364
    .line 365
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 366
    .line 367
    iput-object v7, v1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 368
    .line 369
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 370
    .line 371
    iput-object v7, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 372
    .line 373
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 374
    .line 375
    iput-object v7, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 376
    .line 377
    iput v10, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 378
    .line 379
    iput v14, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 380
    .line 381
    iput v10, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 382
    .line 383
    iput v14, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 384
    .line 385
    iput v5, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 386
    .line 387
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 388
    .line 389
    iput v7, v1, Landroid/view/DisplayInfo;->modeId:I

    .line 390
    .line 391
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 392
    .line 393
    iput v7, v1, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 394
    .line 395
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 396
    .line 397
    iput v7, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 398
    .line 399
    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 400
    .line 401
    iput v7, v1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 402
    .line 403
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 404
    .line 405
    array-length v8, v7

    .line 406
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    check-cast v7, [Landroid/view/Display$Mode;

    .line 411
    .line 412
    iput-object v7, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 413
    .line 414
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 415
    .line 416
    iget-object v7, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 417
    .line 418
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    iget-boolean v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 422
    .line 423
    if-nez v4, :cond_19

    .line 424
    .line 425
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 426
    .line 427
    if-eqz v4, :cond_20

    .line 428
    .line 429
    :cond_19
    move-object/from16 v4, p2

    .line 430
    .line 431
    iget-boolean v4, v4, Lcom/android/server/display/mode/SyntheticModeManager;->mSynthetic60HzModesEnabled:Z

    .line 432
    .line 433
    if-nez v4, :cond_1a

    .line 434
    .line 435
    goto/16 :goto_5

    .line 436
    .line 437
    :cond_1a
    new-instance v4, Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .line 441
    .line 442
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 443
    .line 444
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 445
    .line 446
    .line 447
    array-length v13, v7

    .line 448
    move v3, v5

    .line 449
    move v11, v3

    .line 450
    :goto_3
    if-ge v11, v13, :cond_1e

    .line 451
    .line 452
    aget-object v12, v7, v11

    .line 453
    .line 454
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 455
    .line 456
    .line 457
    move-result v21

    .line 458
    const v22, 0x42700a3d    # 60.01f

    .line 459
    .line 460
    .line 461
    cmpl-float v21, v21, v22

    .line 462
    .line 463
    if-lez v21, :cond_1b

    .line 464
    .line 465
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    :cond_1b
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 469
    .line 470
    .line 471
    move-result v15

    .line 472
    if-le v15, v3, :cond_1c

    .line 473
    .line 474
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    :cond_1c
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getVsyncRate()F

    .line 479
    .line 480
    .line 481
    move-result v15

    .line 482
    const/high16 v22, 0x42700000    # 60.0f

    .line 483
    .line 484
    div-float v15, v15, v22

    .line 485
    .line 486
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    int-to-float v5, v5

    .line 491
    sub-float/2addr v15, v5

    .line 492
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    const v15, 0x3c23d70a    # 0.01f

    .line 497
    .line 498
    .line 499
    cmpg-float v5, v5, v15

    .line 500
    .line 501
    if-gez v5, :cond_1d

    .line 502
    .line 503
    new-instance v5, Landroid/util/Size;

    .line 504
    .line 505
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 506
    .line 507
    .line 508
    move-result v15

    .line 509
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    invoke-direct {v5, v15, v6}, Landroid/util/Size;-><init>(II)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    .line 524
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

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    if-eqz v6, :cond_1f

    .line 543
    .line 544
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    check-cast v6, Ljava/util/Map$Entry;

    .line 549
    .line 550
    add-int/lit8 v24, v3, 0x1

    .line 551
    .line 552
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    check-cast v7, Landroid/util/Size;

    .line 557
    .line 558
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    move-object/from16 v31, v6

    .line 563
    .line 564
    check-cast v31, [I

    .line 565
    .line 566
    new-instance v6, Landroid/view/Display$Mode;

    .line 567
    .line 568
    const/4 v8, 0x2

    .line 569
    add-int/2addr v3, v8

    .line 570
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 571
    .line 572
    .line 573
    move-result v25

    .line 574
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    .line 575
    .line 576
    .line 577
    move-result v26

    .line 578
    const/4 v7, 0x0

    .line 579
    new-array v11, v7, [F

    .line 580
    .line 581
    const/high16 v28, 0x42700000    # 60.0f

    .line 582
    .line 583
    const/16 v29, 0x1

    .line 584
    .line 585
    const/high16 v27, 0x42700000    # 60.0f

    .line 586
    .line 587
    move-object/from16 v23, v6

    .line 588
    .line 589
    move-object/from16 v30, v11

    .line 590
    .line 591
    invoke-direct/range {v23 .. v31}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    goto :goto_4

    .line 598
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    new-array v3, v3, [Landroid/view/Display$Mode;

    .line 603
    .line 604
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    move-object v7, v3

    .line 609
    check-cast v7, [Landroid/view/Display$Mode;

    .line 610
    .line 611
    :cond_20
    :goto_5
    iput-object v7, v1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 612
    .line 613
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 614
    .line 615
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 616
    .line 617
    iput v3, v1, Landroid/view/DisplayInfo;->colorMode:I

    .line 618
    .line 619
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 620
    .line 621
    array-length v4, v3

    .line 622
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    iput-object v3, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 627
    .line 628
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 629
    .line 630
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 631
    .line 632
    iput-object v3, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 633
    .line 634
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 635
    .line 636
    iput-object v3, v1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 637
    .line 638
    iget-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 639
    .line 640
    if-nez v3, :cond_22

    .line 641
    .line 642
    iget-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 643
    .line 644
    if-eqz v3, :cond_21

    .line 645
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

    .line 651
    .line 652
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 653
    .line 654
    iput v3, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 655
    .line 656
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 657
    .line 658
    iput v3, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 659
    .line 660
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 661
    .line 662
    iput v3, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 663
    .line 664
    iget-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 665
    .line 666
    iput-wide v3, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 667
    .line 668
    iget-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 669
    .line 670
    iput-wide v3, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 671
    .line 672
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 673
    .line 674
    iput v3, v1, Landroid/view/DisplayInfo;->state:I

    .line 675
    .line 676
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 677
    .line 678
    iput v3, v1, Landroid/view/DisplayInfo;->committedState:I

    .line 679
    .line 680
    iput v10, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 681
    .line 682
    iput v14, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 683
    .line 684
    iput v10, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 685
    .line 686
    iput v14, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 687
    .line 688
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 689
    .line 690
    iput v3, v1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 691
    .line 692
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 693
    .line 694
    iput-object v3, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 695
    .line 696
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 697
    .line 698
    and-int/lit16 v3, v3, 0x800

    .line 699
    .line 700
    if-eqz v3, :cond_23

    .line 701
    .line 702
    const/4 v3, 0x0

    .line 703
    goto :goto_8

    .line 704
    :cond_23
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 705
    .line 706
    :goto_8
    iput-object v3, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 707
    .line 708
    iput v9, v1, Landroid/view/DisplayInfo;->displayId:I

    .line 709
    .line 710
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 711
    .line 712
    iput v3, v1, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 713
    .line 714
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 715
    .line 716
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 717
    .line 718
    .line 719
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 720
    .line 721
    if-eqz v1, :cond_24

    .line 722
    .line 723
    array-length v3, v1

    .line 724
    const/4 v4, 0x0

    .line 725
    :goto_9
    if-ge v4, v3, :cond_24

    .line 726
    .line 727
    aget-object v5, v1, v4

    .line 728
    .line 729
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 730
    .line 731
    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 732
    .line 733
    iget v5, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 734
    .line 735
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 740
    .line 741
    .line 742
    add-int/lit8 v4, v4, 0x1

    .line 743
    .line 744
    goto :goto_9

    .line 745
    :cond_24
    iget-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 746
    .line 747
    iput-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 748
    .line 749
    if-eqz v1, :cond_27

    .line 750
    .line 751
    array-length v3, v1

    .line 752
    const/4 v4, 0x0

    .line 753
    :goto_a
    if-ge v4, v3, :cond_27

    .line 754
    .line 755
    aget-object v5, v1, v4

    .line 756
    .line 757
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 758
    .line 759
    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 760
    .line 761
    const/4 v8, 0x0

    .line 762
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 763
    .line 764
    .line 765
    move-result-object v9

    .line 766
    invoke-virtual {v6, v7, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    check-cast v6, Ljava/lang/Float;

    .line 771
    .line 772
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 773
    .line 774
    .line 775
    move-result v6

    .line 776
    cmpl-float v7, v6, v8

    .line 777
    .line 778
    if-eqz v7, :cond_26

    .line 779
    .line 780
    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 781
    .line 782
    cmpl-float v6, v7, v6

    .line 783
    .line 784
    if-eqz v6, :cond_25

    .line 785
    .line 786
    goto :goto_b

    .line 787
    :cond_25
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 788
    .line 789
    iget v5, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 790
    .line 791
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 792
    .line 793
    .line 794
    goto :goto_c

    .line 795
    :cond_26
    :goto_b
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 796
    .line 797
    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    .line 798
    .line 799
    iget v5, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 800
    .line 801
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 802
    .line 803
    .line 804
    move-result-object v5

    .line 805
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 806
    .line 807
    .line 808
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 809
    .line 810
    goto :goto_a

    .line 811
    :cond_27
    const/4 v1, 0x0

    .line 812
    :goto_d
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 813
    .line 814
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    if-ge v1, v3, :cond_28

    .line 819
    .line 820
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 821
    .line 822
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 823
    .line 824
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 825
    .line 826
    .line 827
    move-result v4

    .line 828
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 829
    .line 830
    .line 831
    move-result-object v4

    .line 832
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    add-int/lit8 v1, v1, 0x1

    .line 836
    .line 837
    goto :goto_d

    .line 838
    :cond_28
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 839
    .line 840
    const/4 v3, 0x0

    .line 841
    iput v3, v1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 842
    .line 843
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 844
    .line 845
    iput v3, v1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 846
    .line 847
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 848
    .line 849
    iput v3, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 850
    .line 851
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 852
    .line 853
    iput v3, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 854
    .line 855
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 856
    .line 857
    iput-object v3, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 858
    .line 859
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 860
    .line 861
    iput v3, v1, Landroid/view/DisplayInfo;->installOrientation:I

    .line 862
    .line 863
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 864
    .line 865
    iput-object v3, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 866
    .line 867
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 868
    .line 869
    const/4 v4, 0x1

    .line 870
    if-ne v3, v4, :cond_29

    .line 871
    .line 872
    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 873
    .line 874
    or-int/lit16 v3, v3, 0x2008

    .line 875
    .line 876
    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 877
    .line 878
    iput v4, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 879
    .line 880
    :cond_29
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 881
    .line 882
    iput-object v3, v1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 883
    .line 884
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 885
    .line 886
    iput-object v3, v1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 887
    .line 888
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 889
    .line 890
    iput-object v3, v1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 891
    .line 892
    iput-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 893
    .line 894
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 895
    .line 896
    const/4 v3, 0x0

    .line 897
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 898
    .line 899
    .line 900
    const/4 v1, 0x0

    .line 901
    iput-boolean v1, v0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 902
    .line 903
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 904
    .line 905
    if-eqz v1, :cond_2a

    .line 906
    .line 907
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 908
    .line 909
    const/high16 v3, 0x40000000    # 2.0f

    .line 910
    .line 911
    and-int/2addr v1, v3

    .line 912
    if-eqz v1, :cond_2a

    .line 913
    .line 914
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 915
    .line 916
    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 917
    .line 918
    const v4, 0x8000

    .line 919
    .line 920
    .line 921
    or-int/2addr v3, v4

    .line 922
    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 923
    .line 924
    :cond_2a
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 925
    .line 926
    const/high16 v3, 0x800000

    .line 927
    .line 928
    and-int/2addr v3, v1

    .line 929
    if-eqz v3, :cond_2b

    .line 930
    .line 931
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 932
    .line 933
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 934
    .line 935
    const/high16 v5, 0x40000

    .line 936
    .line 937
    or-int/2addr v4, v5

    .line 938
    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 939
    .line 940
    :cond_2b
    const/high16 v3, 0x400000

    .line 941
    .line 942
    and-int/2addr v3, v1

    .line 943
    if-eqz v3, :cond_2c

    .line 944
    .line 945
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 946
    .line 947
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 948
    .line 949
    const/high16 v5, 0x80000

    .line 950
    .line 951
    or-int/2addr v4, v5

    .line 952
    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 953
    .line 954
    :cond_2c
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 955
    .line 956
    if-eqz v3, :cond_2d

    .line 957
    .line 958
    const/high16 v3, -0x80000000

    .line 959
    .line 960
    and-int/2addr v3, v1

    .line 961
    if-eqz v3, :cond_2d

    .line 962
    .line 963
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 964
    .line 965
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 966
    .line 967
    const/high16 v5, 0x100000

    .line 968
    .line 969
    or-int/2addr v4, v5

    .line 970
    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 971
    .line 972
    :cond_2d
    const/high16 v3, 0x2000000

    .line 973
    .line 974
    and-int v4, v1, v3

    .line 975
    .line 976
    if-eqz v4, :cond_2e

    .line 977
    .line 978
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 979
    .line 980
    iget v5, v4, Landroid/view/DisplayInfo;->flags:I

    .line 981
    .line 982
    or-int/2addr v3, v5

    .line 983
    iput v3, v4, Landroid/view/DisplayInfo;->flags:I

    .line 984
    .line 985
    :cond_2e
    const/high16 v3, 0x10000000

    .line 986
    .line 987
    and-int v4, v1, v3

    .line 988
    .line 989
    if-eqz v4, :cond_31

    .line 990
    .line 991
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 992
    .line 993
    iget v5, v4, Landroid/view/DisplayInfo;->flags:I

    .line 994
    .line 995
    or-int/2addr v3, v5

    .line 996
    iput v3, v4, Landroid/view/DisplayInfo;->flags:I

    .line 997
    .line 998
    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 999
    .line 1000
    const/4 v3, 0x1

    .line 1001
    if-eq v2, v3, :cond_30

    .line 1002
    .line 1003
    const/4 v5, 0x3

    .line 1004
    if-ne v2, v5, :cond_2f

    .line 1005
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

    .line 1010
    .line 1011
    goto :goto_e

    .line 1012
    :goto_10
    iput v2, v4, Landroid/view/DisplayInfo;->refreshRateMode:I

    .line 1013
    .line 1014
    :cond_31
    const/high16 v2, 0x20000000

    .line 1015
    .line 1016
    and-int v3, v1, v2

    .line 1017
    .line 1018
    if-eqz v3, :cond_32

    .line 1019
    .line 1020
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 1021
    .line 1022
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 1023
    .line 1024
    or-int/2addr v2, v4

    .line 1025
    iput v2, v3, Landroid/view/DisplayInfo;->flags:I

    .line 1026
    .line 1027
    :cond_32
    const/high16 v2, 0x8000000

    .line 1028
    .line 1029
    and-int v3, v1, v2

    .line 1030
    .line 1031
    if-eqz v3, :cond_33

    .line 1032
    .line 1033
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 1034
    .line 1035
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 1036
    .line 1037
    or-int/2addr v2, v4

    .line 1038
    iput v2, v3, Landroid/view/DisplayInfo;->flags:I

    .line 1039
    .line 1040
    :cond_33
    const/high16 v2, 0x4000000

    .line 1041
    .line 1042
    and-int/2addr v1, v2

    .line 1043
    if-eqz v1, :cond_34

    .line 1044
    .line 1045
    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 1046
    .line 1047
    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 1048
    .line 1049
    or-int/2addr v1, v2

    .line 1050
    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 1051
    .line 1052
    :cond_34
    :goto_11
    return-void
.end method
