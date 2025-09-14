.class public final Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEventType:I

.field public final mFloatValue:F

.field public final mLongValue:J


# direct methods
.method public constructor <init>(IJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mEventType:I

    .line 6
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mFloatValue:F

    .line 8
    iput-wide p2, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mLongValue:J

    .line 10
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mFloatValue:F

    .line 3
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mEventType:I

    .line 5
    if-eqz v1, :cond_4

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_3

    .line 10
    const/4 p0, 0x2

    .line 11
    if-eq v1, p0, :cond_2

    .line 13
    const/4 p0, 0x3

    .line 14
    if-eq v1, p0, :cond_1

    .line 16
    const/4 p0, 0x4

    .line 17
    if-eq v1, p0, :cond_0

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "FIXME invalid event type:"

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    const-string p0, "CSD lowering volume to RS1"

    .line 36
    return-object p0

    .line 37
    :cond_1
    const-string p0, "CSD accumulating: RS2 entered"

    .line 39
    return-object p0

    .line 40
    :cond_2
    const-string p0, "CSD reached 500%"

    .line 42
    return-object p0

    .line 43
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 45
    const/high16 v2, 0x42c80000    # 100.0f

    .line 47
    mul-float/2addr v0, v2

    .line 48
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    move-result-object v0

    .line 52
    iget-wide v2, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mLongValue:J

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    move-result-object p0

    .line 58
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 62
    const-string/jumbo v0, "dose update CSD=%.1f%% total duration=%d"

    .line 65
    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    move-result-object p0

    .line 74
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 78
    const-string/jumbo v0, "momentary exposure MEL=%.2f"

    .line 81
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method
