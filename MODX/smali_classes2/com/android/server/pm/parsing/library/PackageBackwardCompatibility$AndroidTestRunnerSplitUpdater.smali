.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 0

    .line 1
    const-string p0, "android.test.mock"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixImplicitDependency(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
