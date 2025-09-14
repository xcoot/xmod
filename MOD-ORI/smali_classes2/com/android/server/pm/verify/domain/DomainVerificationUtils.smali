.class public abstract Lcom/android/server/pm/verify/domain/DomainVerificationUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sCachedMatcher:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    return-void
.end method

.method public static isDomainVerificationIntent(Landroid/content/Intent;J)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->isWebIntent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    sget-object v2, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/regex/Matcher;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v2, 0x2

    .line 52
    if-le v0, v2, :cond_3

    .line 53
    .line 54
    return v1

    .line 55
    :cond_3
    const/4 v3, 0x1

    .line 56
    const-string v4, "android.intent.category.BROWSABLE"

    .line 57
    .line 58
    const-string v5, "android.intent.category.DEFAULT"

    .line 59
    .line 60
    if-ne v0, v2, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    move v1, v3

    .line 75
    :cond_4
    return v1

    .line 76
    :cond_5
    const-wide/32 v6, 0x10000

    .line 77
    .line 78
    .line 79
    and-long/2addr p1, v6

    .line 80
    const-wide/16 v6, 0x0

    .line 81
    .line 82
    cmp-long p1, p1, v6

    .line 83
    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    move v1, v3

    .line 87
    :cond_6
    if-nez v0, :cond_7

    .line 88
    .line 89
    return v1

    .line 90
    :cond_7
    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_8

    .line 95
    .line 96
    return v1

    .line 97
    :cond_8
    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    return p0
.end method

.method public static throwPackageUnavailable(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 2
    .line 3
    const-string v1, "Package "

    .line 4
    .line 5
    const-string v2, " unavailable"

    .line 6
    .line 7
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method
