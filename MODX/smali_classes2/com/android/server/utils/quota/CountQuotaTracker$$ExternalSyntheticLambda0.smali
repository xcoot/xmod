.class public final synthetic Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
