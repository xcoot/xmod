.class public final Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnformattedPackageFeatureFileChanged(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 2

    .line 1
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/io/FileDescriptor;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 23
    .line 24
    instance-of v1, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->updateParserIfNeeded(Ljava/io/FileDescriptor;)Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p2, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 39
    .line 40
    iget-object v1, p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 41
    .line 42
    check-cast v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    .line 43
    .line 44
    invoke-static {p2, v1, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->-$$Nest$mmakeChangedAppList(Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 49
    .line 50
    iput-object p1, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    const-string p0, "AppCategoryHintHelper"

    .line 74
    .line 75
    const-string p1, "AppCategoryHintHelper is not initialized, updateScpmAppCategory is not required."

    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda7;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_1
    return-void

    .line 93
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw p0
.end method
