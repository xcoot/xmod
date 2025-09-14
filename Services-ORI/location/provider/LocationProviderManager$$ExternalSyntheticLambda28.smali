.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic f$1:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

.field public final synthetic f$2:Lcom/android/server/location/provider/AbstractLocationProvider$State;

.field public final synthetic f$3:Lcom/android/server/location/provider/AbstractLocationProvider$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;->f$1:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;->f$2:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;->f$3:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;->f$1:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;->f$2:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;->f$3:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v1, Lcom/android/server/location/LocationManagerService;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 20
    .line 21
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v3, -0x1

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {v0, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 44
    .line 45
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_6

    .line 50
    .line 51
    :cond_1
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v4, v1, Lcom/android/server/location/LocationManagerService;->mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    .line 55
    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v2, v3

    .line 70
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 71
    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move p0, v3

    .line 80
    :goto_1
    if-eq v2, v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 87
    .line 88
    new-instance v7, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    invoke-direct {v7, v4, v2, v5, v8}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    .line 96
    .line 97
    :cond_4
    if-eq p0, v3, :cond_5

    .line 98
    .line 99
    if-eq p0, v2, :cond_5

    .line 100
    .line 101
    invoke-virtual {v1, p0}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v1, v1, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 106
    .line 107
    new-instance v3, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;

    .line 108
    .line 109
    const/4 v5, 0x1

    .line 110
    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    :cond_5
    monitor-exit v0

    .line 117
    :cond_6
    return-void

    .line 118
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p0
.end method
