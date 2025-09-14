.class public final synthetic Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final elapsedTimeMillis()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method
