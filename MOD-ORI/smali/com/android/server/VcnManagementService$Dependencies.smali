.class public Lcom/android/server/VcnManagementService$Dependencies;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getRestrictedTransportsFromCarrierConfig(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Set;
    .locals 2

    .line 1
    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/android/server/VcnManagementService;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    sget-object p0, Lcom/android/server/VcnManagementService;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p1, Lcom/android/server/VcnManagementService;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Lcom/android/server/VcnManagementService$Dependencies$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 41
    .line 42
    const-string/jumbo p2, "vcn_restricted_transports"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object p1, p0

    .line 53
    :goto_0
    new-instance p0, Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 56
    .line 57
    .line 58
    array-length p2, p1

    .line 59
    const/4 v0, 0x0

    .line 60
    :goto_1
    if-ge v0, p2, :cond_3

    .line 61
    .line 62
    aget v1, p1, v0

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    return-object p0
.end method
