.class public final Lcom/android/server/bgslotmanager/BGSlotManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static BONUS_MAX_CACHED_APPS_PER_SWAP:I

.field public static final HRT_MaxCached_Enable:Z

.field public static final IS_CHINA_MODEL:Z

.field public static MAX_CACHED_APPS:I

.field public static MAX_EMPTY_APPS:I

.field public static MIN_CACHED_APPS:I

.field public static MIN_EMPTY_APPS:I

.field public static final STATIC_MAX_EMPTY_FOR_OVER_8GB:I


# instance fields
.field public BGSlotState:I

.field public final CHN_REDUCE_CACHED:I

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public final mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public originCachedMax:I

.field public originCachedMin:I

.field public originEmptyMax:I

.field public originEmptyMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "dha_cached_min"

    .line 2
    .line 3
    .line 4
    const-string v1, "4"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    .line 11
    .line 12
    const-string/jumbo v0, "cached_max"

    .line 13
    .line 14
    .line 15
    const-string v1, "512"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 22
    .line 23
    const-string/jumbo v0, "dha_empty_min"

    .line 24
    .line 25
    .line 26
    const-string v1, "8"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    .line 33
    .line 34
    const-string/jumbo v0, "dha_empty_max"

    .line 35
    .line 36
    .line 37
    const-string v1, "24"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    .line 47
    .line 48
    const-string/jumbo v0, "dha_empty_limit"

    .line 49
    .line 50
    .line 51
    const-string v1, "32"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->STATIC_MAX_EMPTY_FOR_OVER_8GB:I

    .line 58
    .line 59
    const-string/jumbo v0, "ro.csc.country_code"

    .line 60
    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string/jumbo v1, "china"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->IS_CHINA_MODEL:Z

    .line 80
    .line 81
    const-string/jumbo v0, "dha_hrt_max_enable"

    .line 82
    .line 83
    .line 84
    const-string/jumbo v1, "true"

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->HRT_MaxCached_Enable:Z

    .line 92
    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "reduce_chn_cached_max"

    .line 5
    .line 6
    .line 7
    const-string v1, "0"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->CHN_REDUCE_CACHED:I

    .line 14
    .line 15
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 16
    .line 17
    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 18
    .line 19
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 22
    .line 23
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 26
    .line 27
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final changeBGSlot()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 8
    .line 9
    and-int/lit8 v4, v3, 0x1

    .line 10
    .line 11
    if-lez v4, :cond_1

    .line 12
    .line 13
    div-int/lit8 v1, v2, 0x2

    .line 14
    .line 15
    iget v4, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    .line 16
    .line 17
    if-le v1, v4, :cond_0

    .line 18
    .line 19
    div-int/lit8 v2, v2, 0x2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v4

    .line 23
    :goto_0
    const/4 v1, 0x2

    .line 24
    :cond_1
    and-int/lit8 v4, v3, 0x2

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    if-lez v4, :cond_2

    .line 28
    .line 29
    const/4 v4, -0x4

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v4, v5

    .line 32
    :goto_1
    and-int/lit8 v6, v3, 0x4

    .line 33
    .line 34
    if-lez v6, :cond_3

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    const/16 v2, 0x10

    .line 38
    .line 39
    move v4, v5

    .line 40
    :cond_3
    and-int/lit8 v3, v3, 0x8

    .line 41
    .line 42
    if-lez v3, :cond_4

    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x6

    .line 45
    .line 46
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v6, "Before ChangeBGSlot CachedMax: "

    .line 49
    .line 50
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget v6, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 54
    .line 55
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v6, ", CachedMin: "

    .line 59
    .line 60
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    sget v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    .line 64
    .line 65
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v7, ", EmptyMax: "

    .line 69
    .line 70
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    sget v8, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 74
    .line 75
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v8, "DynamicHiddenApp_BGSlotManager"

    .line 83
    .line 84
    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    add-int/2addr v0, v4

    .line 88
    sget v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    .line 89
    .line 90
    add-int/2addr v0, v3

    .line 91
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 96
    .line 97
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    .line 102
    .line 103
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "After ChangeBGSlot CachedMax: "

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->updateDefaultCachedMAX()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final setBonusMaxCachedAppsPerSwap()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-wide/16 v3, 0x400

    .line 15
    .line 16
    div-long/2addr v1, v3

    .line 17
    long-to-int v1, v1

    .line 18
    iget-object v0, v0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    .line 19
    .line 20
    array-length v2, v0

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v2, :cond_1

    .line 24
    .line 25
    aget-object v5, v0, v4

    .line 26
    .line 27
    aget v6, v5, v3

    .line 28
    .line 29
    if-le v1, v6, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aget v0, v5, v0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v0, v3

    .line 39
    :goto_1
    const/16 v1, 0x8

    .line 40
    .line 41
    const/4 v2, 0x6

    .line 42
    if-lt v0, v1, :cond_2

    .line 43
    .line 44
    sput v2, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    if-lt v0, v2, :cond_3

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    sput v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    .line 54
    .line 55
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final updateDefaultCachedMAX()V
    .locals 4

    .line 1
    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 2
    .line 3
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 4
    .line 5
    add-int v2, v0, v1

    .line 6
    .line 7
    int-to-float v3, v0

    .line 8
    add-int/2addr v0, v1

    .line 9
    int-to-float v0, v0

    .line 10
    div-float/2addr v3, v0

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    sub-float/2addr v0, v3

    .line 14
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sput v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 20
    .line 21
    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
