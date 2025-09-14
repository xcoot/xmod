.class public final synthetic Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/StateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorStrategyImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v0, "handleConfigurationInternalMaybeChanged:"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method
