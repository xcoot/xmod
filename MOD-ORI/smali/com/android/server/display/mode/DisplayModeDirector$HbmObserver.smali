.class public final Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmActive:Landroid/util/SparseBooleanArray;

.field public final mHbmMode:Landroid/util/SparseIntArray;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mRefreshRateInHbmHdr:I

.field public mRefreshRateInHbmSunlight:I

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseIntArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "   HbmObserver"

    .line 2
    .line 3
    const-string v1, "     mHbmMode: "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "     mHbmActive: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "     mRefreshRateInHbmSunlight: "

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 48
    .line 49
    const-string v2, "     mRefreshRateInHbmHdr: "

    .line 50
    .line 51
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 56
    .line 57
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public getRefreshRateInHbmHdr()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 2
    .line 3
    return p0
.end method

.method public getRefreshRateInHbmSunlight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 2
    .line 3
    return p0
.end method

.method public final observe()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 9
    .line 10
    const-string/jumbo v2, "display_manager"

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    :try_start_1
    iget-object v5, v3, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 20
    .line 21
    iget-object v5, v5, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 22
    .line 23
    iget-object v5, v5, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 24
    .line 25
    const-string/jumbo v6, "refresh_rate_in_hbm_hdr"

    .line 26
    .line 27
    .line 28
    invoke-interface {v5, v2, v6, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v5
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move v5, v4

    .line 34
    :goto_0
    if-ne v5, v4, :cond_1

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    :try_start_2
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const v5, 0x10e007d

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    :goto_1
    move v5, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    iget-object v3, v1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 56
    .line 57
    iget v3, v3, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_2
    iput v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    :try_start_3
    iget-object v5, v3, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 68
    .line 69
    iget-object v5, v5, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 70
    .line 71
    iget-object v5, v5, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 72
    .line 73
    const-string/jumbo v6, "refresh_rate_in_hbm_sunlight"

    .line 74
    .line 75
    .line 76
    invoke-interface {v5, v2, v6, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    goto :goto_3

    .line 81
    :catch_1
    move v2, v4

    .line 82
    :goto_3
    if-ne v2, v4, :cond_3

    .line 83
    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    :try_start_4
    iget-object v1, v3, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const v2, 0x10e007e

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    :goto_4
    move v2, v1

    .line 102
    goto :goto_5

    .line 103
    :cond_2
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 104
    .line 105
    iget v1, v1, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_3
    :goto_5
    iput v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 109
    .line 110
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 112
    .line 113
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    .line 131
    .line 132
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-wide/16 v2, 0xa

    .line 139
    .line 140
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    throw p0
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget v1, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget v2, v0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    .line 29
    .line 30
    iget v0, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    .line 31
    .line 32
    cmpl-float v0, v2, v0

    .line 33
    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ne v1, v2, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ne v0, v2, :cond_3

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 57
    .line 58
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 62
    .line 63
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final recalculateVotesForDisplay(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v0, v3, :cond_2

    .line 19
    .line 20
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    invoke-static {v0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateLimitations(I)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ge v1, v4, :cond_4

    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    .line 49
    .line 50
    iget v5, v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    .line 51
    .line 52
    if-ne v5, v3, :cond_1

    .line 53
    .line 54
    iget-object v0, v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 55
    .line 56
    iget v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 57
    .line 58
    iget v0, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v1, 0x2

    .line 69
    if-ne v0, v1, :cond_3

    .line 70
    .line 71
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 72
    .line 73
    if-lez v1, :cond_3

    .line 74
    .line 75
    int-to-float v0, v1

    .line 76
    invoke-static {v0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const-string v1, "Unexpected HBM mode "

    .line 82
    .line 83
    const-string v3, " for display ID "

    .line 84
    .line 85
    const-string v4, "DisplayModeDirector"

    .line 86
    .line 87
    invoke-static {v0, p1, v1, v3, v4}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 91
    .line 92
    const/4 v0, 0x4

    .line 93
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
