.class public final synthetic Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/UiModeManager$OnProjectionStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;

    .line 6
    return-void
.end method


# virtual methods
.method public final onProjectionStateChanged(ILjava/util/Set;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    .line 13
    if-ne p2, p1, :cond_1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    sget-boolean p2, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 18
    if-eqz p2, :cond_2

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    const-string v0, "Projection state changed: "

    .line 24
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    const-string v0, "JobScheduler.DeviceIdlenessTracker"

    .line 36
    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    .line 41
    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->exitIdle()V

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const-string p1, "Projection ended"

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->maybeScheduleIdlenessCheck(Ljava/lang/String;)V

    .line 52
    :goto_1
    return-void
.end method
