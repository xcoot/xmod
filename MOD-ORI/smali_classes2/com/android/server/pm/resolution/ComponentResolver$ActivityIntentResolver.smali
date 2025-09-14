.class public Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivities:Ljava/util/HashMap;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    .line 3
    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    .line 6
    iget-object p1, p1, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    iput-object p3, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    return-void
.end method


# virtual methods
.method public final addActivity(Lcom/android/server/pm/Computer;Lcom/android/internal/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz p4, :cond_0

    .line 36
    .line 37
    const-string v4, "activity"

    .line 38
    .line 39
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    move-object v5, p4

    .line 50
    check-cast v5, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v3}, Landroid/content/IntentFilter;->debugCheck()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "==> For Activity "

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "PackageManager"

    .line 80
    .line 81
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method public final allowFilterResult(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p2, Landroid/util/Pair;

    .line 2
    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    sub-int/2addr p0, v0

    .line 11
    :goto_0
    if-ltz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 42
    .line 43
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    return v0
.end method

.method public final dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/util/Pair;

    .line 2
    .line 3
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 6
    .line 7
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 p2, 0x20

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p1, p2, p0}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p0, " filter "

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p3, Landroid/util/Pair;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/16 p0, 0x20

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 27
    .line 28
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 35
    .line 36
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p1, p0, p2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    if-le p4, p0, :cond_0

    .line 45
    .line 46
    const-string p0, " ("

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 52
    .line 53
    .line 54
    const-string p0, " filters)"

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    .line 3
    return-object p1
.end method

.method public final getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    .line 3
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/util/Pair;

    .line 2
    .line 3
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/util/Pair;

    .line 2
    .line 3
    return-object p0
.end method

