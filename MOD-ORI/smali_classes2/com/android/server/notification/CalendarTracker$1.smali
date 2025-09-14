.class public final Lcom/android/server/notification/CalendarTracker$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/CalendarTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/CalendarTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 8
    sget-boolean p0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "onChange selfChange="

    const-string v0, "ConditionProviders.CT"

    .line 9
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onChange selfChange="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " uri="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " u="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    iget-object p1, p1, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string p2, "ConditionProviders.CT"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/EventConditionProvider$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-boolean p1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "ConditionProviders.ECP"

    const-string/jumbo p2, "mTrackerCallback.onChanged"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    iget-object p1, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Lcom/android/server/notification/EventConditionProvider$4;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Lcom/android/server/notification/EventConditionProvider$4;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
