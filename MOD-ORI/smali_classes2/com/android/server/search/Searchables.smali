.class public final Lcom/android/server/search/Searchables;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final GLOBAL_SEARCH_RANKER:Lcom/android/server/search/Searchables$1;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field public mGlobalSearchActivities:Ljava/util/List;

.field public mKnownSearchablePackageNames:Landroid/util/ArraySet;

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public mRebuildSearchables:Z

.field public mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

.field public mSearchablesList:Ljava/util/ArrayList;

.field public mSearchablesMap:Ljava/util/HashMap;

.field public final mUserId:I

.field public mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/search/Searchables$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Lcom/android/server/search/Searchables$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/server/search/Searchables;->mRebuildSearchables:Z

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mKnownSearchablePackageNames:Landroid/util/ArraySet;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput p2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 28
    .line 29
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    .line 34
    .line 35
    return-void
.end method

.method public static createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v1, v2, v3, v5}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(IILandroid/content/ComponentName;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-object v0
.end method

.method public static createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroid/app/SearchableInfo;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v1, v2, v3, v5}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(IILandroid/content/ComponentName;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "Searchable authorities:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/app/SearchableInfo;

    .line 26
    .line 27
    const-string v2, "  "

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "mRebuildSearchables = "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/android/server/search/Searchables;->mRebuildSearchables:Z

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p1
.end method

.method public final findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string/jumbo v2, "search_global_search_activity"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v1, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v2, "android.search.action.GLOBAL_SEARCH"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/high16 v2, 0x10000

    .line 41
    .line 42
    invoke-virtual {p0, v2, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(ILandroid/content/Intent;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_0

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_1

    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 69
    .line 70
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 71
    .line 72
    new-instance p1, Landroid/content/ComponentName;

    .line 73
    .line 74
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-string p0, "Searchables"

    .line 83
    .line 84
    const-string p1, "No global search activity found"

    .line 85
    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    :goto_0
    return-object p1
.end method

.method public final findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v2, "android.intent.action.WEB_SEARCH"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const/high16 p1, 0x10000

    .line 20
    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(ILandroid/content/Intent;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 39
    .line 40
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 41
    .line 42
    new-instance p1, Landroid/content/ComponentName;

    .line 43
    .line 44
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_1
    const-string p0, "Searchables"

    .line 53
    .line 54
    const-string p1, "No web search activity found"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public final queryIntentActivities(ILandroid/content/Intent;)Ljava/util/List;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/high16 v1, 0x800000

    .line 14
    .line 15
    or-int/2addr p1, v1

    .line 16
    int-to-long v3, p1

    .line 17
    iget v5, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 18
    .line 19
    move-object v1, p2

    .line 20
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return-object p0
.end method

.method public final updateSearchableListIfNeeded()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/search/Searchables;->mRebuildSearchables:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto/16 :goto_c

    .line 12
    .line 13
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v4, Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v5, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v6, "android.intent.action.SEARCH"

    .line 37
    .line 38
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    const v8, 0x10000080

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-virtual {v1, v8, v5}, Lcom/android/server/search/Searchables;->queryIntentActivities(ILandroid/content/Intent;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v9, Landroid/content/Intent;

    .line 53
    .line 54
    const-string v10, "android.intent.action.WEB_SEARCH"

    .line 55
    .line 56
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v8, v9}, Lcom/android/server/search/Searchables;->queryIntentActivities(ILandroid/content/Intent;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    new-instance v9, Landroid/content/Intent;

    .line 64
    .line 65
    const-string v10, "android.intent.action.INSIGHT_SEARCH"

    .line 66
    .line 67
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/16 v10, 0x80

    .line 71
    .line 72
    invoke-virtual {v1, v10, v9}, Lcom/android/server/search/Searchables;->queryIntentActivities(ILandroid/content/Intent;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    new-instance v11, Landroid/content/Intent;

    .line 77
    .line 78
    const-string v12, "com.samsung.android.intent.action.SEARCH"

    .line 79
    .line 80
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v10, v11}, Lcom/android/server/search/Searchables;->queryIntentActivities(ILandroid/content/Intent;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    if-nez v5, :cond_2

    .line 88
    .line 89
    if-nez v8, :cond_2

    .line 90
    .line 91
    if-nez v9, :cond_2

    .line 92
    .line 93
    if-eqz v10, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    move-wide/from16 v16, v6

    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_2
    :goto_0
    if-nez v5, :cond_3

    .line 101
    .line 102
    const/4 v12, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    :goto_1
    if-nez v8, :cond_4

    .line 109
    .line 110
    const/4 v13, 0x0

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    :goto_2
    if-nez v9, :cond_5

    .line 117
    .line 118
    const/4 v14, 0x0

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    :goto_3
    if-nez v10, :cond_6

    .line 125
    .line 126
    const/4 v15, 0x0

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 132
    :goto_4
    add-int v11, v12, v13

    .line 133
    .line 134
    move-wide/from16 v16, v6

    .line 135
    .line 136
    add-int v6, v11, v14

    .line 137
    .line 138
    add-int/2addr v15, v6

    .line 139
    const/4 v7, 0x0

    .line 140
    :goto_5
    if-ge v7, v15, :cond_b

    .line 141
    .line 142
    if-ge v7, v12, :cond_7

    .line 143
    .line 144
    :try_start_2
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v18

    .line 148
    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 149
    .line 150
    move-object/from16 v22, v18

    .line 151
    .line 152
    move-object/from16 v18, v5

    .line 153
    .line 154
    move-object/from16 v5, v22

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    goto/16 :goto_b

    .line 159
    .line 160
    :cond_7
    if-ge v7, v11, :cond_8

    .line 161
    .line 162
    move-object/from16 v18, v5

    .line 163
    .line 164
    sub-int v5, v7, v12

    .line 165
    .line 166
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_8
    move-object/from16 v18, v5

    .line 174
    .line 175
    if-ge v7, v6, :cond_9

    .line 176
    .line 177
    sub-int v5, v7, v12

    .line 178
    .line 179
    sub-int/2addr v5, v13

    .line 180
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    :goto_6
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_9
    sub-int v5, v7, v12

    .line 188
    .line 189
    sub-int/2addr v5, v13

    .line 190
    sub-int/2addr v5, v14

    .line 191
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    goto :goto_6

    .line 196
    :goto_7
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 197
    .line 198
    move/from16 v19, v6

    .line 199
    .line 200
    new-instance v6, Landroid/content/ComponentName;

    .line 201
    .line 202
    move-object/from16 v20, v8

    .line 203
    .line 204
    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 205
    .line 206
    move-object/from16 v21, v9

    .line 207
    .line 208
    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 209
    .line 210
    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    if-nez v6, :cond_a

    .line 218
    .line 219
    iget-object v6, v1, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 220
    .line 221
    iget v8, v1, Lcom/android/server/search/Searchables;->mUserId:I

    .line 222
    .line 223
    invoke-static {v6, v5, v8}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    if-eqz v6, :cond_a

    .line 228
    .line 229
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_a

    .line 249
    .line 250
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 254
    .line 255
    move-object/from16 v5, v18

    .line 256
    .line 257
    move/from16 v6, v19

    .line 258
    .line 259
    move-object/from16 v8, v20

    .line 260
    .line 261
    move-object/from16 v9, v21

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_b
    :goto_8
    new-instance v5, Landroid/content/Intent;

    .line 265
    .line 266
    const-string v6, "android.search.action.GLOBAL_SEARCH"

    .line 267
    .line 268
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const/high16 v6, 0x10010000

    .line 272
    .line 273
    invoke-virtual {v1, v6, v5}, Lcom/android/server/search/Searchables;->queryIntentActivities(ILandroid/content/Intent;)Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    if-eqz v5, :cond_c

    .line 278
    .line 279
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-nez v6, :cond_c

    .line 284
    .line 285
    sget-object v6, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Lcom/android/server/search/Searchables$1;

    .line 286
    .line 287
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    .line 289
    .line 290
    :cond_c
    invoke-virtual {v1, v5}, Lcom/android/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-virtual {v1, v6}, Lcom/android/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    :try_start_3
    iput-object v0, v1, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 300
    .line 301
    iput-object v2, v1, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 302
    .line 303
    iput-object v4, v1, Lcom/android/server/search/Searchables;->mKnownSearchablePackageNames:Landroid/util/ArraySet;

    .line 304
    .line 305
    iput-object v3, v1, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 306
    .line 307
    iput-object v5, v1, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    .line 308
    .line 309
    iput-object v6, v1, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 310
    .line 311
    iput-object v7, v1, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 312
    .line 313
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-eqz v2, :cond_d

    .line 322
    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 328
    .line 329
    iget-object v3, v1, Lcom/android/server/search/Searchables;->mKnownSearchablePackageNames:Landroid/util/ArraySet;

    .line 330
    .line 331
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_9

    .line 341
    :catchall_2
    move-exception v0

    .line 342
    goto :goto_a

    .line 343
    :cond_d
    iget-object v0, v1, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 344
    .line 345
    if-eqz v0, :cond_e

    .line 346
    .line 347
    iget-object v2, v1, Lcom/android/server/search/Searchables;->mKnownSearchablePackageNames:Landroid/util/ArraySet;

    .line 348
    .line 349
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    :cond_e
    iget-object v0, v1, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 357
    .line 358
    if-eqz v0, :cond_f

    .line 359
    .line 360
    iget-object v2, v1, Lcom/android/server/search/Searchables;->mKnownSearchablePackageNames:Landroid/util/ArraySet;

    .line 361
    .line 362
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    :cond_f
    const/4 v0, 0x0

    .line 370
    iput-boolean v0, v1, Lcom/android/server/search/Searchables;->mRebuildSearchables:Z

    .line 371
    .line 372
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 373
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :goto_a
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 378
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 379
    :catchall_3
    move-exception v0

    .line 380
    move-wide/from16 v16, v6

    .line 381
    .line 382
    :goto_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    .line 384
    .line 385
    throw v0

    .line 386
    :goto_c
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 387
    throw v0
.end method
