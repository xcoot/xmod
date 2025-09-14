.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;


# instance fields
.field public final mBootClassPathContainsATB:Z

.field public final mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "PackageBackwardCompatibility"

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;

    .line 17
    .line 18
    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;

    .line 25
    .line 26
    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;

    .line 33
    .line 34
    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;

    .line 41
    .line 42
    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    const-string v2, "android.content.pm.AndroidTestBaseUpdater"

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    :try_start_0
    const-class v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    move v2, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v2, v4

    .line 67
    :goto_0
    :try_start_1
    const-string v5, "Loaded android.content.pm.AndroidTestBaseUpdater"

    .line 68
    .line 69
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move v2, v4

    .line 74
    :catch_1
    const-string v5, "Could not find android.content.pm.AndroidTestBaseUpdater, ignoring"

    .line 75
    .line 76
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :goto_1
    if-eqz v2, :cond_1

    .line 80
    .line 81
    new-instance v0, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_1
    new-instance v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :goto_2
    xor-int/lit8 v0, v2, 0x1

    .line 99
    .line 100
    new-instance v2, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;

    .line 101
    .line 102
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-object v3, v3, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-direct {v2, v3}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;-><init>(Landroid/util/ArrayMap;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-array v2, v4, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 121
    .line 122
    new-instance v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    .line 123
    .line 124
    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;-><init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V

    .line 125
    .line 126
    .line 127
    sput-object v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    .line 128
    .line 129
    return-void
.end method

.method public constructor <init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 7
    .line 8
    return-void
.end method

.method public static bootClassPathContainsATB()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    .line 4
    .line 5
    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    .line 2
    .line 3
    return-object v0
.end method

.method public static modifySharedLibraries(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getPackageUpdaters()[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 2
    .line 3
    return-object p0
.end method

.method public final updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method
