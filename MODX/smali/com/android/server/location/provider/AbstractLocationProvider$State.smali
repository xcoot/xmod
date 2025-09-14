.class public final Lcom/android/server/location/provider/AbstractLocationProvider$State;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;


# instance fields
.field public final allowed:Z

.field public final extraAttributionTags:Ljava/util/Set;

.field public final identity:Landroid/location/util/identity/CallerIdentity;

.field public final properties:Landroid/location/provider/ProviderProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    .line 12
    sput-object v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 14
    return-void
.end method

.method public constructor <init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 6
    iput-object p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 8
    iput-object p3, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 10
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    check-cast p4, Ljava/util/Set;

    .line 15
    iput-object p4, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 17
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 13
    iget-boolean v1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 15
    iget-boolean v3, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 17
    if-ne v3, v1, :cond_2

    .line 19
    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 21
    iget-object v3, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 23
    if-ne v1, v3, :cond_2

    .line 25
    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 27
    iget-object v3, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 29
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 35
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 37
    iget-object p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 39
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v0, v2

    .line 47
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 9
    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 11
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 13
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 12
    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 14
    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 16
    iget-boolean p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 18
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/location/provider/AbstractLocationProvider$State;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    .line 21
    return-object v0
.end method
