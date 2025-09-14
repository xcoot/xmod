.class public final Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mAuthReturned:Z

.field public final mFrameworkException:Ljava/lang/String;

.field public mHasException:Z

.field public mProviderStatus:I

.field public mProviderUid:I

.field public final mSessionIdProvider:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v1, v2, v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mFrameworkException:Ljava/lang/String;

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    .line 32
    .line 33
    iput p1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mSessionIdProvider:I

    .line 34
    .line 35
    return-void
.end method
