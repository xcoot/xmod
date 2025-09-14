.class public final Lcom/android/server/vcn/VcnContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFeatureFlags:Landroid/net/vcn/FeatureFlags;

.field public final mIsInTestMode:Z

.field public final mLooper:Landroid/os/Looper;

.field public final mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Missing context"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Landroid/content/Context;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string p1, "Missing looper"

    .line 15
    .line 16
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-object p1, p2

    .line 20
    check-cast p1, Landroid/os/Looper;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 23
    .line 24
    const-string p1, "Missing networkProvider"

    .line 25
    .line 26
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-object p1, p3

    .line 30
    check-cast p1, Lcom/android/server/vcn/VcnNetworkProvider;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 33
    .line 34
    iput-boolean p4, p0, Lcom/android/server/vcn/VcnContext;->mIsInTestMode:Z

    .line 35
    .line 36
    new-instance p1, Landroid/net/vcn/FeatureFlagsImpl;

    .line 37
    .line 38
    invoke-direct {p1}, Landroid/net/vcn/FeatureFlagsImpl;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/vcn/VcnContext;->mFeatureFlags:Landroid/net/vcn/FeatureFlags;

    .line 42
    .line 43
    return-void
.end method

.method public static isFlagIpSecTransformStateEnabled()Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/net/IpSecTransformState$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/IpSecTransformState$Builder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method


# virtual methods
.method public final ensureRunningOnLooperThread()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "Not running on VcnMgmtSvc thread"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final isFlagNetworkMetricMonitorEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnContext;->mFeatureFlags:Landroid/net/vcn/FeatureFlags;

    .line 2
    .line 3
    check-cast p0, Landroid/net/vcn/FeatureFlagsImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/vcn/FeatureFlagsImpl;->networkMetricMonitor()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
