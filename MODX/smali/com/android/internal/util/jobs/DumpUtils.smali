.class public final Lcom/android/internal/util/jobs/DumpUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DumpUtils"


# direct methods
.method public static synthetic $r8$lambda$4cnnwLcrRIvopnI2Y9UMN0-4LXk(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Landroid/content/ComponentName$WithComponentName;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$7L2IuHmi6ElsEnVZijGH47KxIzk(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$FG505HlyvajkfrO9xmitenM2Nv8(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->lambda$filterRecord$0(Landroid/content/ComponentName$WithComponentName;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$WK57pgle_yxeN7VzFLE0xvhrYrs(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/DumpUtils;->lambda$filterRecord$1(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$xV6YgEaWJX4rlq6RkXJi5BssYRs(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/DumpUtils;->lambda$dumpSparseArrayValues$3(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Landroid/content/ComponentName;

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    .line 6
    const-string/jumbo v2, "com.android.systemui"

    .line 9
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 12
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 18
    sput-object v0, Lcom/android/internal/util/jobs/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 1
    const-string v0, "android.permission.DUMP"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const-string p0, "Permission Denial: can\'t dump "

    .line 11
    const-string v0, " from from pid="

    .line 13
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string p1, ", uid="

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    move-result p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string p1, " due to missing android.permission.DUMP permission"

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 48
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :cond_0
    const/4 p0, 0x1

    .line 51
    return p0
.end method

.method public static checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 8
    const/16 v2, 0x3e8

    .line 10
    if-eq v0, v2, :cond_3

    .line 12
    const/16 v2, 0x42b

    .line 14
    if-eq v0, v2, :cond_3

    .line 16
    const/16 v2, 0x7d0

    .line 18
    if-eq v0, v2, :cond_3

    .line 20
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    .line 22
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 25
    move-result v2

    .line 26
    const-string v3, ", uid="

    .line 28
    const-string v4, " from from pid="

    .line 30
    const-string v5, "Permission Denial: can\'t dump "

    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz v2, :cond_0

    .line 35
    invoke-static {v5, p1, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string p1, " due to missing android.permission.PACKAGE_USAGE_STATS permission"

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 68
    return v6

    .line 69
    :cond_0
    const-class v2, Landroid/app/AppOpsManager;

    .line 71
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/app/AppOpsManager;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    if-eqz p0, :cond_2

    .line 87
    array-length v7, p0

    .line 88
    move v8, v6

    .line 89
    :goto_0
    if-ge v8, v7, :cond_2

    .line 91
    aget-object v9, p0, v8

    .line 93
    const/16 v10, 0x2b

    .line 95
    invoke-virtual {v2, v10, v0, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_1

    .line 101
    const/4 v10, 0x3

    .line 102
    if-eq v9, v10, :cond_1

    .line 104
    add-int/lit8 v8, v8, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    return v1

    .line 108
    :cond_2
    invoke-static {v5, p1, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object p0

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 115
    move-result p1

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 125
    move-result p1

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string p1, " due to android:get_usage_stats app-op not allowed"

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 141
    return v6

    .line 142
    :cond_3
    return v1
.end method

.method public static dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6
    new-instance v1, Lcom/android/internal/util/jobs/DumpUtils$1;

    .line 8
    invoke-direct {v1, v0, p1, p3}, Lcom/android/internal/util/jobs/DumpUtils$1;-><init>(Ljava/io/StringWriter;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1, p4, p5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "... timed out"

    .line 27
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void
.end method

.method public static dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/jobs/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;Lcom/android/internal/util/jobs/DumpUtils$ValueDumper;)V

    return-void
.end method

.method public static dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;Lcom/android/internal/util/jobs/DumpUtils$ValueDumper;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string p1, "No "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    const-string/jumbo p1, "s"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x20

    .line 9
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 10
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    const-string p3, "(s):"

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_4

    .line 13
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 14
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz p4, :cond_1

    .line 15
    invoke-interface {p4, p3, v1}, Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;->dump(II)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 18
    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 20
    const-string v1, "->"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_2

    .line 21
    const-string v1, "(null)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_3

    .line 22
    invoke-interface {p5, v2}, Lcom/android/internal/util/jobs/DumpUtils$ValueDumper;->dump(Ljava/lang/Object;)V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 24
    :goto_2
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static dumpSparseArrayValues(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;

    .line 3
    invoke-direct {v4, p0, p1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/jobs/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;Lcom/android/internal/util/jobs/DumpUtils$ValueDumper;)V

    .line 14
    return-void
.end method

.method public static filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string v0, "all"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 28
    return-object p0

    .line 29
    :cond_1
    const-string v0, "all-platform"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 37
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 43
    return-object p0

    .line 44
    :cond_2
    const-string v0, "all-non-platform"

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 52
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    .line 54
    const/4 v0, 0x3

    .line 55
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 58
    return-object p0

    .line 59
    :cond_3
    const-string v0, "all-platform-critical"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 67
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    .line 69
    const/4 v0, 0x4

    .line 70
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 73
    return-object p0

    .line 74
    :cond_4
    const-string v0, "all-platform-non-critical"

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 82
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    .line 84
    const/4 v0, 0x5

    .line 85
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 88
    return-object p0

    .line 89
    :cond_5
    const-string/jumbo v0, "samsung-media"

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 98
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    .line 100
    const/4 v0, 0x6

    .line 101
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 104
    return-object p0

    .line 105
    :cond_6
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_7

    .line 111
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda9;

    .line 113
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda9;-><init>(Landroid/content/ComponentName;)V

    .line 116
    return-object p0

    .line 117
    :cond_7
    const/16 v0, 0x10

    .line 119
    const/4 v1, -0x1

    .line 120
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/jobs/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    .line 123
    move-result v0

    .line 124
    new-instance v1, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda10;

    .line 126
    invoke-direct {v1, v0, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda10;-><init>(ILjava/lang/String;)V

    .line 129
    return-object v1
.end method

.method private static isCriticalPackage(Landroid/content/ComponentName;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    move v1, v0

    .line 6
    :goto_0
    sget-object v2, Lcom/android/internal/util/jobs/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    .line 8
    array-length v3, v2

    .line 9
    if-ge v1, v3, :cond_2

    .line 11
    aget-object v2, v2, v1

    .line 13
    invoke-virtual {p0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return v0
.end method

.method public static isNonPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNonPlatformPackage(Landroid/content/ComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isNonPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNonPlatformPackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public static isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public static isPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPlatformPackage(Landroid/content/ComponentName;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPlatformPackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    const-string v0, "android"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android."

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android."

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSecMediaPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSecMediaPackage(Landroid/content/ComponentName;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isSecMediaPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSecMediaPackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    const-string/jumbo v0, "com.google.android.providers.media.module"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.providers.media"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.providers.trash"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sec.android.app.myfiles"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sec.android.gallery3d"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$dumpSparseArrayValues$3(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 0

    .line 1
    const-string p2, "%s%s"

    .line 3
    filled-new-array {p1, p1}, [Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 10
    return-void
.end method

.method private static synthetic lambda$filterRecord$0(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method private static synthetic lambda$filterRecord$1(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static synthetic lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z
    .locals 2

    .line 1
    invoke-interface {p2}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq p0, v1, :cond_0

    .line 8
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    move-result p2

    .line 12
    if-eq p2, p0, :cond_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 32
    :cond_1
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method

.method private static logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    return-void
.end method
