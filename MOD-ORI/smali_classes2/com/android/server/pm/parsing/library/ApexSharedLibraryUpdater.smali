.class public Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSharedLibraries:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x0

    .line 8
    move v0, p3

    .line 9
    :goto_0
    if-ge v0, p2, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, v1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v4, v1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, p3}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    const/16 v5, 0x2710

    .line 48
    .line 49
    if-ge v2, v5, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-ge v2, v5, :cond_2

    .line 57
    .line 58
    :goto_1
    invoke-static {v4}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-static {p1, v3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_2
    :goto_2
    iget-boolean v1, v1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->canBeSafelyIgnored:Z

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-interface {p1, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 83
    .line 84
    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    return-void
.end method
