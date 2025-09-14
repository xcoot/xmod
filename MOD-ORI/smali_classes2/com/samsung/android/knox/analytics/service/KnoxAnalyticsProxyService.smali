.class public final Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;
.super Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;

    .line 5
    .line 6
    const-string v0, "[KnoxAnalytics] KnoxAnalyticsProxyService"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .locals 1

    .line 1
    const-string v0, "knox_analytics"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string p1, "log() proxy failed"

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
