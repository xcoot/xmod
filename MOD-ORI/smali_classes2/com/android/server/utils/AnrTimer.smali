.class public abstract Lcom/android/server/utils/AnrTimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;


# instance fields
.field public final mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

.field public final mHandler:Landroid/os/Handler;

.field public final mLabel:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public final mTimerArgMap:Landroid/util/SparseArray;

.field public final mWhat:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/utils/AnrTimer$Injector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    .line 7
    .line 8
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 9
    .line 10
    const-class v1, Lcom/android/server/utils/AnrTimer$Error;

    .line 11
    .line 12
    const/16 v2, 0x14

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/util/LongSparseArray;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/android/server/utils/AnrTimer$1;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    iput p2, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p4, Lcom/android/server/utils/AnrTimer$Args;->mInjector:Lcom/android/server/utils/AnrTimer$Injector;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/android/server/utils/Flags;->anrTimerService()Z

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 43
    .line 44
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;ZLcom/android/server/utils/AnrTimer$Injector;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/utils/Flags;->anrTimerService()Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private expire(IIIJ)Z
    .locals 6

    .line 1
    const-string v0, "expired"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string p3, "%s(%d,%d,%d,%s,%d)"

    .line 26
    .line 27
    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-wide/16 p3, 0x40

    .line 32
    .line 33
    const-string p5, "AnrTimerTrack"

    .line 34
    .line 35
    invoke-static {p3, p4, p5, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p2

    .line 41
    :try_start_0
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    if-nez p3, :cond_0

    .line 48
    .line 49
    const-string p3, "AnrTimer"

    .line 50
    .line 51
    const-string p4, "failed to expire timer %s:%d : arg not found"

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p4, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    monitor-exit p2

    .line 71
    const/4 p0, 0x0

    .line 72
    return p0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object p1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    .line 77
    .line 78
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    .line 79
    .line 80
    invoke-static {p1, p0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x1

    .line 88
    return p0

    .line 89
    :goto_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p0
.end method

.method private static native nativeAnrTimerAccept(JI)Z
.end method

.method private static native nativeAnrTimerCancel(JI)Z
.end method

.method private static native nativeAnrTimerClose(J)I
.end method

.method private native nativeAnrTimerCreate(Ljava/lang/String;ZZ)J
.end method

.method private static native nativeAnrTimerDiscard(JI)Z
.end method

.method private static native nativeAnrTimerDump(J)[Ljava/lang/String;
.end method

.method private static native nativeAnrTimerRelease(JI)Z
.end method

.method private static native nativeAnrTimerStart(JIIJ)I
.end method

.method private static native nativeAnrTimerSupported()Z
.end method


# virtual methods
.method public final cancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final discard()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer;->close()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public abstract getPid(Ljava/lang/Object;)I
.end method

.method public abstract getUid(Ljava/lang/Object;)I
.end method

.method public final start(JLjava/lang/Object;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    move-wide p1, v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/android/server/utils/AnrTimer;->getPid(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Lcom/android/server/utils/AnrTimer;->getUid(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, v0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    .line 21
    .line 22
    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
