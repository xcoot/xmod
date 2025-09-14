.class public final Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKnoxAnalyticsActivation(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onKnoxAnalyticsActivation()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->startSystemService()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastAnalyticsStatus(ZZ)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastKAStatusToMDM(ZZZ)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationEventAfterStart()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final onKnoxAnalyticsDeactivation(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onKnoxAnalyticsDeactivation()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastAnalyticsStatus(ZZ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v1, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastKAStatusToMDM(ZZZ)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->stopSystemService()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onStatusChanged(IZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEventAfterStart(IZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTriggerChanged(IZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEventAfterStart(IZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
