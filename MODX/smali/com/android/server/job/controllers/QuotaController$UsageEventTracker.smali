.class public final Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    const/4 v1, 0x7

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    const/16 v1, 0xc

    .line 16
    if-eq v0, v1, :cond_0

    .line 18
    const/16 v1, 0x9

    .line 20
    if-eq v0, v1, :cond_0

    .line 22
    const/16 v1, 0xa

    .line 24
    if-eq v0, v1, :cond_0

    .line 26
    const/16 v1, 0x17

    .line 28
    if-eq v0, v1, :cond_0

    .line 30
    const/16 v1, 0x18

    .line 32
    if-eq v0, v1, :cond_0

    .line 34
    sget-boolean p0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 36
    if-eqz p0, :cond_1

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    const-string p1, "Dropping usage event "

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    const-string p1, "JobScheduler.Quota"

    .line 58
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 64
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 66
    const/4 v0, 0x5

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 75
    :cond_1
    :goto_0
    return-void
.end method
