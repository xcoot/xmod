.class public final Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;
.super Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

.field public final mContext:Landroid/content/Context;

.field public mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field public mIsKnoxAnalyticsActivated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    .line 2
    .line 3
    const-string v0, "[KnoxAnalytics] KnoxAnalyticsServiceImpl"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "log(): null data"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "KnoxAnalytics has been shutdown, can\'t log."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceCallingPermissionForLog(Landroid/content/Context;II)V

    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "mEventQueue is null!"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->convertToKnoxAnalyticsSDK(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method
