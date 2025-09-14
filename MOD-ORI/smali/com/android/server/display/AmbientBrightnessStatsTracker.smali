.class public final Lcom/android/server/display/AmbientBrightnessStatsTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

.field public static final DEBUG:Z

.field static final MAX_DAYS_TO_TRACK:I = 0x7


# instance fields
.field public final mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

.field public mCurrentAmbientBrightness:F

.field public mCurrentUserId:I

.field public final mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

.field public final mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "AmbientBrightnessStatsTracker"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->DEBUG:Z

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
        0x43960000    # 300.0f
        0x447a0000    # 1000.0f
        0x453b8000    # 3000.0f
        0x461c4000    # 10000.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/os/UserManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 12
    .line 13
    new-instance p1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 31
    .line 32
    const/high16 p1, -0x40800000    # -1.0f

    .line 33
    .line 34
    iput p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    .line 35
    .line 36
    return-void
.end method
