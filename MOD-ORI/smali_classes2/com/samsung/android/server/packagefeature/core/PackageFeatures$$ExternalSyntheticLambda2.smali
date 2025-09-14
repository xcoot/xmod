.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    .line 5
    .line 6
    const-string p1, "  "

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "GroupName="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string v1, ", Unformatted=true"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const-string v1, ", Version="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getCurrentVersion()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, ", Source="

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-object v2, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 74
    .line 75
    if-eq v1, v2, :cond_2

    .line 76
    .line 77
    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 93
    .line 94
    const-string v2, "  "

    .line 95
    .line 96
    invoke-static {p0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    .line 101
    .line 102
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v1, v0, p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_0
    return-void
.end method
