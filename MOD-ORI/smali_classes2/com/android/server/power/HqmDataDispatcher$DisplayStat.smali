.class public final Lcom/android/server/power/HqmDataDispatcher$DisplayStat;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BRIGHTNESS_DIM:I

.field public static final BRIGHTNESS_HIGHEST:I


# instance fields
.field public final mBrightnessDuration:[J

.field public mCurrentBrightnessRange:I

.field public final mDisplayType:I

.field public mScreenBrightnessHighestDuration:J

.field public mScreenBrightnessHighestStarted:Z

.field public final mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public final mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenCurtainCount:J

.field public mScreenCurtainDuration:J

.field public mScreenCurtainEnabled:Z

.field public final mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenOnCount:J

.field public mScreenOnDuration:J

.field public final mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

.field public mScreenState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x10e0135

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_DIM:I

    .line 18
    .line 19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x10e0137

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_HIGHEST:I

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/HqmDataDispatcher$Clock;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v2, v1, [Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 14
    .line 15
    new-array v2, v1, [J

    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 18
    .line 19
    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 27
    .line 28
    new-instance p1, Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 34
    .line 35
    new-instance p1, Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 36
    .line 37
    invoke-direct {p1, p2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 41
    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 45
    .line 46
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    .line 47
    .line 48
    move p1, v0

    .line 49
    :goto_0
    if-ge p1, v1, :cond_0

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 52
    .line 53
    new-instance v5, Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 54
    .line 55
    invoke-direct {v5, p2}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    .line 56
    .line 57
    .line 58
    aput-object v5, v4, p1

    .line 59
    .line 60
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    .line 64
    .line 65
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    .line 66
    .line 67
    iput-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 70
    .line 71
    return-void
.end method
