.class public final Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ARRAY_SET_COLLECTOR:Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

.field public static final DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;


# instance fields
.field public final mDomainMatcher:Ljava/util/regex/Matcher;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "(\\*\\.)?"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 7
    .line 8
    sget-object p1, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string p2, ""

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;
    .locals 7

    .line 1
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-object v6
.end method

.method public final collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v4, 0xa74866d

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_8

    .line 10
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 12
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    iget-object v4, v4, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    move v7, v5

    :goto_0
    if-ge v7, v3, :cond_3

    if-nez v4, :cond_3

    .line 14
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 15
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v8

    .line 16
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_2

    if-nez v4, :cond_2

    .line 17
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 18
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/IntentFilter;->needsVerification()Z

    move-result v4

    add-int/2addr v10, v1

    goto :goto_1

    :cond_2
    add-int/2addr v7, v1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_5
    move v7, v1

    move v4, v5

    move v8, v4

    :goto_2
    if-ge v4, v3, :cond_4

    if-eqz v7, :cond_4

    .line 19
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 20
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 21
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v5

    :goto_3
    if-ge v11, v10, :cond_b

    if-eqz v7, :cond_b

    .line 22
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 23
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v12

    .line 24
    invoke-virtual {v12, v5}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 25
    invoke-virtual {v12}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v13

    move v14, v5

    :goto_4
    if-ge v14, v13, :cond_a

    .line 26
    invoke-virtual {v12, v14}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 27
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    :goto_5
    move/from16 v6, p3

    goto :goto_6

    .line 28
    :cond_6
    iget-object v5, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5, v15}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 29
    iget-object v5, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    goto :goto_5

    :goto_6
    if-ne v5, v6, :cond_9

    .line 30
    invoke-static {v15}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v8

    const/high16 v7, 0x100000

    if-ge v5, v7, :cond_7

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v16, v1

    goto :goto_7

    :cond_7
    move-object/from16 v7, p4

    move-object/from16 v8, p5

    const/16 v16, 0x0

    .line 31
    :goto_7
    invoke-interface {v8, v7, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_8

    move-object v0, v15

    goto :goto_8

    :cond_8
    move v8, v5

    move/from16 v7, v16

    :cond_9
    add-int/2addr v14, v1

    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    move/from16 v6, p3

    add-int/2addr v11, v1

    const/4 v5, 0x0

    goto :goto_3

    :cond_b
    move/from16 v6, p3

    add-int/2addr v4, v1

    const/4 v5, 0x0

    goto :goto_2

    :goto_8
    return-object v0
.end method

.method public final collectDomainsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    :goto_0
    if-ge v6, v3, :cond_8

    .line 17
    .line 18
    if-eqz v7, :cond_8

    .line 19
    .line 20
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 25
    .line 26
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    const/4 v11, 0x0

    .line 35
    :goto_1
    if-ge v11, v10, :cond_7

    .line 36
    .line 37
    if-eqz v7, :cond_7

    .line 38
    .line 39
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 44
    .line 45
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v12}, Landroid/content/IntentFilter;->getAutoVerify()Z

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    if-nez v13, :cond_0

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_0
    const-string v13, "android.intent.category.DEFAULT"

    .line 59
    .line 60
    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    if-eqz v13, :cond_6

    .line 65
    .line 66
    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    if-nez v13, :cond_1

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_1
    invoke-virtual {v12}, Landroid/content/IntentFilter;->countDataAuthorities()I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    const/4 v14, 0x0

    .line 78
    :goto_2
    if-ge v14, v13, :cond_6

    .line 79
    .line 80
    if-eqz v7, :cond_6

    .line 81
    .line 82
    invoke-virtual {v12, v14}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    .line 83
    .line 84
    .line 85
    move-result-object v15

    .line 86
    invoke-virtual {v15}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v15

    .line 90
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v16

    .line 94
    if-eqz v16, :cond_2

    .line 95
    .line 96
    move/from16 v5, p3

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    .line 101
    .line 102
    invoke-virtual {v4, v15}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 103
    .line 104
    .line 105
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    move/from16 v5, p3

    .line 112
    .line 113
    :goto_3
    if-ne v4, v5, :cond_5

    .line 114
    .line 115
    invoke-static {v15}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    add-int/2addr v4, v8

    .line 120
    const/high16 v7, 0x100000

    .line 121
    .line 122
    if-ge v4, v7, :cond_3

    .line 123
    .line 124
    move-object/from16 v7, p4

    .line 125
    .line 126
    move-object/from16 v8, p5

    .line 127
    .line 128
    const/16 v17, 0x1

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_3
    move-object/from16 v7, p4

    .line 132
    .line 133
    move-object/from16 v8, p5

    .line 134
    .line 135
    const/16 v17, 0x0

    .line 136
    .line 137
    :goto_4
    invoke-interface {v8, v7, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    if-eqz v15, :cond_4

    .line 142
    .line 143
    return-object v15

    .line 144
    :cond_4
    move v8, v4

    .line 145
    move/from16 v7, v17

    .line 146
    .line 147
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    :goto_5
    move/from16 v5, p3

    .line 151
    .line 152
    add-int/lit8 v11, v11, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    move/from16 v5, p3

    .line 156
    .line 157
    add-int/lit8 v6, v6, 0x1

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_8
    const/4 v0, 0x0

    .line 162
    return-object v0
.end method
