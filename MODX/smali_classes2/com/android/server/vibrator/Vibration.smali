.class public abstract Lcom/android/server/vibrator/Vibration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final DEBUG_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

.field public final callerToken:Landroid/os/IBinder;

.field public final id:J

.field public final stats:Lcom/android/server/vibrator/VibrationStats;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "HH:mm:ss.SSS"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 8
    .line 9
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/android/server/vibrator/Vibration;->sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/vibrator/VibrationStats;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iput-wide v1, v0, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iput-wide v1, v0, Lcom/android/server/vibrator/VibrationStats;->mCreateTimeDebug:J

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    iput v1, v0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUid:I

    .line 37
    .line 38
    iput v1, v0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUsage:I

    .line 39
    .line 40
    iput v1, v0, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/android/server/vibrator/Vibration;->sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-long v0, v0

    .line 54
    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->callerToken:Landroid/os/IBinder;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public abstract isRepeating()Z
.end method
