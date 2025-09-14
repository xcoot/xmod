.class public Landroid/net/shared/InitialConfiguration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INET6_ANY:Ljava/net/InetAddress;

.field private static final RFC6177_MIN_PREFIX_LENGTH:I = 0x30

.field private static final RFC7421_PREFIX_LENGTH:I = 0x40


# instance fields
.field public final directlyConnectedRoutes:Ljava/util/Set;

.field public final dnsServers:Ljava/util/Set;

.field public final ipAddresses:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$-X6K-ILFjKgXxX_05B2mmIHvhrU(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$not$4(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$2qMxQrPX0dtHbvHuDV489De1Fgc(Landroid/net/IpPrefix;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$5lGZQwr6G8-juwLej8cPw15pvTI(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isProvisionedBy$3(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$JLWMq8eblO7IxI5SOmNQMRBOH7g(Landroid/net/IpPrefix;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$KVrbl46Ey9msvoRUX4iyAAYZh5s(Landroid/net/LinkAddress;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv6GUA(Landroid/net/LinkAddress;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$LrgLnWopeQsqj9tKhvCHfzT_ECg(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isValid$0(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$YRvNq_1LvE5TxUPwVnWBxpL-sFE(Landroid/net/LinkAddress;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv4(Landroid/net/LinkAddress;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$aMpq1yL99NDjdK12Fmmvc_TUcBQ(Landroid/net/LinkAddress;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$hXTWt6UzxsyVBxaxeD9FOBlh3MI(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isProvisionedBy$2(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$ywVtbC09SwFWcOHhEoJjbnmuAY8(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isValid$1(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "::"

    .line 3
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/net/shared/InitialConfiguration;->INET6_ANY:Ljava/net/InetAddress;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    iput-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    iput-object v0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 25
    return-void
.end method

.method public static all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 11
    return p0
.end method

.method public static any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static copy(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/InitialConfiguration;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/net/shared/InitialConfiguration;

    .line 7
    invoke-direct {v0}, Landroid/net/shared/InitialConfiguration;-><init>()V

    .line 10
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 12
    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 14
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 19
    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 21
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 26
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 28
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31
    return-object v0
.end method

.method public static fromStableParcelable(Landroid/net/InitialConfigurationParcelable;)Landroid/net/shared/InitialConfiguration;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/net/shared/InitialConfiguration;

    .line 7
    invoke-direct {v0}, Landroid/net/shared/InitialConfiguration;-><init>()V

    .line 10
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 12
    iget-object v2, p0, Landroid/net/InitialConfigurationParcelable;->ipAddresses:[Landroid/net/LinkAddress;

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 23
    iget-object v2, p0, Landroid/net/InitialConfigurationParcelable;->directlyConnectedRoutes:[Landroid/net/IpPrefix;

    .line 25
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    iget-object v1, v0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 34
    iget-object p0, p0, Landroid/net/InitialConfigurationParcelable;->dnsServers:[Ljava/lang/String;

    .line 36
    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    .line 42
    invoke-static {p0, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    .line 45
    move-result-object p0

    .line 46
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 49
    return-object v0
.end method

.method private static isCompliantIPv6PrefixLength(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 3
    if-gt v0, p0, :cond_0

    .line 5
    const/16 v0, 0x40

    .line 7
    if-gt p0, v0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private static isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1
.end method

.method private static isIPv4(Landroid/net/IpPrefix;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet4Address;

    return p0
.end method

.method private static isIPv4(Landroid/net/LinkAddress;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet4Address;

    return p0
.end method

.method private static isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroid/net/shared/InitialConfiguration;->INET6_ANY:Ljava/net/InetAddress;

    .line 7
    invoke-virtual {p0, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static isIPv6GUA(Landroid/net/LinkAddress;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIpv6()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv4(Landroid/net/IpPrefix;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result p0

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isIPv4(Landroid/net/LinkAddress;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p0

    invoke-static {p0}, Landroid/net/shared/InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$isProvisionedBy$2(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$isProvisionedBy$3(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1, p0}, Landroid/net/shared/InitialConfiguration;->isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$isValid$0(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$isValid$1(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$not$4(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method public static not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/net/shared/InitialConfiguration;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/net/shared/InitialConfiguration;

    .line 9
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 11
    iget-object v2, p1, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 21
    iget-object v2, p1, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 23
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 31
    iget-object p1, p1, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 33
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method public isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/net/LinkAddress;

    .line 29
    new-instance v3, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;

    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v3, v2, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;-><init>(Landroid/net/LinkAddress;I)V

    .line 35
    invoke-static {p1, v3}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 41
    return v1

    .line 42
    :cond_2
    if-eqz p2, :cond_4

    .line 44
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 46
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p0

    .line 50
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/net/IpPrefix;

    .line 62
    new-instance v0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;

    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-direct {v0, v2, p1}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 68
    invoke-static {p2, v0}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 74
    return v1

    .line 75
    :cond_4
    const/4 p0, 0x1

    .line 76
    return p0
.end method

.method public isValid()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/net/LinkAddress;

    .line 29
    iget-object v3, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 31
    new-instance v4, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-direct {v4, v2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;-><init>(Landroid/net/LinkAddress;I)V

    .line 37
    invoke-static {v3, v4}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 43
    return v1

    .line 44
    :cond_2
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 50
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/net/InetAddress;

    .line 62
    iget-object v3, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 64
    new-instance v4, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-direct {v4, v5, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 70
    invoke-static {v3, v4}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_3

    .line 76
    return v1

    .line 77
    :cond_4
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 79
    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;

    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;-><init>(I)V

    .line 85
    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 95
    return v1

    .line 96
    :cond_5
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 98
    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;

    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;-><init>(I)V

    .line 104
    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_6

    .line 110
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 112
    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;

    .line 114
    const/4 v3, 0x2

    .line 115
    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;-><init>(I)V

    .line 118
    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 121
    move-result-object v2

    .line 122
    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_6

    .line 128
    return v1

    .line 129
    :cond_6
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 131
    new-instance v2, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;

    .line 133
    const/4 v3, 0x3

    .line 134
    invoke-direct {v2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;-><init>(I)V

    .line 137
    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 140
    move-result-object v2

    .line 141
    invoke-static {v0, v2}, Landroid/net/shared/InitialConfiguration;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_7

    .line 147
    return v1

    .line 148
    :cond_7
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 150
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 153
    move-result-object p0

    .line 154
    new-instance v0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;

    .line 156
    const/4 v2, 0x4

    .line 157
    invoke-direct {v0, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;-><init>(I)V

    .line 160
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 163
    move-result-object p0

    .line 164
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    .line 167
    move-result-wide v2

    .line 168
    const-wide/16 v4, 0x1

    .line 170
    cmp-long p0, v2, v4

    .line 172
    if-lez p0, :cond_8

    .line 174
    return v1

    .line 175
    :cond_8
    const/4 p0, 0x1

    .line 176
    return p0
.end method

.method public toStableParcelable()Landroid/net/InitialConfigurationParcelable;
    .locals 4

    .line 1
    new-instance v0, Landroid/net/InitialConfigurationParcelable;

    .line 3
    invoke-direct {v0}, Landroid/net/InitialConfigurationParcelable;-><init>()V

    .line 6
    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v3, v2, [Landroid/net/LinkAddress;

    .line 11
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [Landroid/net/LinkAddress;

    .line 17
    iput-object v1, v0, Landroid/net/InitialConfigurationParcelable;->ipAddresses:[Landroid/net/LinkAddress;

    .line 19
    iget-object v1, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 21
    new-array v2, v2, [Landroid/net/IpPrefix;

    .line 23
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [Landroid/net/IpPrefix;

    .line 29
    iput-object v1, v0, Landroid/net/InitialConfigurationParcelable;->directlyConnectedRoutes:[Landroid/net/IpPrefix;

    .line 31
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 33
    new-instance v1, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v1, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda9;-><init>(I)V

    .line 39
    const-class v2, Ljava/lang/String;

    .line 41
    invoke-static {p0, v1, v2}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, [Ljava/lang/String;

    .line 47
    iput-object p0, v0, Landroid/net/InitialConfigurationParcelable;->dnsServers:[Ljava/lang/String;

    .line 49
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/shared/InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 3
    const-string v1, ", "

    .line 5
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Landroid/net/shared/InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 11
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 17
    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const-string v1, "InitialConfiguration(IPs: {"

    .line 23
    const-string/jumbo v3, "}, prefixes: {"

    .line 26
    const-string/jumbo v4, "}, DNS: {"

    .line 29
    invoke-static {v1, v0, v3, v2, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v0

    .line 33
    const-string/jumbo v1, "})"

    .line 36
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
