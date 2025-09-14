.class public final synthetic Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 2
    .line 3
    const-string v0, "handleAlarmFired()"

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningLocked()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method
