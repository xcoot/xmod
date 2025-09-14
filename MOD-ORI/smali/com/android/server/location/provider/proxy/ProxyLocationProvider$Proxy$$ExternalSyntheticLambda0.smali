.class public final synthetic Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/location/provider/ProviderProperties;

.field public final synthetic f$2:Landroid/location/util/identity/CallerIdentity;

.field public final synthetic f$3:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;->f$1:Landroid/location/provider/ProviderProperties;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;->f$2:Landroid/location/util/identity/CallerIdentity;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;->f$0:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;->f$1:Landroid/location/provider/ProviderProperties;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;->f$2:Landroid/location/util/identity/CallerIdentity;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 10
    .line 11
    sget-object p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 12
    .line 13
    iget-boolean v3, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 14
    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 19
    .line 20
    iget-object v4, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 21
    .line 22
    iget-object v5, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 25
    .line 26
    invoke-direct {v3, v0, v4, v5, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v3

    .line 30
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 35
    .line 36
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 48
    .line 49
    iget-boolean p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 50
    .line 51
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v0

    .line 55
    :goto_1
    iget-object v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 65
    .line 66
    iget-object v1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 67
    .line 68
    iget-object v2, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 69
    .line 70
    iget-boolean p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 71
    .line 72
    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    .line 73
    .line 74
    .line 75
    move-object p1, v0

    .line 76
    :goto_2
    return-object p1
.end method
