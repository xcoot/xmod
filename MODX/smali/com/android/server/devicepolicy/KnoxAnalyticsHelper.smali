.class public final Lcom/android/server/devicepolicy/KnoxAnalyticsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/KnoxAnalyticsHelper;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static setKnoxAnalyticsData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 3
    const-string v1, "API:DPM-"

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const-string v1, "KNOX_AKS"

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    const-string/jumbo p0, "pN"

    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final sendOwnerChangedBroadcastWithExtra(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/high16 v1, 0x1000000

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.EXTRA_DO_CHANGED_STATUS"

    .line 23
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxAnalyticsHelper;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 35
    return-void
.end method
