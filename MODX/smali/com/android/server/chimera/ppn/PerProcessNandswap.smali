.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FAST_MADVISE_ENABLED:Z

.field public static INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public static final IS_DEBUG_LEVEL_LOW:Z

.field public static final NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

.field public static final STATUS_ALREADY_PPN:Ljava/lang/Integer;

.field public static final STATUS_KEY_APP:Ljava/lang/Integer;

.field public static final SWAP_AFTER_BOOT_LOW_SWAP_PERCENT:I

.field public static __DebugEnabled:Ljava/lang/Boolean;

.field public static __MinSwapFreePercentage:Ljava/lang/Integer;

.field public static __PolicyVersion:Ljava/lang/Integer;

.field public static __PrefetchActionEnabled:Ljava/lang/Boolean;

.field public static __PrefetchSupported:Ljava/lang/Boolean;

.field public static __SlotCount:I

.field public static __SlotCountMap:Ljava/util/ArrayList;

.field public static __WritebackOnBGEnabled:Ljava/lang/Boolean;

.field public static __WritebackOnFreezeEnabled:Ljava/lang/Boolean;

.field public static mAlwaysRunningQuotaPPNCnt:I

.field public static mAlwaysRunningQuotaPPNTriggerCnt:I


# instance fields
.field public WRITEBACK_ENABLED:Z

.field public __KeyAppEnable:Ljava/lang/Boolean;

.field public __PageoutCachedEmptyEnable:Ljava/lang/Boolean;

.field public __QuickSwapEnable:Ljava/lang/Boolean;

.field public __SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

.field public __SwapAfterBootEnable:Ljava/lang/Boolean;

.field public mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public final mKeyApps:Ljava/util/Map;

.field public final mLastNandswapStats:Ljava/util/LinkedHashMap;

.field public mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

.field public mMsgThread:Lcom/android/server/ServiceThread;

.field public mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

.field public final mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mNandswapThread:Lcom/android/server/ServiceThread;

.field public final mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

.field public final mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

.field public final mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

.field public final mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

.field public mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

