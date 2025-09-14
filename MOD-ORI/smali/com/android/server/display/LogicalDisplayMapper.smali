.class public final Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# static fields
.field public static final DEBUG:Z

.field public static final TIMEOUT_STATE_TRANSITION_MILLIS:I

.field public static sNextNonDefaultDisplayId:I


# instance fields
.field public mBootCompleted:Z

.field public mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field public final mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

.field public mDeviceState:I

.field public mDeviceStateToBeAppliedAfterBoot:I

.field public final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field public final mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

.field public final mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroupIdsByName:Landroid/util/ArrayMap;

.field public final mDisplayGroups:Landroid/util/SparseArray;

.field public final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field public final mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

.field public final mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

.field public final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field public mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

.field public mInteractive:Z

.field public final mListener:Lcom/android/server/display/DisplayManagerService$1;

.field public final mLogicalDisplays:Landroid/util/SparseArray;

.field public final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field public mNextNonDefaultGroupId:I

.field public mPendingDeviceState:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSingleDisplayDemoMode:Z

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public final mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

.field public final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field public final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field public final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

.field public final mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

.field public mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "LogicalDisplayMapper"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0xbb8

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x1f4

    .line 17
    .line 18
    :goto_0
    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->TIMEOUT_STATE_TRANSITION_MILLIS:I

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/DisplayManagerService$1;Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, p8}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>(Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/android/server/display/mode/SyntheticModeManager;

    .line 13
    .line 14
    invoke-direct {v1, p8}, Lcom/android/server/display/mode/SyntheticModeManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/view/DisplayInfo;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 26
    .line 27
    new-instance v2, Landroid/view/DisplayInfo;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 33
    .line 34
    new-instance v2, Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 40
    .line 41
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 42
    .line 43
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 47
    .line 48
    new-instance v2, Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 54
    .line 55
    new-instance v2, Landroid/util/SparseIntArray;

    .line 56
    .line 57
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 61
    .line 62
    new-instance v2, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 71
    .line 72
    new-instance v3, Landroid/util/SparseIntArray;

    .line 73
    .line 74
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 78
    .line 79
    new-instance v3, Landroid/util/SparseIntArray;

    .line 80
    .line 81
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 85
    .line 86
    new-instance v3, Landroid/util/SparseIntArray;

    .line 87
    .line 88
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 92
    .line 93
    new-instance v3, Landroid/util/SparseIntArray;

    .line 94
    .line 95
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 99
    .line 100
    new-instance v3, Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 106
    .line 107
    const/4 v3, 0x5

    .line 108
    iput v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 109
    .line 110
    new-instance v3, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    invoke-direct {v3, v4}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 114
    .line 115
    .line 116
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    .line 117
    .line 118
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 119
    .line 120
    const/4 v2, -0x1

    .line 121
    iput v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 122
    .line 123
    iput v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 124
    .line 125
    iput v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:I

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 129
    .line 130
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 131
    .line 132
    const-class p6, Landroid/os/PowerManager;

    .line 133
    .line 134
    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p6

    .line 138
    check-cast p6, Landroid/os/PowerManager;

    .line 139
    .line 140
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    .line 141
    .line 142
    invoke-virtual {p6}, Landroid/os/PowerManager;->isInteractive()Z

    .line 143
    .line 144
    .line 145
    move-result p6

    .line 146
    iput-boolean p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 147
    .line 148
    new-instance p6, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 149
    .line 150
    invoke-virtual {p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 151
    .line 152
    .line 153
    move-result-object p7

    .line 154
    invoke-direct {p6, p0, p7}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    .line 155
    .line 156
    .line 157
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 158
    .line 159
    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 160
    .line 161
    iput-object p5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    .line 162
    .line 163
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 164
    .line 165
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    .line 166
    .line 167
    const-string/jumbo p2, "persist.demo.singledisplay"

    .line 168
    .line 169
    .line 170
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    iput-boolean p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    const p3, 0x111024f

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    const p3, 0x10700cd

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    new-instance p3, Landroid/util/SparseBooleanArray;

    .line 198
    .line 199
    const/4 p5, 0x2

    .line 200
    invoke-direct {p3, p5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 201
    .line 202
    .line 203
    move p6, v2

    .line 204
    :goto_0
    const/4 p7, 0x1

    .line 205
    if-eqz p2, :cond_0

    .line 206
    .line 207
    array-length v3, p2

    .line 208
    if-ge p6, v3, :cond_0

    .line 209
    .line 210
    aget v3, p2, p6

    .line 211
    .line 212
    invoke-virtual {p3, v3, p7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 213
    .line 214
    .line 215
    add-int/lit8 p6, p6, 0x1

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_0
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const p2, 0x10700cc

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 232
    .line 233
    invoke-direct {p2, p5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 234
    .line 235
    .line 236
    :goto_1
    if-eqz p1, :cond_1

    .line 237
    .line 238
    array-length p3, p1

    .line 239
    if-ge v2, p3, :cond_1

    .line 240
    .line 241
    aget p3, p1, v2

    .line 242
    .line 243
    invoke-virtual {p2, p3, p7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 244
    .line 245
    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_1
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 250
    .line 251
    iget-object p1, p4, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    .line 252
    .line 253
    check-cast p1, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 259
    .line 260
    iput-object p8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 261
    .line 262
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 263
    .line 264
    return-void
.end method


# virtual methods
.method public final applyLayoutLocked()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Applying layout: "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", Previous layout: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "LogicalDisplayMapper"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x0

    .line 53
    move v3, v2

    .line 54
    :goto_0
    if-ge v3, v0, :cond_f

    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 59
    .line 60
    check-cast v4, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/server/display/layout/Layout$Display;

    .line 67
    .line 68
    iget-object v5, v4, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 69
    .line 70
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-nez v6, :cond_0

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v6, "applyLayoutLocked: The display device ("

    .line 81
    .line 82
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, "), is not available for the display state "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 94
    .line 95
    invoke-static {v4, v5, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_0
    iget v5, v4, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 101
    .line 102
    const/4 v7, 0x1

    .line 103
    invoke-virtual {p0, v5, v7}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    const/4 v9, 0x0

    .line 108
    if-nez v8, :cond_1

    .line 109
    .line 110
    invoke-virtual {p0, v9, v5}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    move v5, v7

    .line 115
    goto :goto_1

    .line 116
    :cond_1
    move v5, v2

    .line 117
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    iget v11, v8, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 122
    .line 123
    if-eq v8, v10, :cond_3

    .line 124
    .line 125
    if-nez v5, :cond_2

    .line 126
    .line 127
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 128
    .line 129
    if-eqz v5, :cond_2

    .line 130
    .line 131
    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    .line 132
    .line 133
    if-nez v11, :cond_2

    .line 134
    .line 135
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 136
    .line 137
    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 138
    .line 139
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DisplayUpdater;

    .line 140
    .line 141
    invoke-interface {v5, v7}, Lcom/android/server/wm/DisplayUpdater;->onDisplaySwitching(Z)V

    .line 142
    .line 143
    .line 144
    :cond_2
    iget-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 145
    .line 146
    invoke-virtual {v10, v5}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v8, v5}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iget v6, v8, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 158
    .line 159
    iget v10, v4, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    .line 160
    .line 161
    if-eq v6, v10, :cond_4

    .line 162
    .line 163
    iput v10, v8, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 164
    .line 165
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 166
    .line 167
    :cond_4
    iget v6, v4, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 168
    .line 169
    iget v10, v8, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 170
    .line 171
    if-eq v11, v10, :cond_5

    .line 172
    .line 173
    if-eq v11, v6, :cond_5

    .line 174
    .line 175
    iput v6, v8, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 176
    .line 177
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    iget-object v6, v4, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    if-eqz v10, :cond_6

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    iget-object v9, v5, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 190
    .line 191
    check-cast v9, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    move-object v9, v6

    .line 198
    check-cast v9, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 199
    .line 200
    :goto_2
    iget-object v6, v8, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 201
    .line 202
    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-nez v6, :cond_7

    .line 207
    .line 208
    iput-object v9, v8, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 209
    .line 210
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 211
    .line 212
    :cond_7
    const-string/jumbo v6, "default"

    .line 213
    .line 214
    .line 215
    iget-object v9, v4, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    .line 216
    .line 217
    if-nez v9, :cond_8

    .line 218
    .line 219
    move-object v9, v6

    .line 220
    :cond_8
    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 221
    .line 222
    check-cast v5, Ljava/util/HashMap;

    .line 223
    .line 224
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Landroid/util/SparseArray;

    .line 229
    .line 230
    if-nez v5, :cond_9

    .line 231
    .line 232
    new-instance v5, Landroid/util/SparseArray;

    .line 233
    .line 234
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 235
    .line 236
    .line 237
    :cond_9
    iget-object v9, v8, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 238
    .line 239
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    .line 240
    .line 241
    .line 242
    move-result v9

    .line 243
    if-nez v9, :cond_a

    .line 244
    .line 245
    iput-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 246
    .line 247
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 248
    .line 249
    :cond_a
    iget-boolean v5, v4, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 250
    .line 251
    invoke-virtual {p0, v8, v5}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 252
    .line 253
    .line 254
    iget-object v5, v4, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    .line 255
    .line 256
    if-nez v5, :cond_b

    .line 257
    .line 258
    move-object v5, v6

    .line 259
    :cond_b
    iget-object v9, v8, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-nez v9, :cond_c

    .line 266
    .line 267
    iput-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 268
    .line 269
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 270
    .line 271
    :cond_c
    iget-object v5, v4, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    .line 272
    .line 273
    if-nez v5, :cond_d

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_d
    move-object v6, v5

    .line 277
    :goto_3
    iget-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-nez v5, :cond_e

    .line 284
    .line 285
    iput-object v6, v8, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 286
    .line 287
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 288
    .line 289
    :cond_e
    iget-object v4, v4, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 290
    .line 291
    iput-object v4, v8, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    .line 292
    .line 293
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_f
    return-void
.end method

.method public final areAllTransitioningDisplaysOffLocked()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 19
    .line 20
    iget-boolean v5, v4, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v4, v4, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 34
    .line 35
    if-eq v4, v3, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v3
.end method

.method public final createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/display/LogicalDisplay;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    move-object v0, v6

    .line 18
    move v1, p2

    .line 19
    move v2, p2

    .line 20
    move-object v3, p1

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;ZZ)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 27
    .line 28
    invoke-virtual {v6, p1, v0}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    if-ne p1, v0, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-le p1, v0, :cond_0

    .line 49
    .line 50
    iget-boolean p1, v6, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iput-boolean v0, v6, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput-boolean p1, v6, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 58
    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {p0, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v6
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "LogicalDisplayMapper:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    const-string v1, "  "

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v1, "mSingleDisplayDemoMode="

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 25
    .line 26
    const-string/jumbo v2, "mCurrentLayout="

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v1, v0, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo v1, "mDeviceStatesOnWhichToWakeUp="

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v1, "mDeviceStatesOnWhichSelectiveSleep="

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v1, "mInteractive="

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 94
    .line 95
    const-string/jumbo v2, "mBootCompleted="

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v1, v0, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 115
    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string/jumbo v1, "mDeviceState="

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string/jumbo v1, "mPendingDeviceState="

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string/jumbo v1, "mDeviceStateToBeAppliedAfterBoot="

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:I

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 184
    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v2, "Logical Displays: size="

    .line 189
    .line 190
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/4 v1, 0x0

    .line 204
    move v2, v1

    .line 205
    :goto_0
    if-ge v2, p1, :cond_0

    .line 206
    .line 207
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 208
    .line 209
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 214
    .line 215
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 220
    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v6, "Display "

    .line 224
    .line 225
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v3, ":"

    .line 232
    .line 233
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 253
    .line 254
    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 259
    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    const-string p1, "DeviceStateToLayoutMap:"

    .line 264
    .line 265
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 269
    .line 270
    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string/jumbo v2, "mIsPortInDisplayLayoutEnabled="

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-boolean v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    .line 280
    .line 281
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string p1, "Registered Layouts:"

    .line 292
    .line 293
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-ge v1, p1, :cond_1

    .line 303
    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string/jumbo v2, "state("

    .line 307
    .line 308
    .line 309
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 313
    .line 314
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v2, "): "

    .line 322
    .line 323
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 327
    .line 328
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    add-int/lit8 v1, v1, 0x1

    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_1
    return-void
.end method

.method public final finishStateTransitionLocked(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    iget v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    move v0, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    move v0, v2

    .line 39
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 50
    .line 51
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_4

    .line 58
    .line 59
    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 64
    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string/jumbo v6, "stay_awake_on_fold_key"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_4

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string/jumbo v5, "selective_stay_awake_key"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move v4, v3

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    :goto_2
    move v4, v2

    .line 107
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    if-nez v0, :cond_5

    .line 114
    .line 115
    if-nez v4, :cond_5

    .line 116
    .line 117
    move v0, v3

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    move v0, v2

    .line 120
    :goto_4
    if-nez v0, :cond_7

    .line 121
    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_6
    sget-boolean v1, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 126
    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "Not yet ready to transition to state="

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, " with displays-off="

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, ", force="

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p1, ", mInteractive="

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 163
    .line 164
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p0, ", isReady="

    .line 168
    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    const-string p1, "LogicalDisplayMapper"

    .line 180
    .line 181
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_7
    :goto_5
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 186
    .line 187
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 188
    .line 189
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 190
    .line 191
    .line 192
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 193
    .line 194
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 195
    .line 196
    iput v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 205
    .line 206
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    .line 208
    .line 209
    :cond_8
    :goto_6
    return-void
.end method

.method public final forEachLocked(Ljava/util/function/Consumer;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 17
    .line 18
    iget-boolean v3, v2, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    iget v3, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, -0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/server/display/DisplayGroup;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 28
    .line 29
    check-cast v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return v0
.end method

.method public final getDisplayInfoForStateLocked(II)Landroid/view/DisplayInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "LogicalDisplayMapper"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, "Cannot get layout for given state:"

    .line 13
    .line 14
    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, "Cannot get display for given layout:"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    iget-object v0, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v3, "), is not available for the display state "

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "The display device ("

    .line 57
    .line 58
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 70
    .line 71
    invoke-static {p2, p0, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v0, "The logical display associated with address ("

    .line 84
    .line 85
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 97
    .line 98
    invoke-static {p2, p0, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_3
    new-instance p0, Landroid/view/DisplayInfo;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 109
    .line 110
    .line 111
    iput p2, p0, Landroid/view/DisplayInfo;->displayId:I

    .line 112
    .line 113
    return-object p0
.end method

.method public final getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LogicalDisplay;

    if-eqz p0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 5
    iget-object v4, v3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final resetLayoutLocked(IIZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    if-ge v2, v0, :cond_e

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 28
    .line 29
    iget v4, v3, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 30
    .line 31
    iget-object v5, v3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    goto/16 :goto_a

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-object v7, v6

    .line 52
    :goto_1
    if-eqz v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    :cond_2
    const/4 v5, 0x1

    .line 59
    if-nez v7, :cond_3

    .line 60
    .line 61
    move v8, v5

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v8, v1

    .line 64
    :goto_2
    if-nez v6, :cond_4

    .line 65
    .line 66
    move v9, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move v9, v1

    .line 69
    :goto_3
    if-eq v8, v9, :cond_5

    .line 70
    .line 71
    move v8, v5

    .line 72
    goto :goto_4

    .line 73
    :cond_5
    move v8, v1

    .line 74
    :goto_4
    if-eqz v7, :cond_7

    .line 75
    .line 76
    iget-boolean v9, v7, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 77
    .line 78
    if-eqz v9, :cond_6

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_6
    move v9, v1

    .line 82
    goto :goto_6

    .line 83
    :cond_7
    :goto_5
    move v9, v5

    .line 84
    :goto_6
    if-eqz v6, :cond_9

    .line 85
    .line 86
    iget-boolean v10, v6, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 87
    .line 88
    if-eqz v10, :cond_8

    .line 89
    .line 90
    goto :goto_7

    .line 91
    :cond_8
    move v10, v1

    .line 92
    goto :goto_8

    .line 93
    :cond_9
    :goto_7
    move v10, v5

    .line 94
    :goto_8
    if-eqz v7, :cond_a

    .line 95
    .line 96
    if-eqz v6, :cond_a

    .line 97
    .line 98
    iget v7, v7, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 99
    .line 100
    iget v6, v6, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 101
    .line 102
    if-eq v7, v6, :cond_a

    .line 103
    .line 104
    move v6, v5

    .line 105
    goto :goto_9

    .line 106
    :cond_a
    move v6, v1

    .line 107
    :goto_9
    iget-boolean v7, v3, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 108
    .line 109
    if-nez v7, :cond_b

    .line 110
    .line 111
    if-ne v9, v10, :cond_b

    .line 112
    .line 113
    if-nez v6, :cond_b

    .line 114
    .line 115
    if-eqz v8, :cond_d

    .line 116
    .line 117
    :cond_b
    if-eq p3, v7, :cond_c

    .line 118
    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v7, "Set isInTransition on display "

    .line 122
    .line 123
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v7, ": "

    .line 130
    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const-string v7, "LogicalDisplayMapper"

    .line 142
    .line 143
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_c
    iput-boolean p3, v3, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 147
    .line 148
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 149
    .line 150
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    .line 152
    .line 153
    :cond_d
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_e
    return-void
.end method

.method public final sendUpdatesForDisplaysLocked(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    sub-int/2addr v2, v3

    .line 13
    :goto_0
    if-ltz v2, :cond_28

    .line 14
    .line 15
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eq v4, v1, :cond_0

    .line 22
    .line 23
    move v5, v3

    .line 24
    goto/16 :goto_13

    .line 25
    .line 26
    :cond_0
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 27
    .line 28
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v0, v4, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    sget-boolean v6, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 37
    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    iget-object v6, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    const-string/jumbo v6, "null"

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v6, v6, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 49
    .line 50
    :goto_1
    const-string v8, "LogicalDisplayMapper"

    .line 51
    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v10, "Sending "

    .line 55
    .line 56
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    packed-switch v1, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    goto :goto_2

    .line 64
    :pswitch_0
    const-string/jumbo v10, "disconnected"

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :pswitch_1
    const-string/jumbo v10, "connected"

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_2
    const-string/jumbo v10, "hdr_sdr_ratio_changed"

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :pswitch_3
    const-string/jumbo v10, "transition"

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :pswitch_4
    const-string/jumbo v10, "framerate_override"

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :pswitch_5
    const-string/jumbo v10, "swapped"

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :pswitch_6
    const-string/jumbo v10, "removed"

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :pswitch_7
    const-string/jumbo v10, "changed"

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :pswitch_8
    const-string v10, "added"

    .line 97
    .line 98
    :goto_2
    const-string v11, " for display="

    .line 99
    .line 100
    const-string v12, " with device="

    .line 101
    .line 102
    invoke-static {v4, v10, v11, v12, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v9, v6, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 109
    .line 110
    iget-object v6, v6, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    const/4 v8, 0x3

    .line 117
    if-eqz v6, :cond_4

    .line 118
    .line 119
    if-ne v1, v3, :cond_3

    .line 120
    .line 121
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 122
    .line 123
    invoke-virtual {v6, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    if-ne v1, v8, :cond_4

    .line 128
    .line 129
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 130
    .line 131
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_3
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    const/4 v10, 0x5

    .line 138
    const/16 v11, 0x326

    .line 139
    .line 140
    const/4 v12, 0x7

    .line 141
    const/4 v13, 0x2

    .line 142
    const/4 v14, 0x6

    .line 143
    packed-switch v1, :pswitch_data_1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_4
    move v5, v3

    .line 150
    goto/16 :goto_12

    .line 151
    .line 152
    :pswitch_9
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 153
    .line 154
    iget-object v9, v6, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 155
    .line 156
    iget-object v9, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 157
    .line 158
    invoke-virtual {v9}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-nez v9, :cond_6

    .line 163
    .line 164
    const-string v5, "DisplayManagerService"

    .line 165
    .line 166
    const-string v6, "DisplayDisconnected shouldn\'t be received when the flag is off"

    .line 167
    .line 168
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_6
    invoke-virtual {v6, v5, v12}, Lcom/android/server/display/DisplayManagerService;->releaseDisplayAndEmitEvent(Lcom/android/server/display/LogicalDisplay;I)V

    .line 173
    .line 174
    .line 175
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 176
    .line 177
    iget-object v9, v6, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 178
    .line 179
    iget-object v9, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 180
    .line 181
    invoke-virtual {v9}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_7

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    iget v5, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 189
    .line 190
    iget-object v9, v6, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 191
    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    check-cast v9, Ljava/util/HashSet;

    .line 197
    .line 198
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-eqz v9, :cond_8

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_8
    iget-object v6, v6, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 206
    .line 207
    const-string/jumbo v9, "logStateDisconnected displayId="

    .line 208
    .line 209
    .line 210
    iget-object v10, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 211
    .line 212
    monitor-enter v10

    .line 213
    :try_start_0
    iget-object v12, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 214
    .line 215
    invoke-virtual {v12, v5, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    if-ne v12, v3, :cond_a

    .line 220
    .line 221
    sget-boolean v6, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 222
    .line 223
    if-eqz v6, :cond_9

    .line 224
    .line 225
    const-string v6, "ExternalDisplayStatsService"

    .line 226
    .line 227
    new-instance v11, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v5, " already disconnected"

    .line 236
    .line 237
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    goto :goto_6

    .line 250
    :cond_9
    :goto_5
    monitor-exit v10

    .line 251
    goto :goto_4

    .line 252
    :cond_a
    iget-object v9, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 253
    .line 254
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    iget-object v13, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 259
    .line 260
    invoke-virtual {v13, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 261
    .line 262
    .line 263
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v10, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 265
    .line 266
    iget-boolean v13, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 267
    .line 268
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {v11, v3, v9, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 272
    .line 273
    .line 274
    sget-boolean v10, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 275
    .line 276
    if-eqz v10, :cond_b

    .line 277
    .line 278
    const-string v10, "ExternalDisplayStatsService"

    .line 279
    .line 280
    const-string/jumbo v11, "logStateDisconnected displayId="

    .line 281
    .line 282
    .line 283
    const-string v13, " countOfExternalDisplays="

    .line 284
    .line 285
    const-string v14, " currentState="

    .line 286
    .line 287
    invoke-static {v5, v9, v11, v13, v14}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v11, " state=1 mIsExternalDisplayUsedForAudio="

    .line 295
    .line 296
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-boolean v11, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 300
    .line 301
    invoke-static {v10, v5, v11}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 302
    .line 303
    .line 304
    :cond_b
    if-ne v9, v3, :cond_5

    .line 305
    .line 306
    iget-object v5, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 307
    .line 308
    iget-object v5, v5, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 309
    .line 310
    new-instance v9, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    const/4 v10, 0x0

    .line 313
    invoke-direct {v9, v6, v10}, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    .line 318
    .line 319
    goto/16 :goto_4

    .line 320
    .line 321
    :goto_6
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    throw v0

    .line 323
    :pswitch_a
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 324
    .line 325
    iget-object v10, v6, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 326
    .line 327
    iget-object v10, v10, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 328
    .line 329
    invoke-virtual {v10}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 330
    .line 331
    .line 332
    move-result v10

    .line 333
    if-nez v10, :cond_c

    .line 334
    .line 335
    const-string v5, "DisplayManagerService"

    .line 336
    .line 337
    const-string v6, "DisplayConnected shouldn\'t be received when the flag is off"

    .line 338
    .line 339
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_4

    .line 343
    .line 344
    :cond_c
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->setupLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V

    .line 345
    .line 346
    .line 347
    invoke-static {v5}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-eqz v10, :cond_d

    .line 352
    .line 353
    iget-object v10, v6, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 354
    .line 355
    invoke-virtual {v10, v5}, Lcom/android/server/display/ExternalDisplayPolicy;->handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_d
    invoke-virtual {v6, v5, v14}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 360
    .line 361
    .line 362
    :goto_7
    iget-object v10, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 363
    .line 364
    invoke-virtual {v6, v10}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    if-eqz v10, :cond_e

    .line 369
    .line 370
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 371
    .line 372
    .line 373
    :cond_e
    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 374
    .line 375
    .line 376
    iget-boolean v9, v6, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 377
    .line 378
    if-eqz v9, :cond_5

    .line 379
    .line 380
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    iget v5, v5, Landroid/view/DisplayInfo;->type:I

    .line 385
    .line 386
    if-ne v5, v13, :cond_5

    .line 387
    .line 388
    iget-object v5, v6, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 389
    .line 390
    new-instance v9, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 391
    .line 392
    const/4 v10, 0x4

    .line 393
    invoke-direct {v9, v6, v10}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    .line 398
    .line 399
    iget-object v5, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 400
    .line 401
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDeviceRepository;->isDexDisplayDeviceEnabledLocked()V

    .line 402
    .line 403
    .line 404
    iput-boolean v3, v5, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 405
    .line 406
    goto/16 :goto_4

    .line 407
    .line 408
    :pswitch_b
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 409
    .line 410
    invoke-virtual {v6, v5, v10}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_4

    .line 414
    .line 415
    :pswitch_c
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 416
    .line 417
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    iget v10, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 421
    .line 422
    iget-object v11, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 423
    .line 424
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    check-cast v11, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 429
    .line 430
    if-eqz v11, :cond_5

    .line 431
    .line 432
    iget v12, v5, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 433
    .line 434
    sget-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 435
    .line 436
    if-eqz v13, :cond_f

    .line 437
    .line 438
    sget-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 439
    .line 440
    if-nez v14, :cond_f

    .line 441
    .line 442
    if-ne v10, v3, :cond_f

    .line 443
    .line 444
    iget v10, v6, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 445
    .line 446
    const/4 v14, -0x1

    .line 447
    if-ne v10, v14, :cond_f

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_f
    move v9, v12

    .line 451
    :goto_8
    invoke-virtual {v6, v11, v9}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerControllerInterface;I)V

    .line 452
    .line 453
    .line 454
    iget-object v10, v6, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    .line 455
    .line 456
    invoke-virtual {v10, v5}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 457
    .line 458
    .line 459
    move-result-object v10

    .line 460
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    if-nez v10, :cond_10

    .line 465
    .line 466
    if-eqz v13, :cond_5

    .line 467
    .line 468
    iget v5, v5, Landroid/view/DisplayInfo;->type:I

    .line 469
    .line 470
    if-ne v5, v3, :cond_5

    .line 471
    .line 472
    :cond_10
    iget v5, v6, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 473
    .line 474
    check-cast v11, Lcom/android/server/display/DisplayPowerController;

    .line 475
    .line 476
    invoke-virtual {v11, v10, v9, v5}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;II)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_4

    .line 480
    .line 481
    :pswitch_d
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 482
    .line 483
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    iget v5, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 487
    .line 488
    iget-object v10, v6, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 489
    .line 490
    invoke-virtual {v10, v12, v5, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    .line 496
    .line 497
    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_4

    .line 501
    .line 502
    :pswitch_e
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 503
    .line 504
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 505
    .line 506
    .line 507
    iget v9, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 508
    .line 509
    if-nez v9, :cond_11

    .line 510
    .line 511
    iget-object v5, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 512
    .line 513
    iget-object v5, v5, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 514
    .line 515
    iget-object v9, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 516
    .line 517
    invoke-virtual {v9, v5}, Lcom/android/server/display/mode/DisplayModeDirector;->defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 518
    .line 519
    .line 520
    :cond_11
    iget-object v5, v6, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 521
    .line 522
    invoke-virtual {v5, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 523
    .line 524
    .line 525
    goto/16 :goto_4

    .line 526
    .line 527
    :pswitch_f
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 528
    .line 529
    iget-object v9, v6, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 530
    .line 531
    iget-object v9, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 532
    .line 533
    invoke-virtual {v9}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 534
    .line 535
    .line 536
    move-result v9

    .line 537
    if-eqz v9, :cond_13

    .line 538
    .line 539
    iget-object v9, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 540
    .line 541
    if-eqz v9, :cond_12

    .line 542
    .line 543
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 544
    .line 545
    .line 546
    :cond_12
    invoke-virtual {v6, v5, v8}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 547
    .line 548
    .line 549
    iget-object v9, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 550
    .line 551
    if-eqz v9, :cond_5

    .line 552
    .line 553
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_4

    .line 557
    .line 558
    :cond_13
    invoke-virtual {v6, v5, v8}, Lcom/android/server/display/DisplayManagerService;->releaseDisplayAndEmitEvent(Lcom/android/server/display/LogicalDisplay;I)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_4

    .line 562
    .line 563
    :pswitch_10
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 564
    .line 565
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 566
    .line 567
    .line 568
    goto/16 :goto_4

    .line 569
    .line 570
    :pswitch_11
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 571
    .line 572
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    iget v12, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 576
    .line 577
    if-nez v12, :cond_14

    .line 578
    .line 579
    move v15, v3

    .line 580
    goto :goto_9

    .line 581
    :cond_14
    move v15, v9

    .line 582
    :goto_9
    iget-object v7, v6, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 583
    .line 584
    iget-object v7, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 585
    .line 586
    invoke-virtual {v7}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 587
    .line 588
    .line 589
    move-result v7

    .line 590
    if-nez v7, :cond_15

    .line 591
    .line 592
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->setupLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V

    .line 593
    .line 594
    .line 595
    :cond_15
    if-eqz v15, :cond_16

    .line 596
    .line 597
    iget-object v7, v6, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 598
    .line 599
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 600
    .line 601
    .line 602
    :cond_16
    invoke-virtual {v6, v5, v3}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 603
    .line 604
    .line 605
    iget-object v7, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 606
    .line 607
    invoke-virtual {v6, v7}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    .line 608
    .line 609
    .line 610
    move-result-object v7

    .line 611
    if-eqz v7, :cond_17

    .line 612
    .line 613
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 614
    .line 615
    .line 616
    :cond_17
    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 617
    .line 618
    .line 619
    iget-object v7, v6, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 620
    .line 621
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    invoke-static {v5}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 625
    .line 626
    .line 627
    move-result v15

    .line 628
    if-nez v15, :cond_18

    .line 629
    .line 630
    goto/16 :goto_11

    .line 631
    .line 632
    :cond_18
    iget-object v15, v7, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 633
    .line 634
    iget-object v15, v15, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 635
    .line 636
    invoke-virtual {v15}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 637
    .line 638
    .line 639
    move-result v15

    .line 640
    if-nez v15, :cond_19

    .line 641
    .line 642
    goto/16 :goto_11

    .line 643
    .line 644
    :cond_19
    iget-object v7, v7, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 645
    .line 646
    iget v15, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 647
    .line 648
    iget-object v8, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 649
    .line 650
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    .line 652
    .line 653
    :try_start_2
    iget-object v8, v8, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 654
    .line 655
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 656
    .line 657
    .line 658
    move-result-object v8

    .line 659
    const-string/jumbo v13, "force_desktop_mode_on_external_displays"

    .line 660
    .line 661
    .line 662
    invoke-static {v8, v13, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 663
    .line 664
    .line 665
    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 666
    if-eqz v8, :cond_1f

    .line 667
    .line 668
    iget-object v8, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 669
    .line 670
    monitor-enter v8

    .line 671
    :try_start_3
    iget-object v10, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 672
    .line 673
    invoke-virtual {v10, v15, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 674
    .line 675
    .line 676
    move-result v10

    .line 677
    if-eq v10, v3, :cond_1e

    .line 678
    .line 679
    if-ne v10, v14, :cond_1a

    .line 680
    .line 681
    goto/16 :goto_c

    .line 682
    .line 683
    :cond_1a
    :goto_a
    iget-object v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 684
    .line 685
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    .line 686
    .line 687
    .line 688
    move-result v13

    .line 689
    if-ge v9, v13, :cond_1d

    .line 690
    .line 691
    iget-object v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 692
    .line 693
    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 694
    .line 695
    .line 696
    move-result v13

    .line 697
    if-eq v13, v15, :cond_1c

    .line 698
    .line 699
    :cond_1b
    move v3, v14

    .line 700
    goto :goto_b

    .line 701
    :cond_1c
    iget-object v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 702
    .line 703
    invoke-virtual {v13, v15, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 704
    .line 705
    .line 706
    iget-object v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 707
    .line 708
    add-int/lit8 v3, v9, 0x1

    .line 709
    .line 710
    iget-boolean v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 711
    .line 712
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    const/16 v13, 0x326

    .line 716
    .line 717
    invoke-static {v13, v14, v3, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 718
    .line 719
    .line 720
    sget-boolean v11, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 721
    .line 722
    if-eqz v11, :cond_1b

    .line 723
    .line 724
    const-string v11, "ExternalDisplayStatsService"

    .line 725
    .line 726
    new-instance v13, Ljava/lang/StringBuilder;

    .line 727
    .line 728
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .line 730
    .line 731
    const-string/jumbo v14, "logStateExtended displayId="

    .line 732
    .line 733
    .line 734
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    const-string v14, " countOfExternalDisplays="

    .line 741
    .line 742
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    const-string v3, " currentState="

    .line 749
    .line 750
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    const-string v3, " state="

    .line 757
    .line 758
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    const/4 v3, 0x6

    .line 762
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    const-string v14, " mIsExternalDisplayUsedForAudio="

    .line 766
    .line 767
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    iget-boolean v14, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 771
    .line 772
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v13

    .line 779
    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .line 781
    .line 782
    goto :goto_b

    .line 783
    :catchall_1
    move-exception v0

    .line 784
    goto :goto_d

    .line 785
    :goto_b
    add-int/lit8 v9, v9, 0x1

    .line 786
    .line 787
    move v14, v3

    .line 788
    const/4 v3, 0x1

    .line 789
    const/16 v11, 0x326

    .line 790
    .line 791
    goto :goto_a

    .line 792
    :cond_1d
    monitor-exit v8

    .line 793
    goto/16 :goto_11

    .line 794
    .line 795
    :cond_1e
    :goto_c
    monitor-exit v8

    .line 796
    goto/16 :goto_11

    .line 797
    .line 798
    :goto_d
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 799
    throw v0

    .line 800
    :catchall_2
    :cond_1f
    iget-object v3, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 801
    .line 802
    monitor-enter v3

    .line 803
    :try_start_4
    iget-object v8, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 804
    .line 805
    const/4 v11, 0x1

    .line 806
    invoke-virtual {v8, v15, v11}, Landroid/util/SparseIntArray;->get(II)I

    .line 807
    .line 808
    .line 809
    move-result v8

    .line 810
    if-eq v8, v11, :cond_24

    .line 811
    .line 812
    if-ne v8, v10, :cond_20

    .line 813
    .line 814
    goto :goto_10

    .line 815
    :cond_20
    :goto_e
    iget-object v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 816
    .line 817
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    .line 818
    .line 819
    .line 820
    move-result v11

    .line 821
    if-ge v9, v11, :cond_23

    .line 822
    .line 823
    iget-object v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 824
    .line 825
    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 826
    .line 827
    .line 828
    move-result v11

    .line 829
    if-eq v11, v15, :cond_21

    .line 830
    .line 831
    goto :goto_f

    .line 832
    :cond_21
    iget-object v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 833
    .line 834
    invoke-virtual {v11, v15, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 835
    .line 836
    .line 837
    iget-object v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 838
    .line 839
    add-int/lit8 v13, v9, 0x1

    .line 840
    .line 841
    iget-boolean v14, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 842
    .line 843
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    const/16 v11, 0x326

    .line 847
    .line 848
    invoke-static {v11, v10, v13, v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 849
    .line 850
    .line 851
    sget-boolean v14, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 852
    .line 853
    if-eqz v14, :cond_22

    .line 854
    .line 855
    const-string v14, "ExternalDisplayStatsService"

    .line 856
    .line 857
    new-instance v11, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .line 861
    .line 862
    const-string/jumbo v10, "logStateMirroring displayId="

    .line 863
    .line 864
    .line 865
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    const-string v10, " countOfExternalDisplays="

    .line 872
    .line 873
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    const-string v10, " currentState="

    .line 880
    .line 881
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    const-string v10, " state="

    .line 888
    .line 889
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    const/4 v10, 0x5

    .line 893
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    const-string v13, " mIsExternalDisplayUsedForAudio="

    .line 897
    .line 898
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    iget-boolean v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 902
    .line 903
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v11

    .line 910
    invoke-static {v14, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .line 912
    .line 913
    goto :goto_f

    .line 914
    :catchall_3
    move-exception v0

    .line 915
    goto :goto_14

    .line 916
    :cond_22
    :goto_f
    add-int/lit8 v9, v9, 0x1

    .line 917
    .line 918
    goto :goto_e

    .line 919
    :cond_23
    monitor-exit v3

    .line 920
    goto :goto_11

    .line 921
    :cond_24
    :goto_10
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 922
    :goto_11
    iget-boolean v3, v6, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 923
    .line 924
    if-eqz v3, :cond_25

    .line 925
    .line 926
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 927
    .line 928
    .line 929
    move-result-object v3

    .line 930
    iget v3, v3, Landroid/view/DisplayInfo;->type:I

    .line 931
    .line 932
    const/4 v5, 0x2

    .line 933
    if-ne v3, v5, :cond_25

    .line 934
    .line 935
    iput v12, v6, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    .line 936
    .line 937
    iget-object v3, v6, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 938
    .line 939
    new-instance v5, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 940
    .line 941
    const/4 v7, 0x0

    .line 942
    invoke-direct {v5, v6, v7}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 946
    .line 947
    .line 948
    iget-object v3, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 949
    .line 950
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceRepository;->isDexDisplayDeviceEnabledLocked()V

    .line 951
    .line 952
    .line 953
    iget-object v3, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 954
    .line 955
    const/4 v5, 0x1

    .line 956
    iput-boolean v5, v3, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 957
    .line 958
    goto :goto_12

    .line 959
    :cond_25
    const/4 v5, 0x1

    .line 960
    :goto_12
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 961
    .line 962
    iget-object v3, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 963
    .line 964
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    if-eqz v3, :cond_26

    .line 969
    .line 970
    const/16 v3, 0x9

    .line 971
    .line 972
    if-ne v1, v3, :cond_27

    .line 973
    .line 974
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 975
    .line 976
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 977
    .line 978
    .line 979
    goto :goto_13

    .line 980
    :cond_26
    const/4 v3, 0x3

    .line 981
    if-ne v1, v3, :cond_27

    .line 982
    .line 983
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 984
    .line 985
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 986
    .line 987
    .line 988
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 989
    .line 990
    if-eqz v3, :cond_27

    .line 991
    .line 992
    iget v3, v3, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 993
    .line 994
    if-ne v3, v4, :cond_27

    .line 995
    .line 996
    const/4 v3, 0x0

    .line 997
    iput-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 998
    .line 999
    :cond_27
    :goto_13
    add-int/lit8 v2, v2, -0x1

    .line 1000
    .line 1001
    move v3, v5

    .line 1002
    goto/16 :goto_0

    .line 1003
    .line 1004
    :goto_14
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1005
    throw v0

    .line 1006
    :cond_28
    return-void

    .line 1007
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final sendUpdatesForGroupsLocked(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eq v1, p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 31
    .line 32
    const/16 v3, 0x8

    .line 33
    .line 34
    invoke-virtual {v2, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    if-ne p1, v2, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ltz v1, :cond_1

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method

.method public final setDeviceStateLocked(I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 2
    .line 3
    const-string v1, "Postponing transition to state: "

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 6
    .line 7
    const-string v3, "LogicalDisplayMapper"

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 19
    .line 20
    const-string v2, " until boot is completed"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v0, "Requesting Transition to state: "

    .line 29
    .line 30
    const-string v4, ", from state="

    .line 31
    .line 32
    invoke-static {p1, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, ", interactive="

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ", mBootCompleted="

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 57
    .line 58
    invoke-static {v3, v0, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 65
    .line 66
    .line 67
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:I

    .line 71
    .line 72
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 73
    .line 74
    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 75
    .line 76
    iget-boolean v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 77
    .line 78
    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(IIZZ)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 83
    .line 84
    iget v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 85
    .line 86
    iget-boolean v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 87
    .line 88
    iget-boolean v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 89
    .line 90
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(IIZZ)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    const/4 v7, 0x0

    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    if-nez v5, :cond_2

    .line 104
    .line 105
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 106
    .line 107
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 108
    .line 109
    invoke-virtual {p0, p1, v1, v7}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 110
    .line 111
    .line 112
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 113
    .line 114
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 115
    .line 116
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    if-eqz v2, :cond_3

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 133
    .line 134
    invoke-static {v0, v1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 141
    .line 142
    if-nez p1, :cond_4

    .line 143
    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    :cond_4
    if-eqz p1, :cond_5

    .line 147
    .line 148
    new-instance p1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    invoke-direct {p1, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    if-eqz v5, :cond_7

    .line 158
    .line 159
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string/jumbo v1, "sleep_on_fold_key"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_6
    const/4 v7, 0x2

    .line 176
    :goto_0
    new-instance p1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;

    .line 177
    .line 178
    invoke-direct {p1, p0, v7}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/LogicalDisplayMapper;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    :cond_7
    :goto_1
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->TIMEOUT_STATE_TRANSITION_MILLIS:I

    .line 185
    .line 186
    int-to-long p0, p0

    .line 187
    invoke-virtual {v0, v4, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public final setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 2
    .line 3
    if-ne v0, p2, :cond_1

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string p2, "Display is already "

    .line 8
    .line 9
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string/jumbo p2, "enabled"

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p2, "disabled"

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, ": "

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 30
    .line 31
    const-string p2, "LogicalDisplayMapper"

    .line 32
    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget p0, v0, Landroid/view/DisplayInfo;->type:I

    .line 12
    .line 13
    if-eq p0, v1, :cond_0

    .line 14
    .line 15
    move p0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p0, v2

    .line 18
    :goto_0
    const-string v0, "LogicalDisplayMapper"

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p2, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    .line 27
    .line 28
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move p2, v2

    .line 46
    :cond_1
    iget-boolean p0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 47
    .line 48
    if-eq p0, p2, :cond_2

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "SetEnabled on display "

    .line 53
    .line 54
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v2, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ": "

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-boolean p0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 78
    .line 79
    if-eq p2, p0, :cond_2

    .line 80
    .line 81
    iput-boolean v1, p1, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 82
    .line 83
    iput-boolean p2, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 84
    .line 85
    :cond_2
    return-void
.end method

.method public shouldDeviceBePutToSleep(IIZZ)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo p1, "stay_awake_on_fold_key"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method

.method public shouldDeviceBeWoken(IIZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz p4, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 25
    :goto_1
    return p0
.end method

.method public updateLogicalDisplays()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final updateLogicalDisplaysLocked(IZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    sub-int/2addr v2, v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    iget-object v13, v0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 15
    .line 16
    const-string v14, "LogicalDisplayMapper"

    .line 17
    .line 18
    if-ltz v2, :cond_25

    .line 19
    .line 20
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v11

    .line 26
    iget-object v7, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Lcom/android/server/display/LogicalDisplay;

    .line 33
    .line 34
    iget-object v15, v7, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 35
    .line 36
    if-eqz v15, :cond_11

    .line 37
    .line 38
    iget-object v8, v15, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Ljava/lang/Integer;

    .line 47
    .line 48
    iget v9, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 49
    .line 50
    invoke-virtual {v0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 57
    .line 58
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v10, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-lez v4, :cond_0

    .line 67
    .line 68
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    invoke-virtual {v4, v10}, Landroid/util/SparseIntArray;->get(I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    const/4 v4, 0x0

    .line 84
    :goto_1
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    check-cast v10, Lcom/android/server/display/DisplayGroup;

    .line 91
    .line 92
    iget-object v3, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v15}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v15

    .line 98
    iget v6, v15, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 99
    .line 100
    and-int/lit16 v6, v6, 0x4000

    .line 101
    .line 102
    if-nez v6, :cond_1

    .line 103
    .line 104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_1

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    goto :goto_2

    .line 112
    :cond_1
    const/4 v3, 0x1

    .line 113
    :goto_2
    if-eqz v12, :cond_2

    .line 114
    .line 115
    const/4 v6, 0x1

    .line 116
    goto :goto_3

    .line 117
    :cond_2
    const/4 v6, 0x0

    .line 118
    :goto_3
    if-nez v3, :cond_3

    .line 119
    .line 120
    if-eqz v8, :cond_3

    .line 121
    .line 122
    move/from16 v17, v5

    .line 123
    .line 124
    const/4 v5, 0x1

    .line 125
    goto :goto_4

    .line 126
    :cond_3
    move/from16 v17, v5

    .line 127
    .line 128
    const/4 v5, 0x0

    .line 129
    :goto_4
    if-eqz v4, :cond_4

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-ne v12, v4, :cond_4

    .line 136
    .line 137
    move/from16 v16, v2

    .line 138
    .line 139
    const/4 v2, -0x1

    .line 140
    const/4 v4, 0x1

    .line 141
    goto :goto_5

    .line 142
    :cond_4
    move/from16 v16, v2

    .line 143
    .line 144
    const/4 v2, -0x1

    .line 145
    const/4 v4, 0x0

    .line 146
    :goto_5
    if-eq v12, v2, :cond_6

    .line 147
    .line 148
    if-ne v6, v3, :cond_6

    .line 149
    .line 150
    if-eq v4, v5, :cond_5

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_5
    move v2, v12

    .line 154
    goto :goto_7

    .line 155
    :cond_6
    :goto_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    .line 156
    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    iget v2, v15, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 160
    .line 161
    const/high16 v4, -0x80000000

    .line 162
    .line 163
    and-int/2addr v2, v4

    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    const/4 v2, 0x4

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    iget-object v2, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    .line 169
    .line 170
    if-eqz v5, :cond_8

    .line 171
    .line 172
    if-eqz v8, :cond_8

    .line 173
    .line 174
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_b

    .line 185
    .line 186
    iget v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 187
    .line 188
    add-int/lit8 v3, v2, 0x1

    .line 189
    .line 190
    iput v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 191
    .line 192
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_8
    if-nez v3, :cond_9

    .line 203
    .line 204
    const/4 v2, 0x0

    .line 205
    goto :goto_7

    .line 206
    :cond_9
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    .line 207
    .line 208
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    check-cast v3, Ljava/lang/Integer;

    .line 213
    .line 214
    if-nez v3, :cond_a

    .line 215
    .line 216
    iget v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 217
    .line 218
    add-int/lit8 v4, v3, 0x1

    .line 219
    .line 220
    iput v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 221
    .line 222
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    .line 227
    .line 228
    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    :cond_b
    :goto_7
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 236
    .line 237
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Lcom/android/server/display/DisplayGroup;

    .line 242
    .line 243
    if-nez v3, :cond_c

    .line 244
    .line 245
    new-instance v3, Lcom/android/server/display/DisplayGroup;

    .line 246
    .line 247
    invoke-direct {v3, v2}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    .line 248
    .line 249
    .line 250
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 251
    .line 252
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_c
    if-eq v10, v3, :cond_12

    .line 256
    .line 257
    if-eqz v10, :cond_d

    .line 258
    .line 259
    iget v4, v10, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 260
    .line 261
    const/4 v5, 0x1

    .line 262
    add-int/2addr v4, v5

    .line 263
    iput v4, v10, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 264
    .line 265
    iget-object v4, v10, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 266
    .line 267
    check-cast v4, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    :cond_d
    iget-object v4, v3, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 273
    .line 274
    check-cast v4, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-nez v4, :cond_e

    .line 281
    .line 282
    iget v4, v3, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 283
    .line 284
    const/4 v5, 0x1

    .line 285
    add-int/2addr v4, v5

    .line 286
    iput v4, v3, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 287
    .line 288
    iget-object v3, v3, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 289
    .line 290
    check-cast v3, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_e
    const/4 v5, 0x1

    .line 297
    :goto_8
    iget v3, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 298
    .line 299
    if-eq v2, v3, :cond_f

    .line 300
    .line 301
    iput v2, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 302
    .line 303
    iput-boolean v5, v7, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 304
    .line 305
    :cond_f
    const-string v3, "Setting new display group "

    .line 306
    .line 307
    const-string v4, " for display "

    .line 308
    .line 309
    const-string v5, ", from previous group: "

    .line 310
    .line 311
    invoke-static {v2, v9, v3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    if-eqz v10, :cond_10

    .line 316
    .line 317
    iget v3, v10, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    .line 318
    .line 319
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    goto :goto_9

    .line 324
    :cond_10
    const-string/jumbo v3, "null"

    .line 325
    .line 326
    .line 327
    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_11
    move/from16 v16, v2

    .line 339
    .line 340
    move/from16 v17, v5

    .line 341
    .line 342
    :cond_12
    :goto_a
    iget-boolean v2, v7, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 343
    .line 344
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 345
    .line 346
    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v3, v4}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 351
    .line 352
    .line 353
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 354
    .line 355
    iget-object v4, v7, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 356
    .line 357
    invoke-virtual {v3, v4}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 358
    .line 359
    .line 360
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 361
    .line 362
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 363
    .line 364
    invoke-virtual {v7, v3, v4}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 372
    .line 373
    const/4 v5, 0x0

    .line 374
    invoke-virtual {v4, v11, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-eqz v4, :cond_13

    .line 379
    .line 380
    const/4 v6, 0x1

    .line 381
    goto :goto_b

    .line 382
    :cond_13
    move v6, v5

    .line 383
    :goto_b
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 384
    .line 385
    invoke-virtual {v8, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 386
    .line 387
    .line 388
    move-result v8

    .line 389
    iget-boolean v9, v7, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 390
    .line 391
    iget-object v10, v7, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 392
    .line 393
    if-eqz v10, :cond_20

    .line 394
    .line 395
    if-nez v6, :cond_16

    .line 396
    .line 397
    iget-object v2, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 398
    .line 399
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_14

    .line 404
    .line 405
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 406
    .line 407
    const/16 v3, 0x8

    .line 408
    .line 409
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 410
    .line 411
    .line 412
    const/4 v3, 0x2

    .line 413
    const/16 v17, 0x1

    .line 414
    .line 415
    goto/16 :goto_f

    .line 416
    .line 417
    :cond_14
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 418
    .line 419
    const/4 v3, 0x1

    .line 420
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 421
    .line 422
    .line 423
    :cond_15
    :goto_c
    const/4 v3, 0x2

    .line 424
    goto/16 :goto_f

    .line 425
    .line 426
    :cond_16
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 427
    .line 428
    iget-object v6, v6, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 429
    .line 430
    iget-object v10, v3, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 431
    .line 432
    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    if-nez v6, :cond_17

    .line 437
    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    const-string v4, "Swapping new display: "

    .line 441
    .line 442
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v4, ": "

    .line 449
    .line 450
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 464
    .line 465
    const/4 v3, 0x4

    .line 466
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    .line 468
    .line 469
    goto :goto_c

    .line 470
    :cond_17
    iget-object v6, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 471
    .line 472
    invoke-virtual {v6}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    if-eqz v6, :cond_1a

    .line 477
    .line 478
    if-eq v8, v9, :cond_1a

    .line 479
    .line 480
    iget v6, v3, Landroid/view/DisplayInfo;->type:I

    .line 481
    .line 482
    const/4 v8, 0x1

    .line 483
    if-ne v6, v8, :cond_18

    .line 484
    .line 485
    if-eqz v9, :cond_1a

    .line 486
    .line 487
    :cond_18
    if-eqz v9, :cond_19

    .line 488
    .line 489
    const/4 v2, 0x1

    .line 490
    goto :goto_d

    .line 491
    :cond_19
    const/4 v2, 0x3

    .line 492
    :goto_d
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 493
    .line 494
    invoke-virtual {v3, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 495
    .line 496
    .line 497
    goto :goto_c

    .line 498
    :cond_1a
    if-nez v2, :cond_1b

    .line 499
    .line 500
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 501
    .line 502
    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    if-nez v2, :cond_1c

    .line 507
    .line 508
    :cond_1b
    const/4 v3, 0x2

    .line 509
    goto :goto_e

    .line 510
    :cond_1c
    const/4 v2, 0x1

    .line 511
    if-ne v4, v2, :cond_1d

    .line 512
    .line 513
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 514
    .line 515
    const/4 v3, 0x6

    .line 516
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 517
    .line 518
    .line 519
    goto :goto_c

    .line 520
    :cond_1d
    iget-object v2, v7, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 521
    .line 522
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-nez v2, :cond_1e

    .line 527
    .line 528
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 529
    .line 530
    const/4 v3, 0x5

    .line 531
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 532
    .line 533
    .line 534
    goto :goto_c

    .line 535
    :cond_1e
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 536
    .line 537
    iget-object v3, v7, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 538
    .line 539
    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 540
    .line 541
    .line 542
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 543
    .line 544
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 545
    .line 546
    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    if-nez v2, :cond_15

    .line 551
    .line 552
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 553
    .line 554
    const/4 v3, 0x2

    .line 555
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 556
    .line 557
    .line 558
    goto :goto_f

    .line 559
    :goto_e
    const/16 v2, 0x10

    .line 560
    .line 561
    if-ne v1, v2, :cond_1f

    .line 562
    .line 563
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 564
    .line 565
    const/4 v4, 0x7

    .line 566
    invoke-virtual {v2, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 567
    .line 568
    .line 569
    goto :goto_f

    .line 570
    :cond_1f
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 571
    .line 572
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 573
    .line 574
    .line 575
    :goto_f
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 576
    .line 577
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 578
    .line 579
    .line 580
    :goto_10
    move/from16 v3, v16

    .line 581
    .line 582
    goto/16 :goto_11

    .line 583
    .line 584
    :cond_20
    invoke-virtual {v0, v11}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 589
    .line 590
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    check-cast v2, Lcom/android/server/display/DisplayGroup;

    .line 595
    .line 596
    if-eqz v2, :cond_21

    .line 597
    .line 598
    const-string v3, "Removing display #"

    .line 599
    .line 600
    const-string v4, " from group #"

    .line 601
    .line 602
    invoke-static {v11, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    iget v4, v2, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    .line 607
    .line 608
    invoke-static {v3, v4, v14}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 609
    .line 610
    .line 611
    iget v3, v2, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 612
    .line 613
    const/4 v4, 0x1

    .line 614
    add-int/2addr v3, v4

    .line 615
    iput v3, v2, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 616
    .line 617
    iget-object v2, v2, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 618
    .line 619
    check-cast v2, Ljava/util/ArrayList;

    .line 620
    .line 621
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    :cond_21
    if-eqz v6, :cond_24

    .line 625
    .line 626
    iget-object v2, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 627
    .line 628
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    if-eqz v2, :cond_23

    .line 633
    .line 634
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 635
    .line 636
    invoke-virtual {v2, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    if-eqz v2, :cond_22

    .line 641
    .line 642
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 643
    .line 644
    const/4 v3, 0x3

    .line 645
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    .line 647
    .line 648
    move/from16 v3, v16

    .line 649
    .line 650
    const/16 v17, 0x1

    .line 651
    .line 652
    goto :goto_11

    .line 653
    :cond_22
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 654
    .line 655
    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->delete(I)V

    .line 656
    .line 657
    .line 658
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 659
    .line 660
    const/16 v3, 0x9

    .line 661
    .line 662
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 663
    .line 664
    .line 665
    goto :goto_10

    .line 666
    :cond_23
    const/4 v3, 0x3

    .line 667
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 668
    .line 669
    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->delete(I)V

    .line 670
    .line 671
    .line 672
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 673
    .line 674
    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 675
    .line 676
    .line 677
    goto :goto_10

    .line 678
    :cond_24
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 679
    .line 680
    move/from16 v3, v16

    .line 681
    .line 682
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 683
    .line 684
    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    const-string v4, "Removed display: "

    .line 688
    .line 689
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .line 701
    .line 702
    :goto_11
    add-int/lit8 v2, v3, -0x1

    .line 703
    .line 704
    move/from16 v5, v17

    .line 705
    .line 706
    const/4 v3, 0x1

    .line 707
    goto/16 :goto_0

    .line 708
    .line 709
    :cond_25
    move/from16 v17, v5

    .line 710
    .line 711
    const/4 v5, 0x0

    .line 712
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 713
    .line 714
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 715
    .line 716
    .line 717
    move-result v2

    .line 718
    const/4 v3, 0x1

    .line 719
    sub-int/2addr v2, v3

    .line 720
    :goto_12
    if-ltz v2, :cond_2b

    .line 721
    .line 722
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 723
    .line 724
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 729
    .line 730
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v4

    .line 734
    check-cast v4, Lcom/android/server/display/DisplayGroup;

    .line 735
    .line 736
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 737
    .line 738
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 739
    .line 740
    .line 741
    move-result v6

    .line 742
    const/4 v7, -0x1

    .line 743
    if-le v6, v7, :cond_26

    .line 744
    .line 745
    const/4 v6, 0x1

    .line 746
    goto :goto_13

    .line 747
    :cond_26
    move v6, v5

    .line 748
    :goto_13
    iget v8, v4, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 749
    .line 750
    iget-object v4, v4, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 751
    .line 752
    check-cast v4, Ljava/util/ArrayList;

    .line 753
    .line 754
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 755
    .line 756
    .line 757
    move-result v4

    .line 758
    if-eqz v4, :cond_27

    .line 759
    .line 760
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 761
    .line 762
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 763
    .line 764
    .line 765
    if-eqz v6, :cond_2a

    .line 766
    .line 767
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 768
    .line 769
    const/4 v6, 0x3

    .line 770
    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 771
    .line 772
    .line 773
    goto :goto_15

    .line 774
    :cond_27
    if-nez v6, :cond_28

    .line 775
    .line 776
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 777
    .line 778
    const/4 v6, 0x1

    .line 779
    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 780
    .line 781
    .line 782
    goto :goto_14

    .line 783
    :cond_28
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 784
    .line 785
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 786
    .line 787
    .line 788
    move-result v4

    .line 789
    if-eq v4, v8, :cond_29

    .line 790
    .line 791
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 792
    .line 793
    const/4 v6, 0x2

    .line 794
    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 795
    .line 796
    .line 797
    :cond_29
    :goto_14
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 798
    .line 799
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 800
    .line 801
    .line 802
    :cond_2a
    :goto_15
    add-int/lit8 v2, v2, -0x1

    .line 803
    .line 804
    goto :goto_12

    .line 805
    :cond_2b
    const/4 v2, 0x6

    .line 806
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 807
    .line 808
    .line 809
    const/4 v2, 0x1

    .line 810
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 811
    .line 812
    .line 813
    const/4 v2, 0x3

    .line 814
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 815
    .line 816
    .line 817
    iget-object v2, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 818
    .line 819
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    if-eqz v2, :cond_2c

    .line 824
    .line 825
    const/16 v2, 0x9

    .line 826
    .line 827
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 828
    .line 829
    .line 830
    :cond_2c
    const/4 v2, 0x2

    .line 831
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 832
    .line 833
    .line 834
    const/4 v2, 0x5

    .line 835
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 836
    .line 837
    .line 838
    const/4 v2, 0x4

    .line 839
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 840
    .line 841
    .line 842
    iget-object v2, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 843
    .line 844
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    if-eqz v2, :cond_2d

    .line 849
    .line 850
    const/16 v2, 0x8

    .line 851
    .line 852
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 853
    .line 854
    .line 855
    :cond_2d
    const/4 v2, 0x1

    .line 856
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 857
    .line 858
    .line 859
    const/4 v2, 0x7

    .line 860
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 861
    .line 862
    .line 863
    const/4 v2, 0x2

    .line 864
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 865
    .line 866
    .line 867
    const/4 v2, 0x3

    .line 868
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 869
    .line 870
    .line 871
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 872
    .line 873
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 874
    .line 875
    .line 876
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 877
    .line 878
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 879
    .line 880
    .line 881
    if-eqz v17, :cond_2f

    .line 882
    .line 883
    if-eqz p2, :cond_2e

    .line 884
    .line 885
    const-string v0, "Trying to loop a third time"

    .line 886
    .line 887
    invoke-static {v14, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    .line 889
    .line 890
    return-void

    .line 891
    :cond_2e
    const/4 v2, 0x1

    .line 892
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    .line 893
    .line 894
    .line 895
    :cond_2f
    return-void
.end method

.method public final updateLogicalDisplaysLocked$1()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