.method public final newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p4

    .line 4
    .line 5
    move-wide/from16 v9, p5

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Landroid/util/Pair;

    .line 10
    .line 11
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v11, v2

    .line 14
    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 15
    .line 16
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v12, v1

    .line 19
    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 20
    .line 21
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 22
    .line 23
    .line 24
    move-result-object v13

    .line 25
    iget-object v1, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 28
    .line 29
    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v14, 0x0

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_0
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object/from16 v2, p1

    .line 43
    .line 44
    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 45
    .line 46
    .line 47
    move-result-object v15

    .line 48
    if-eqz v15, :cond_e

    .line 49
    .line 50
    iget-object v1, v15, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 51
    .line 52
    if-eqz v1, :cond_e

    .line 53
    .line 54
    invoke-static {v15, v11, v9, v10, v8}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_1
    invoke-interface {v15, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 63
    .line 64
    .line 65
    move-result-object v16

    .line 66
    iget-object v1, v15, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 67
    .line 68
    move-object v2, v11

    .line 69
    move-wide/from16 v3, p5

    .line 70
    .line 71
    move-object/from16 v5, v16

    .line 72
    .line 73
    move/from16 v6, p4

    .line 74
    .line 75
    move-object v7, v15

    .line 76
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_2
    const-wide/32 v2, 0x2000000

    .line 85
    .line 86
    .line 87
    and-long/2addr v2, v9

    .line 88
    const-wide/16 v4, 0x0

    .line 89
    .line 90
    cmp-long v2, v2, v4

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    const/4 v6, 0x1

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    move v2, v6

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    move v2, v3

    .line 99
    :goto_0
    const-wide/32 v17, 0x1000000

    .line 100
    .line 101
    .line 102
    and-long v17, v9, v17

    .line 103
    .line 104
    cmp-long v7, v17, v4

    .line 105
    .line 106
    if-eqz v7, :cond_4

    .line 107
    .line 108
    move v7, v6

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move v7, v3

    .line 111
    :goto_1
    if-eqz v7, :cond_6

    .line 112
    .line 113
    invoke-virtual {v13}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    .line 114
    .line 115
    .line 116
    move-result v17

    .line 117
    if-eqz v17, :cond_6

    .line 118
    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    invoke-virtual {v13}, Landroid/content/IntentFilter;->isExplicitlyVisibleToInstantApp()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    :cond_5
    move v2, v6

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    move v2, v3

    .line 130
    :goto_2
    const-wide/32 v17, 0x800000

    .line 131
    .line 132
    .line 133
    and-long v17, v9, v17

    .line 134
    .line 135
    cmp-long v17, v17, v4

    .line 136
    .line 137
    if-eqz v17, :cond_7

    .line 138
    .line 139
    move/from16 v17, v6

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    move/from16 v17, v3

    .line 143
    .line 144
    :goto_3
    if-eqz v7, :cond_8

    .line 145
    .line 146
    if-nez v2, :cond_8

    .line 147
    .line 148
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_8

    .line 153
    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_8
    if-nez v17, :cond_9

    .line 157
    .line 158
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_9

    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_9
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_a

    .line 171
    .line 172
    const/4 v2, 0x2

    .line 173
    invoke-virtual {v15, v2}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_a

    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_a
    new-instance v14, Landroid/content/pm/ResolveInfo;

    .line 182
    .line 183
    const-string v2, "android.intent.category.BROWSABLE"

    .line 184
    .line 185
    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-direct {v14, v2}, Landroid/content/pm/ResolveInfo;-><init>(Z)V

    .line 190
    .line 191
    .line 192
    iput-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 193
    .line 194
    const-wide/16 v17, 0x40

    .line 195
    .line 196
    and-long v9, v9, v17

    .line 197
    .line 198
    cmp-long v2, v9, v4

    .line 199
    .line 200
    if-eqz v2, :cond_b

    .line 201
    .line 202
    iput-object v13, v14, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 203
    .line 204
    :cond_b
    invoke-virtual {v13}, Landroid/content/IntentFilter;->handleAllWebDataURI()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    iput-boolean v2, v14, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 209
    .line 210
    invoke-virtual {v13}, Landroid/content/IntentFilter;->getPriority()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    iput v2, v14, Landroid/content/pm/ResolveInfo;->priority:I

    .line 215
    .line 216
    move/from16 v2, p3

    .line 217
    .line 218
    iput v2, v14, Landroid/content/pm/ResolveInfo;->match:I

    .line 219
    .line 220
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    iput-boolean v2, v14, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 225
    .line 226
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    iput v2, v14, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 231
    .line 232
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    iput-object v2, v14, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 237
    .line 238
    const-string/jumbo v2, "sys.knox.app_name_change"

    .line 239
    .line 240
    .line 241
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_c

    .line 246
    .line 247
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-eqz v2, :cond_c

    .line 256
    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v4, "/"

    .line 270
    .line 271
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v2, v1, v3, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameForComponent(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    if-eqz v1, :cond_c

    .line 292
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string/jumbo v3, "replace res.nonLocalizedLabel("

    .line 296
    .line 297
    .line 298
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v3, ") to newName("

    .line 307
    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v3, ") and activity.getPackageName() () UId("

    .line 315
    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v3, ")"

    .line 327
    .line 328
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const-string v3, "PackageManager"

    .line 336
    .line 337
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    iput-object v1, v14, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 341
    .line 342
    :cond_c
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 343
    .line 344
    invoke-virtual {v0, v8}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_d

    .line 349
    .line 350
    iput-boolean v6, v14, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 351
    .line 352
    goto :goto_4

    .line 353
    :cond_d
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    iput v0, v14, Landroid/content/pm/ResolveInfo;->icon:I

    .line 358
    .line 359
    :goto_4
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    iput v0, v14, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 364
    .line 365
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 366
    .line 367
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 368
    .line 369
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    iput-boolean v0, v14, Landroid/content/pm/ResolveInfo;->system:Z

    .line 374
    .line 375
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    iput-boolean v0, v14, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 380
    .line 381
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    iput-object v0, v14, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 386
    .line 387
    :cond_e
    :goto_5
    return-object v14
.end method

.method public final queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 4
    .line 5
    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const-wide/32 v0, 0x10000

    .line 14
    .line 15
    .line 16
    and-long/2addr v0, p4

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :goto_0
    move v5, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    move-object v3, p2

    .line 31
    move-object v4, p3

    .line 32
    move v6, p6

    .line 33
    move-wide v7, p4

    .line 34
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .locals 13

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    iget-object v2, v1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 7
    .line 8
    move/from16 v6, p7

    .line 9
    .line 10
    invoke-virtual {v2, v6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_1
    const-wide/32 v2, 0x10000

    .line 26
    .line 27
    .line 28
    and-long v2, p4, v2

    .line 29
    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    cmp-long v2, v2, v4

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    move v4, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v4, v3

    .line 41
    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    new-instance v5, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    move v7, v3

    .line 51
    :goto_1
    if-ge v7, v2, :cond_5

    .line 52
    .line 53
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 58
    .line 59
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-nez v10, :cond_4

    .line 68
    .line 69
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    new-array v10, v10, [Landroid/util/Pair;

    .line 74
    .line 75
    move v11, v3

    .line 76
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    if-ge v11, v12, :cond_3

    .line 81
    .line 82
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 87
    .line 88
    invoke-static {v8, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    aput-object v12, v10, v11

    .line 93
    .line 94
    add-int/lit8 v11, v11, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object v0, p0

    .line 104
    move-object v1, p1

    .line 105
    move-object v2, p2

    .line 106
    move-object/from16 v3, p3

    .line 107
    .line 108
    move/from16 v6, p7

    .line 109
    .line 110
    move-wide/from16 v7, p4

    .line 111
    .line 112
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method

.method public final removeActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final sortResults(Ljava/util/List;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
