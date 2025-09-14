.class public final synthetic Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/QuotaTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;JLcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$1:I

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$2:J

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$4:Landroid/app/AlarmManager$OnAlarmListener;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$2:J

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$4:Landroid/app/AlarmManager$OnAlarmListener;

    .line 10
    .line 11
    iget-object p0, v0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-class p0, Lcom/android/server/SystemServiceManager;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/SystemServiceManager;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 25
    .line 26
    const/16 v1, 0x3e8

    .line 27
    .line 28
    if-lt p0, v1, :cond_0

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 31
    .line 32
    check-cast v0, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 33
    .line 34
    iget-object v7, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

    .line 35
    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p0, "QuotaTracker"

    .line 41
    .line 42
    const-string v0, "Alarm not scheduled because boot isn\'t completed"

    .line 43
    .line 44
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method
