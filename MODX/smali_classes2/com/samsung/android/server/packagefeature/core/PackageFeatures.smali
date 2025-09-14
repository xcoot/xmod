.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatures;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAllFeaturesDisabled:Z

.field public final mGroups:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    iget-boolean v4, v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mEnabled:Z

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v5, "PackageFeatureGroup("

    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 33
    .line 34
    const-string v5, ") is not enabled."

    .line 35
    .line 36
    invoke-static {v4, v3, v5}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x3

    .line 42
    invoke-virtual {p2, v5, v3, v4}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    iget-boolean v4, v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    new-instance v4, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

    .line 51
    .line 52
    new-instance v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;

    .line 53
    .line 54
    invoke-direct {v5, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, p1, p2, v3, v5}, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;-><init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 62
    .line 63
    new-instance v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;

    .line 64
    .line 65
    invoke-direct {v5, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, p1, p2, v3, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;-><init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 74
    .line 75
    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method