.field public final mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static -$$Nest$mappendLogMessage(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;JJIZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, ", cost "

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    move-result-wide v1

    .line 21
    sub-long/2addr v1, p2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo p1, "ms, reclaim "

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-wide/16 p1, 0x400

    .line 33
    div-long/2addr p4, p1

    .line 34
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string p3, "MB, success count: "

    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p3

    .line 49
    if-eqz p7, :cond_0

    .line 51
    new-instance p4, Lcom/android/internal/util/MemInfoReader;

    .line 53
    invoke-direct {p4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 56
    invoke-virtual {p4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 59
    const-string p5, " After SwapFree: "

    .line 61
    invoke-static {p8, p5}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object p5

    .line 65
    invoke-virtual {p4}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 68
    move-result-wide p6

    .line 69
    div-long/2addr p6, p1

    .line 70
    invoke-virtual {p5, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    const-string p1, ", AvailableMem: "

    .line 75
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p4}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    .line 81
    move-result-wide p1

    .line 82
    const-wide/32 p6, 0x100000

    .line 85
    div-long/2addr p1, p6

    .line 86
    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-static {p3, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p3

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 106
    const-string p4, "HH:mm:ss.SSS"

    .line 108
    invoke-direct {p2, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance p4, Ljava/util/Date;

    .line 113
    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    .line 116
    invoke-virtual {p2, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string p2, " "

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 138
    return-object p3
.end method

.method public static -$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string/jumbo p0, "com.sec.android.app.launcher"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 13
    const-string/jumbo p0, "com.samsung.android.honeyboard"

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 22
    const-string/jumbo p0, "com.android.systemui"

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
.end method

.method public static -$$Nest$mupdateLastNandswapStats(Lcom/android/server/chimera/ppn/PerProcessNandswap;ILjava/lang/String;[J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;

    .line 18
    invoke-direct {v0, p2, p3}, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;-><init>(Ljava/lang/String;[J)V

    .line 21
    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static -$$Nest$smgetMemoryInfoIfDebugEnabled(Z)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lcom/android/internal/util/MemInfoReader;

    .line 5
    invoke-direct {p0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " SwapFree: "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 21
    move-result-wide v1

    .line 22
    const-wide/16 v3, 0x400

    .line 24
    div-long/2addr v1, v3

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ", AvailableMem: "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    .line 36
    move-result-wide v1

    .line 37
    const-wide/32 v3, 0x100000

    .line 40
    div-long/2addr v1, v3

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string p0, " "

    .line 51
    :goto_0
    return-object p0
.end method

.method public static -$$Nest$smisAnonPageNotEnough(I)Z
    .locals 8

    .line 1
    const-string v0, "Pss_Anon:"

    .line 3
    const-string v1, "SwapPss:"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0, v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getSmapsRollupParams(I[Ljava/lang/String;)[J

    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    aget-wide v1, p0, v0

    .line 16
    const/4 v3, 0x1

    .line 17
    aget-wide v4, p0, v3

    .line 19
    const-wide/16 v6, 0x1388

    .line 21
    cmp-long p0, v1, v6

    .line 23
    if-ltz p0, :cond_0

    .line 25
    const-wide/16 v6, 0x64

    .line 27
    mul-long/2addr v6, v4

    .line 28
    add-long/2addr v1, v4

    .line 29
    div-long/2addr v6, v1

    .line 30
    sget p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->SWAP_AFTER_BOOT_LOW_SWAP_PERCENT:I

    .line 32
    int-to-long v1, p0

    .line 33
    cmp-long p0, v6, v1

    .line 35
    if-lez p0, :cond_1

    .line 37
    :cond_0
    move v0, v3

    .line 38
    :cond_1
    return v0
.end method

.method public static bridge synthetic -$$Nest$smprefetchProcess(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->prefetchProcess(I)J

    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smprefetchProcessFast(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->prefetchProcessFast(I)J

    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FAST_MADVISE_ENABLED:Z

    .line 3
    sput-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    .line 5
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 8
    const-string v1, "0x4f4c"

    .line 10
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    sput-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->IS_DEBUG_LEVEL_LOW:Z

    .line 20
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    .line 23
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 25
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    .line 27
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    .line 29
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    .line 31
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    .line 33
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.swap_after_boot_low_swap_percent"

    .line 36
    const/16 v2, 0x3c

    .line 38
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result v1

    .line 42
    sput v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->SWAP_AFTER_BOOT_LOW_SWAP_PERCENT:I

    .line 44
    const/4 v1, 0x0

    .line 45
    sput v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 47
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 49
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    .line 51
    const-string/jumbo v2, "com.sec.android.gallery3d"

    .line 54
    const-string/jumbo v3, "com.samsung.android.messaging"

    .line 57
    const-string/jumbo v4, "com.sec.android.app.camera"

    .line 60
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    sput-object v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

    .line 66
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 68
    sput v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    .line 70
    sput v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_ALREADY_PPN:Ljava/lang/Integer;

    .line 78
    const/4 v0, 0x1

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_KEY_APP:Ljava/lang/Integer;

    .line 85
    const-string v0, "Static Initialization of PerProcessNandswap"

    .line 87
    const-string v1, "PerProcessNandswap"

    .line 89
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    .line 10
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    .line 12
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    .line 14
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SwapAfterBootEnable:Ljava/lang/Boolean;

    .line 16
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    .line 18
    const-class v2, Ljava/lang/String;

    .line 20
    const/4 v3, 0x5

    .line 21
    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 24
    iput-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

    .line 26
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 28
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    .line 49
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 51
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    .line 53
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 55
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 57
    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$1;

    .line 59
    invoke-direct {v0, p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$1;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V

    .line 62
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    .line 64
    new-instance v0, Ljava/util/PriorityQueue;

    .line 66
    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$2;

    .line 80
    invoke-direct {v0, p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$2;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V

    .line 83
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 85
    return-void
.end method

.method private static native __compactProcessForWriteback(II)J
.end method

.method private static native __compactProcessForWritebackFast(II)J
.end method

.method private static native __setWriteBoosterPath()Z
.end method

.method public static compactProcessForWriteback(II)J
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__compactProcessForWritebackFast(II)J

    .line 8
    move-result-wide p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__compactProcessForWriteback(II)J

    .line 13
    move-result-wide p0

    .line 14
    :goto_0
    return-wide p0
.end method

.method public static final decideSlotCount()V
    .locals 16

    .line 1
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 3
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 9
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x400

    .line 15
    div-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x7f

    .line 18
    add-long/2addr v0, v2

    .line 19
    long-to-float v0, v0

    .line 20
    const/high16 v1, 0x43000000    # 128.0f

    .line 22
    div-float/2addr v0, v1

    .line 23
    float-to-int v0, v0

    .line 24
    mul-int/lit16 v0, v0, 0x80

    .line 26
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 28
    const/4 v2, 0x0

    .line 29
    const-string v3, "PerProcessNandswap"

    .line 31
    if-nez v1, :cond_a

    .line 33
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    .line 36
    move-result v1

    .line 37
    const/4 v4, 0x2

    .line 38
    const-string/jumbo v5, "default"

    .line 41
    if-lt v1, v4, :cond_0

    .line 43
    move-object v1, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v1, ""

    .line 47
    :goto_0
    const-string/jumbo v6, "ro.sys.kernelmemory.nandswap.slot_count_map"

    .line 50
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    const-string/jumbo v6, "slot_cout_map: "

    .line 57
    const-string v7, "Invalid slot_count_map: "

    .line 59
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    .line 62
    move-result v8

    .line 63
    const/4 v9, 0x3

    .line 64
    if-lt v8, v9, :cond_1

    .line 66
    const-string v8, "5,6,8,8,12"

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v8, "5,6,7,8,9"

    .line 71
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 76
    if-eqz v1, :cond_8

    .line 78
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 81
    move-result v10

    .line 82
    if-gtz v10, :cond_2

    .line 84
    goto/16 :goto_3

    .line 86
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_3

    .line 92
    move-object v1, v8

    .line 93
    :cond_3
    const-string v5, ","

    .line 95
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    array-length v8, v5

    .line 100
    rem-int/2addr v8, v4

    .line 101
    if-eqz v8, :cond_7

    .line 103
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v6

    .line 107
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    aget-object v6, v5, v2

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const-string v7, " in "

    .line 118
    const-string v8, "Invalid slot count: "

    .line 120
    if-ltz v6, :cond_6

    .line 122
    const/16 v10, 0x64

    .line 124
    if-ge v6, v10, :cond_6

    .line 126
    :try_start_1
    new-instance v11, Landroid/util/Pair;

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v12

    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v13

    .line 136
    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    move v11, v2

    .line 143
    move v12, v11

    .line 144
    :goto_2
    array-length v13, v5

    .line 145
    div-int/2addr v13, v4

    .line 146
    if-ge v11, v13, :cond_9

    .line 148
    mul-int/lit8 v13, v11, 0x2

    .line 150
    add-int/lit8 v14, v13, 0x1

    .line 152
    aget-object v14, v5, v14

    .line 154
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 157
    move-result v14

    .line 158
    add-int/lit8 v13, v13, 0x2

    .line 160
    aget-object v13, v5, v13

    .line 162
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 165
    move-result v13

    .line 166
    if-lez v14, :cond_5

    .line 168
    if-ge v14, v10, :cond_5

    .line 170
    if-ge v12, v14, :cond_5

    .line 172
    if-ltz v13, :cond_4

    .line 174
    if-ge v13, v10, :cond_4

    .line 176
    if-ge v6, v13, :cond_4

    .line 178
    new-instance v6, Landroid/util/Pair;

    .line 180
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object v12

    .line 184
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    move-result-object v15

    .line 188
    invoke-direct {v6, v12, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v11, v11, 0x1

    .line 196
    move v6, v13

    .line 197
    move v12, v14

    .line 198
    goto :goto_2

    .line 199
    :catch_0
    move-exception v1

    .line 200
    goto :goto_4

    .line 201
    :cond_4
    new-instance v4, Ljava/lang/Exception;

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 227
    throw v4

    .line 228
    :cond_5
    new-instance v4, Ljava/lang/Exception;

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    const-string v6, "Invalid thresholdGB: "

    .line 237
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 256
    throw v4

    .line 257
    :cond_6
    new-instance v4, Ljava/lang/Exception;

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v1

    .line 277
    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 280
    throw v4

    .line 281
    :cond_7
    new-instance v4, Ljava/lang/Exception;

    .line 283
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 287
    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 290
    throw v4

    .line 291
    :cond_8
    :goto_3
    const-string v1, "Empty slot_count_map"

    .line 293
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 299
    new-instance v1, Landroid/util/Pair;

    .line 301
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    move-result-object v4

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    move-result-object v5

    .line 309
    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    goto :goto_5

    .line 316
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 322
    new-instance v1, Landroid/util/Pair;

    .line 324
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    move-result-object v4

    .line 328
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    move-result-object v5

    .line 332
    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_9
    :goto_5
    sput-object v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 340
    :cond_a
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 342
    if-eqz v1, :cond_e

    .line 344
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 347
    move-result v4

    .line 348
    if-gtz v4, :cond_b

    .line 350
    goto :goto_7

    .line 351
    :cond_b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 354
    move-result-object v4

    .line 355
    check-cast v4, Landroid/util/Pair;

    .line 357
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 359
    check-cast v4, Ljava/lang/Integer;

    .line 361
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 364
    move-result v4

    .line 365
    sput v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 367
    move v4, v2

    .line 368
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 371
    move-result v5

    .line 372
    if-ge v4, v5, :cond_f

    .line 374
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    move-result-object v5

    .line 378
    check-cast v5, Landroid/util/Pair;

    .line 380
    if-nez v5, :cond_c

    .line 382
    const-string/jumbo v5, "invalid slotCountMap item: "

    .line 385
    const-string v6, "/"

    .line 387
    invoke-static {v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 394
    move-result v1

    .line 395
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    move-result-object v1

    .line 402
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 407
    goto :goto_8

    .line 408
    :cond_c
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 410
    check-cast v6, Ljava/lang/Integer;

    .line 412
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 415
    move-result v6

    .line 416
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 418
    check-cast v5, Ljava/lang/Integer;

    .line 420
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 423
    move-result v5

    .line 424
    mul-int/lit16 v6, v6, 0x400

    .line 426
    if-lt v0, v6, :cond_d

    .line 428
    sput v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 430
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 432
    goto :goto_6

    .line 433
    :cond_e
    :goto_7
    const-string/jumbo v1, "invalid slotCountMap"

    .line 436
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_f
    :goto_8
    const-string/jumbo v1, "swap_total: "

    .line 442
    const-string v2, ", slot_count: "

    .line 444
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    move-result-object v0

    .line 448
    sget v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 450
    invoke-static {v0, v1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 453
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 10
    invoke-direct {v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->INSTANCE:Lcom/android/server/chimera/ppn/PerProcessNandswap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public static final getMinSwapFreePercentage()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.min_swap_free_percentage"

    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public static final getPolicyVersion()I
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 3
    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchSupported()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x3

    .line 11
    if-eqz v0, :cond_0

    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    const-string/jumbo v3, "ro.sys.kernelmemory.nandswap.policy_version"

    .line 19
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v3

    .line 27
    sput-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 29
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v3

    .line 33
    if-lt v3, v1, :cond_1

    .line 35
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v1

    .line 41
    if-le v1, v2, :cond_2

    .line 43
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "Invalid policy_version ("

    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    sget-object v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, ").Reset it as "

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v2, "."

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    const-string v2, "PerProcessNandswap"

    .line 74
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 83
    :cond_2
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PolicyVersion:Ljava/lang/Integer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 88
    move-result v0

    .line 89
    return v0
.end method

.method public static final getSlotCountMapString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 3
    const-string v1, ""

    .line 5
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/util/Pair;

    .line 30
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v2, 0x1

    .line 43
    :goto_0
    sget-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v3

    .line 49
    if-ge v2, v3, :cond_2

    .line 51
    sget-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/util/Pair;

    .line 59
    if-nez v3, :cond_1

    .line 61
    return-object v1

    .line 62
    :cond_1
    const-string v4, ","

    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 69
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x0

    .line 11
    cmp-long p0, v2, v4

    .line 13
    const-wide/16 v6, 0x64

    .line 15
    if-gtz p0, :cond_0

    .line 17
    move-wide v0, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    mul-long/2addr v0, v6

    .line 20
    div-long/2addr v0, v2

    .line 21
    :goto_0
    cmp-long p0, v0, v4

    .line 23
    if-lez p0, :cond_1

    .line 25
    move-wide v4, v0

    .line 26
    :cond_1
    cmp-long p0, v4, v6

    .line 28
    if-gez p0, :cond_2

    .line 30
    move-wide v6, v4

    .line 31
    :cond_2
    long-to-int p0, v6

    .line 32
    return p0
.end method

.method public static getWritebackSizePid(I)[J
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "Swap:"

    .line 7
    const-string v2, "Writeback:"

    .line 9
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "/proc/"

    .line 15
    const-string v3, "/smaps_rollup"

    .line 17
    invoke-static {p0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const/4 v2, 0x2

    .line 22
    new-array v3, v2, [J

    .line 24
    const/4 v4, 0x1

    .line 25
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 27
    new-instance v6, Ljava/io/FileReader;

    .line 29
    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v6, 0x0

    .line 36
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 39
    move-result-object v7

    .line 40
    if-eqz v7, :cond_4

    .line 42
    aget-object v8, v1, v6

    .line 44
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    move-result v8

    .line 48
    if-nez v8, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v8, "\\s+"

    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    move-result-object v7

    .line 57
    array-length v8, v7

    .line 58
    const/4 v9, 0x3

    .line 59
    if-ne v8, v9, :cond_3

    .line 61
    aget-object v7, v7, v4

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    move-result v7

    .line 67
    int-to-long v7, v7

    .line 68
    aput-wide v7, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 75
    if-ne v6, v2, :cond_1

    .line 77
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    goto :goto_4

    .line 81
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    goto :goto_3

    .line 85
    :catchall_1
    move-exception v2

    .line 86
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    :catch_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 96
    const-string/jumbo v1, "failed to read "

    .line 99
    const-string v2, "PerProcessNandswap"

    .line 101
    invoke-static {v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_5
    :goto_4
    aget-wide v1, v3, v4

    .line 106
    const-wide/16 v4, 0x0

    .line 108
    cmp-long p0, v1, v4

    .line 110
    if-nez p0, :cond_6

    .line 112
    goto :goto_5

    .line 113
    :cond_6
    move-object v0, v3

    .line 114
    :goto_5
    return-object v0
.end method

.method public static final isDebugEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.debug"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public static final isPrefetchActionEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-lt v0, v1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.prefetch_action"

    .line 18
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    .line 28
    :cond_1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public static final isPrefetchSupported()Z
    .locals 8

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_3

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x5

    .line 11
    const-string v2, "PerProcessNandswap"

    .line 13
    if-ge v0, v1, :cond_2

    .line 15
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    move-result v1

    .line 19
    sget-boolean v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    .line 21
    if-eqz v3, :cond_0

    .line 23
    invoke-static {v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->prefetchProcessFast(I)J

    .line 26
    move-result-wide v3

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->prefetchProcess(I)J

    .line 31
    move-result-wide v3

    .line 32
    :goto_1
    const-string/jumbo v5, "prefetch trial: pid="

    .line 35
    const-string v6, " ("

    .line 37
    const-string v7, ") ret="

    .line 39
    invoke-static {v1, v0, v5, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1, v3, v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 46
    const-wide/16 v5, 0x0

    .line 48
    cmp-long v1, v3, v5

    .line 50
    if-lez v1, :cond_1

    .line 52
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    sput-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    .line 56
    const-string/jumbo v1, "prefetch supported ("

    .line 59
    const-string v3, ")"

    .line 61
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :goto_2
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 76
    const-string/jumbo v0, "prefetch not supported"

    .line 79
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_3
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PrefetchSupported:Ljava/lang/Boolean;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    move-result v0

    .line 88
    return v0
.end method

.method public static final isWritebackOnBGEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-lt v0, v1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.writeback_on_bg"

    .line 18
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    .line 28
    :cond_1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public static final isWritebackOnFreezeEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-lt v0, v1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.writeback_on_bg"

    .line 18
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    .line 28
    :cond_1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__WritebackOnFreezeEnabled:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method private static native prefetchProcess(I)J
.end method

.method private static native prefetchProcessFast(I)J
.end method


# virtual methods
.method public final checkProcessStatusForNandswap(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-direct {v0, p3, p1, p2, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 21
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput p2, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 33
    :goto_0
    return-void
.end method

.method public final dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "    swap_after_boot: "

    .line 3
    const-string v1, "    pageout_cached_empty: "

    .line 5
    const-string v2, "    writeback_on_freeze: "

    .line 7
    const-string v3, "    writeback_on_bg: "

    .line 9
    const-string v4, "    slot_count_map: "

    .line 11
    const-string v5, "  policy_version: "

    .line 13
    const-string v6, "  min_swap_free_percentage: "

    .line 15
    const-string v7, "  debug: "

    .line 17
    :try_start_0
    const-string v8, "== PerProcessNandswap dump start =="

    .line 19
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    array-length v8, p2

    .line 23
    const/4 v9, 0x1

    .line 24
    if-le v8, v9, :cond_5

    .line 26
    const-string/jumbo p0, "writeback"

    .line 29
    aget-object v0, p2, v9

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 37
    const-string/jumbo p0, "writeback cmd is not supported with ship build"

    .line 40
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    goto/16 :goto_3

    .line 45
    :cond_0
    const-string/jumbo p0, "prefetch"

    .line 48
    aget-object v0, p2, v9

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_1

    .line 56
    const-string/jumbo p0, "prefetch cmd is not supported with ship build"

    .line 59
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    goto/16 :goto_3

    .line 64
    :cond_1
    const-string/jumbo p0, "quotaPPN"

    .line 67
    aget-object v0, p2, v9

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_2

    .line 75
    goto/16 :goto_3

    .line 77
    :cond_2
    const-string/jumbo p0, "quickswap"

    .line 80
    aget-object v0, p2, v9

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_3

    .line 88
    goto/16 :goto_3

    .line 90
    :cond_3
    const-string/jumbo p0, "swap_after_boot"

    .line 93
    aget-object v0, p2, v9

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_4

    .line 101
    goto/16 :goto_3

    .line 103
    :cond_4
    const-string/jumbo p0, "setprop"

    .line 106
    aget-object p2, p2, v9

    .line 108
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_b

    .line 114
    const-string/jumbo p0, "setprop cmd is not supported with ship build"

    .line 117
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    goto/16 :goto_3

    .line 122
    :cond_5
    const-string p2, "Configurations"

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string p2, "  feature enable: true"

    .line 129
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 140
    move-result v7

    .line 141
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    .line 159
    move-result v6

    .line 160
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    .line 178
    move-result v5

    .line 179
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSlotCountMapString()Ljava/lang/String;

    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    .line 216
    move-result v3

    .line 217
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    .line 235
    move-result v2

    .line 236
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    .line 248
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPageoutCachedEmptyEnable()Z

    .line 254
    move-result v1

    .line 255
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object p2

    .line 262
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isSwapAfterBootEnable()Z

    .line 273
    move-result v0

    .line 274
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isSwapAfterBootEnable()Z

    .line 287
    move-result p2

    .line 288
    if-eqz p2, :cond_6

    .line 290
    const-string p2, "      swap_after_boot log: "

    .line 292
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

    .line 297
    invoke-virtual {p2}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 300
    move-result-object p2

    .line 301
    check-cast p2, [Ljava/lang/String;

    .line 303
    array-length v0, p2

    .line 304
    const/4 v1, 0x0

    .line 305
    :goto_0
    if-ge v1, v0, :cond_6

    .line 307
    aget-object v2, p2, v1

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    .line 311
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    const-string v4, "      "

    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    add-int/lit8 v1, v1, 0x1

    .line 331
    goto :goto_0

    .line 332
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 334
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    const-string v0, "    key app enable: "

    .line 339
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    .line 345
    move-result v0

    .line 346
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    move-result-object p2

    .line 353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    const-string v0, "    skip_nandswap_for_empty_ppn: "

    .line 363
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 368
    if-nez v0, :cond_7

    .line 370
    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.skip_nandswap_for_empty_ppn"

    .line 373
    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 376
    move-result v0

    .line 377
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 380
    move-result-object v0

    .line 381
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 383
    :cond_7
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 385
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 388
    move-result v0

    .line 389
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    move-result-object p2

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    .line 401
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    const-string v0, "    writeback enable: "

    .line 406
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-boolean v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 411
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object p2

    .line 418
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    iget-boolean p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 423
    if-eqz p2, :cond_8

    .line 425
    new-instance p2, Ljava/lang/StringBuilder;

    .line 427
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    const-string v0, "      writeback limit enable: "

    .line 432
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackLimitEnabled()Z

    .line 438
    move-result v0

    .line 439
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    move-result-object p2

    .line 446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance p2, Ljava/lang/StringBuilder;

    .line 451
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    const-string v0, "      prefetch_action: "

    .line 456
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchActionEnabled()Z

    .line 462
    move-result v0

    .line 463
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    move-result-object p2

    .line 470
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance p2, Ljava/lang/StringBuilder;

    .line 475
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    const-string v0, "      quota: "

    .line 480
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 486
    move-result-wide v0

    .line 487
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object p2

    .line 494
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance p2, Ljava/lang/StringBuilder;

    .line 499
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    const-string v0, "      pending cached apps to be PPR count="

    .line 504
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 509
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 512
    move-result v0

    .line 513
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    move-result-object p2

    .line 520
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance p2, Ljava/lang/StringBuilder;

    .line 525
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    const-string v0, "      pending & delayed cached apps to be PPR count="

    .line 530
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 538
    move-result v0

    .line 539
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    move-result-object p2

    .line 546
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 551
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    const-string v0, "  quickswap enable: "

    .line 556
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    .line 562
    move-result v0

    .line 563
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    move-result-object p2

    .line 570
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    .line 576
    move-result p2

    .line 577
    if-eqz p2, :cond_9

    .line 579
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 581
    if-eqz p2, :cond_9

    .line 583
    invoke-virtual {p2, p1}, Lcom/android/server/chimera/ppn/QuickSwap;->dump(Ljava/io/PrintWriter;)V

    .line 586
    :cond_9
    iget-boolean p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 588
    if-eqz p2, :cond_b

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->dumpProcessList(Ljava/io/PrintWriter;)V

    .line 593
    const-string p0, "\nPPNandswap history"

    .line 595
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    sget-object p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapLogger;->mHistory:Ljava/util/ArrayList;

    .line 600
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 604
    move-result-object p2

    .line 605
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 608
    move-result v0

    .line 609
    if-eqz v0, :cond_a

    .line 611
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    move-result-object v0

    .line 615
    check-cast v0, Ljava/lang/String;

    .line 617
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    goto :goto_1

    .line 621
    :catchall_0
    move-exception p2

    .line 622
    goto :goto_2

    .line 623
    :cond_a
    monitor-exit p0

    .line 624
    goto :goto_3

    .line 625
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 627
    :catch_0
    const-string/jumbo p0, "failed to dumpInfo"

    .line 630
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    :cond_b
    :goto_3
    const-string p0, "\n== PerProcessNandswap dump end =="

    .line 635
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public final dumpProcessList(Ljava/io/PrintWriter;)V
    .locals 32

    .line 1
    move-object/from16 v0, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    sget-boolean v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->IS_DEBUG_LEVEL_LOW:Z

    .line 6
    if-eqz v3, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    const-string v3, "\nProcessList state"

    .line 11
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    move-object/from16 v3, p0

    .line 16
    iget-object v3, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 18
    iget-object v3, v3, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v3, v1, v1, v4}, Lcom/android/server/am/ActivityManagerService;->collectProcesses(IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    move-result-object v5

    .line 25
    if-eqz v5, :cond_1

    .line 27
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_2

    .line 33
    :cond_1
    move/from16 v19, v1

    .line 35
    goto/16 :goto_9

    .line 37
    :cond_2
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 40
    move-result-object v8

    .line 41
    sget-object v9, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    .line 43
    array-length v9, v9

    .line 44
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 47
    move-result v10

    .line 48
    new-array v11, v9, [J

    .line 50
    new-array v12, v9, [Ljava/util/ArrayList;

    .line 52
    new-instance v13, Landroid/util/SparseArray;

    .line 54
    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 60
    move-result-wide v14

    .line 61
    move v4, v1

    .line 62
    :goto_0
    if-ge v4, v10, :cond_d

    .line 64
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v16

    .line 68
    move-object/from16 v6, v16

    .line 70
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 72
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 74
    iget v2, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 76
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 78
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    .line 81
    move-result v6

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v1

    .line 86
    move-object/from16 v20, v5

    .line 88
    iget-object v5, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 96
    if-nez v1, :cond_3

    .line 98
    move-object/from16 v21, v3

    .line 100
    move/from16 v22, v4

    .line 102
    const/4 v3, 0x1

    .line 103
    const/4 v5, 0x0

    .line 104
    const/16 v19, 0x0

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 109
    move-object/from16 v21, v3

    .line 111
    move/from16 v22, v4

    .line 113
    int-to-long v3, v5

    .line 114
    iget-wide v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 116
    const/4 v5, 0x2

    .line 117
    new-array v5, v5, [J

    .line 119
    const/16 v19, 0x0

    .line 121
    aput-wide v3, v5, v19

    .line 123
    const/4 v3, 0x1

    .line 124
    aput-wide v0, v5, v3

    .line 126
    :goto_1
    if-nez v5, :cond_4

    .line 128
    move v0, v3

    .line 129
    goto/16 :goto_7

    .line 131
    :cond_4
    aget-wide v0, v5, v19

    .line 133
    long-to-int v0, v0

    .line 134
    aget-wide v4, v5, v3

    .line 136
    sub-long v29, v14, v4

    .line 138
    if-nez v2, :cond_5

    .line 140
    :goto_2
    move v0, v3

    .line 141
    :goto_3
    const/16 v19, 0x0

    .line 143
    goto/16 :goto_7

    .line 145
    :cond_5
    invoke-static {v2}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getWritebackSizePid(I)[J

    .line 148
    move-result-object v1

    .line 149
    if-nez v1, :cond_6

    .line 151
    goto :goto_2

    .line 152
    :cond_6
    aget-wide v4, v1, v3

    .line 154
    const-wide/16 v17, 0x0

    .line 156
    cmp-long v3, v4, v17

    .line 158
    if-nez v3, :cond_8

    .line 160
    if-eqz v0, :cond_7

    .line 162
    goto :goto_4

    .line 163
    :cond_7
    const/4 v0, 0x1

    .line 164
    goto :goto_3

    .line 165
    :cond_8
    :goto_4
    new-instance v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v5, " (pid "

    .line 177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v5, ")"

    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v31

    .line 192
    const/16 v19, 0x0

    .line 194
    aget-wide v25, v1, v19

    .line 196
    const/4 v4, 0x1

    .line 197
    aget-wide v27, v1, v4

    .line 199
    move-object/from16 v23, v3

    .line 201
    move/from16 v24, v0

    .line 203
    invoke-direct/range {v23 .. v31}, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;-><init>(IJJJLjava/lang/String;)V

    .line 206
    invoke-virtual {v13, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    move/from16 v0, v19

    .line 211
    :goto_5
    if-ge v0, v9, :cond_c

    .line 213
    add-int/lit8 v2, v9, -0x1

    .line 215
    if-eq v0, v2, :cond_a

    .line 217
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    .line 219
    aget v5, v2, v0

    .line 221
    if-lt v6, v5, :cond_9

    .line 223
    add-int/lit8 v5, v0, 0x1

    .line 225
    aget v2, v2, v5

    .line 227
    if-ge v6, v2, :cond_9

    .line 229
    goto :goto_6

    .line 230
    :cond_9
    add-int/2addr v0, v4

    .line 231
    goto :goto_5

    .line 232
    :cond_a
    :goto_6
    aget-wide v5, v11, v0

    .line 234
    aget-wide v1, v1, v4

    .line 236
    add-long/2addr v5, v1

    .line 237
    aput-wide v5, v11, v0

    .line 239
    aget-object v1, v12, v0

    .line 241
    if-nez v1, :cond_b

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    .line 245
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    aput-object v1, v12, v0

    .line 250
    :cond_b
    aget-object v0, v12, v0

    .line 252
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 v0, 0x1

    .line 256
    goto :goto_7

    .line 257
    :cond_c
    move v0, v4

    .line 258
    :goto_7
    add-int/lit8 v4, v22, 0x1

    .line 260
    move-object/from16 v0, p1

    .line 262
    move/from16 v1, v19

    .line 264
    move-object/from16 v5, v20

    .line 266
    move-object/from16 v3, v21

    .line 268
    goto/16 :goto_0

    .line 270
    :cond_d
    move/from16 v19, v1

    .line 272
    move-object v1, v3

    .line 273
    const/4 v0, 0x1

    .line 274
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 276
    new-instance v2, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;

    .line 278
    invoke-direct {v2, v13, v11, v12, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 281
    invoke-virtual {v1, v2}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    .line 286
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    move/from16 v1, v19

    .line 291
    :goto_8
    if-ge v1, v9, :cond_f

    .line 293
    aget-wide v24, v11, v1

    .line 295
    const-wide/16 v2, 0x0

    .line 297
    cmp-long v4, v24, v2

    .line 299
    if-eqz v4, :cond_e

    .line 301
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    .line 303
    aget-object v28, v2, v1

    .line 305
    new-instance v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    .line 307
    const/16 v21, 0x0

    .line 309
    const-wide/16 v26, -0x1

    .line 311
    const-wide/16 v22, 0x0

    .line 313
    move-object/from16 v20, v2

    .line 315
    invoke-direct/range {v20 .. v28}, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;-><init>(IJJJLjava/lang/String;)V

    .line 318
    aget-object v3, v12, v1

    .line 320
    iput-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_e
    const/4 v2, 0x1

    .line 326
    add-int/2addr v1, v2

    .line 327
    goto :goto_8

    .line 328
    :goto_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 331
    move-result-object v0

    .line 332
    :cond_f
    move/from16 v1, v19

    .line 334
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 337
    move-result v2

    .line 338
    if-ge v1, v2, :cond_12

    .line 340
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 343
    move-result-object v2

    .line 344
    check-cast v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    .line 346
    iget-wide v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    .line 348
    const-wide/16 v5, 0x0

    .line 350
    cmp-long v3, v3, v5

    .line 352
    if-eqz v3, :cond_11

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    const-string v4, "    "

    .line 358
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    iget-object v4, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    .line 363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v4, ": "

    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-wide v7, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    .line 373
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object v3

    .line 380
    move-object/from16 v7, p1

    .line 382
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    .line 387
    if-eqz v3, :cond_10

    .line 389
    new-instance v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$3;

    .line 391
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 394
    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 397
    move/from16 v3, v19

    .line 399
    :goto_b
    iget-object v8, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 404
    move-result v8

    .line 405
    if-ge v3, v8, :cond_10

    .line 407
    iget-object v8, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    .line 409
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 412
    move-result-object v8

    .line 413
    check-cast v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    .line 415
    const-string v9, "        "

    .line 417
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    new-instance v9, Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    iget-object v10, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    .line 427
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-wide v10, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    .line 435
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 438
    const-string v10, " "

    .line 440
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-wide v11, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->swap:J

    .line 445
    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget v11, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->ppnState:I

    .line 453
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-wide v10, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->lastNandswapTimeDiff:J

    .line 461
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    move-result-object v8

    .line 468
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    const/4 v8, 0x1

    .line 472
    add-int/2addr v3, v8

    .line 473
    goto :goto_b

    .line 474
    :cond_10
    :goto_c
    const/4 v8, 0x1

    .line 475
    goto :goto_d

    .line 476
    :cond_11
    move-object/from16 v7, p1

    .line 478
    goto :goto_c

    .line 479
    :goto_d
    add-int/2addr v1, v8

    .line 480
    goto/16 :goto_a

    .line 482
    :cond_12
    return-void
.end method

.method public final init(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraStrategy;)V
    .locals 13

    .line 1
    const-string v0, "PerProcessNandswap"

    .line 3
    const-string v1, "  prefetch_action: "

    .line 5
    const-string v2, "  writeback_on_freeze: "

    .line 7
    const-string v3, "  writeback_on_bg: "

    .line 9
    const-string v4, "  slot_count: "

    .line 11
    const-string/jumbo v5, "policy_version: "

    .line 14
    const-string/jumbo v6, "quota: "

    .line 17
    const-string v7, "WritebackQuotaAvailable: "

    .line 19
    const-string v8, "WritebackLimitEnabled: "

    .line 21
    const-string v9, "PrefetchSupported: "

    .line 23
    const-string v10, "WritebackEnabled: "

    .line 25
    const/4 v11, 0x0

    .line 26
    :try_start_0
    const-string/jumbo v12, "init start"

    .line 29
    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackEnabled()Z

    .line 35
    move-result v12

    .line 36
    if-nez v12, :cond_0

    .line 38
    const-string p1, "Writeback is disabled"

    .line 40
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-boolean v11, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 45
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->decideSlotCount()V

    .line 49
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__setWriteBoosterPath()Z

    .line 52
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 54
    iput-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->initThreadAndHandler()V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_1

    .line 65
    new-instance p2, Lcom/android/server/chimera/ppn/QuickSwap;

    .line 67
    invoke-direct {p2, p0, p1}, Lcom/android/server/chimera/ppn/QuickSwap;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;Lcom/android/server/chimera/SystemRepository;)V

    .line 70
    iput-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 72
    :cond_1
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackEnabled()Z

    .line 83
    move-result p2

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchSupported()Z

    .line 102
    move-result p2

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackLimitEnabled()Z

    .line 121
    move-result p2

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    .line 140
    move-result p2

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 159
    move-result-wide v6

    .line 160
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    .line 178
    move-result p2

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    sget p2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object p1

    .line 203
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    .line 208
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    .line 214
    move-result p2

    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 222
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    .line 233
    move-result p2

    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 241
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchActionEnabled()Z

    .line 252
    move-result p2

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object p1

    .line 260
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string/jumbo p1, "init success"

    .line 266
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isSwapAfterBootEnable()Z

    .line 272
    move-result p1

    .line 273
    if-nez p1, :cond_2

    .line 275
    goto :goto_0

    .line 276
    :cond_2
    const-string/jumbo p1, "ro.sys.kernelmemory.nandswap.swap_after_boot_delay_mills"

    .line 279
    const p2, 0x15f90

    .line 282
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 285
    move-result p1

    .line 286
    if-gez p1, :cond_3

    .line 288
    goto :goto_0

    .line 289
    :cond_3
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 291
    const/4 v1, 0x5

    .line 292
    int-to-long v2, p1

    .line 293
    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 297
    :catch_0
    const-string/jumbo p1, "init failed"

    .line 300
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput-boolean v11, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 305
    :goto_0
    return-void
.end method

.method public final initThreadAndHandler()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/server/ServiceThread;

    .line 8
    const-string v2, "PerProcessNandswapThread"

    .line 10
    const/16 v3, 0xa

    .line 12
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 15
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V

    .line 25
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 27
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 29
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-static {v0, v2}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 37
    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 39
    if-lez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    .line 43
    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/android/server/ServiceThread;

    .line 47
    const-string v2, "PPNandswapMsgThread"

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 53
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 60
    invoke-direct {v0, p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;-><init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V

    .line 63
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 65
    :cond_1
    return-void
.end method

.method public final isKeyAppEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.key_app"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__KeyAppEnable:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final isPageoutCachedEmptyEnable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getPolicyVersion()I

    .line 10
    move-result v0

    .line 11
    const/4 v3, 0x3

    .line 12
    if-lt v0, v3, :cond_0

    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    const-string/jumbo v3, "ro.sys.kernelmemory.nandswap.pageout_cached_empty"

    .line 20
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__PageoutCachedEmptyEnable:Ljava/lang/Boolean;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 38
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 40
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 42
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 44
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_2

    .line 52
    move v1, v2

    .line 53
    :cond_2
    return v1
.end method

.method public final isQuickSwapEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.quickswap"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__QuickSwapEnable:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final isSwapAfterBootEnable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SwapAfterBootEnable:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.swap_after_boot"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo v0, "ro.factory.factory_binary"

    .line 18
    const-string v2, "Unknown"

    .line 20
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v2, "factory"

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SwapAfterBootEnable:Ljava/lang/Boolean;

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SwapAfterBootEnable:Ljava/lang/Boolean;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final notifyDiedAppToPPR(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 8
    if-gtz v0, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 13
    const/4 v0, 0x3

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_0
    return-void
.end method

.method public final notifyReentryAppToPPR(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 8
    if-gtz v0, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_0
    return-void
.end method

.method public final onProcessFrozen(IILjava/lang/String;IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 8
    if-lez v0, :cond_2

    .line 10
    const/16 v0, 0x64

    .line 12
    if-lt p4, v0, :cond_2

    .line 14
    const/16 v0, 0x3e7

    .line 16
    if-gt p4, v0, :cond_2

    .line 18
    if-eqz p5, :cond_2

    .line 20
    :try_start_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    .line 23
    move-result p5

    .line 24
    if-nez p5, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p5, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 29
    invoke-direct {p5, p1, p3, p2, p4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(ILjava/lang/String;II)V

    .line 32
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 34
    const/4 p1, 0x7

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, p1, p2, p2, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    .locals 2

    .line 1
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 3
    if-lez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    :cond_0
    return-void
.end method
