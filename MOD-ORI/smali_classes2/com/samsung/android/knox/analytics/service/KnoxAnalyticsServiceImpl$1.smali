.class public final Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

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
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v0, "onKnoxAnalyticsActivation()"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    .line 13
    .line 14
    return-void
.end method

.method public final onKnoxAnalyticsDeactivation(Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v0, "onKnoxAnalyticsDeactivation()"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    .line 13
    .line 14
    return-void
.end method

.method public final onStatusChanged(IZLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTriggerChanged(IZLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
